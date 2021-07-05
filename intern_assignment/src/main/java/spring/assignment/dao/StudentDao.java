package spring.assignment.dao;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import spring.assignment.entities.Student;


@Component
public class StudentDao implements IStudentDao{
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public void insert(Student student) {
		// TODO Auto-generated method stub
		String query = "insert into tbl_student(name,email,gender,username,password) values(?,?,?,?,?)";
		this.jdbcTemplate.update(query,student.getName(),student.getEmail(),student.getGender(),student.getUsername(),student.getPassword());
	}

	public Student getDetails(int id) {
		// TODO Auto-generated method stub
		String query = "select * from tbl_student where id = ?";
		return this.jdbcTemplate.queryForObject(query, new RowMapperImpl(), id);
	}

	public void editDetails(Student student) {
		// TODO Auto-generated method stub
		String query = "update tbl_student set name=?, email=?,  gender=?,username=?, password=? where id = ?";
		this.jdbcTemplate.update(query, student.getName(),student.getEmail(),student.getGender(),student.getUsername(),student.getPassword(),student.getId());
	}

	public List<Student> login(Student student) {
		// TODO Auto-generated method stub
		String login_query="select id,username from tbl_student where username=? and password=?";
		List<Student> user_list=jdbcTemplate.query(login_query,new login_rowmapper(),student.getUsername(),student.getPassword());
		return user_list;
	}
	
}
