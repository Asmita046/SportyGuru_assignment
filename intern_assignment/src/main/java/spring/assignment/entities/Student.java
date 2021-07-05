package spring.assignment.entities;

import java.util.Date;

import javax.validation.constraints.Email;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Student {
	
	private int id;
	@NotEmpty
	private String name;
	@NotEmpty
	@Email(message = "Invalid Email")
	private String email;
	@NotEmpty
	private String gender;
	@NotEmpty
	private String username;
	
	@Size(min=6,max = 6,message = "please enter password of 6 character")
	@NotEmpty
	private String password;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Student(int id, String name, String email, String gender, String username, String password) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.gender = gender;
		this.username = username;
		this.password = password;
	}

	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", email=" + email + ", gender=" + gender + ", username="
				+ username + ", password=" + password + "]";
	}
	
}

