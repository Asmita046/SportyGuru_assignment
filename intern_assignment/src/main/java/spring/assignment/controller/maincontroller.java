package spring.assignment.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.tomcat.util.log.UserDataHelper.Mode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import spring.assignment.dao.StudentDao;
import spring.assignment.entities.Student;



@Controller
public class maincontroller {
	
	@Autowired
	private StudentDao studentDao; 
	HttpSession session=null;
	
	@RequestMapping("/")
	public String index(Model model) {
		if(session==null) {
			model.addAttribute("student", new Student());
			return "register";
		}
		else {
			return "home";
		}
	}
	
	@RequestMapping("/register")
	public String register(Model model) {
		model.addAttribute("student", new Student());
		return "register";
	}
	
	@RequestMapping("/login")
	public String login(Model model) {
		
		return "login";
	}
	
	@RequestMapping(path = "/processform",method = RequestMethod.POST)
	public String processform(@Valid @ModelAttribute() Student student,BindingResult result) {
		if(result.hasErrors())
			return "register";
		else {
			studentDao.insert(student);
			return "redirect: login";
		}
	}	
	
	@RequestMapping(path = "/checkuser",method = RequestMethod.POST)
	public String checkuser(@Valid @ModelAttribute() Student student, BindingResult result,Model model,HttpServletRequest request) {
			List<Student> userlist=studentDao.login(student);
			if(userlist.size()==0) {
				return "redirect: login";
			}
			else {
				Student mydata = userlist.get(0);
				session = request.getSession();
				session.setAttribute("mydata", mydata);
				model.addAttribute("username", mydata.getUsername());
				model.addAttribute("id", mydata.getId());
				return "home";
			}
	}
	
	@RequestMapping(path="/profile/{id}")
	public String profile(@PathVariable() int id, Model model) {
		if(session==null) {
			return "redirect:login";
		}
		model.addAttribute("student", studentDao.getDetails(id));
		return "profile";
	}
	
	@RequestMapping(path="/update",method = RequestMethod.POST)
	public ModelAndView update(@Valid @ModelAttribute() Student student,BindingResult result,Model model,HttpServletRequest request) {
		ModelAndView user=new ModelAndView();
		if(result.hasErrors()) {
			user.setViewName("profile");
		}
		else {
			studentDao.editDetails(student);
			user.addObject("success", "success");
			user.setViewName("home");
		}
		return user;
	}
}
