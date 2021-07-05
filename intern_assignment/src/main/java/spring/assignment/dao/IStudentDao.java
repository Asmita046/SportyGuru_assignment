package spring.assignment.dao;

import java.util.List;

import spring.assignment.entities.Student;


public interface IStudentDao {
	public void insert(Student student);
	public Student getDetails(int id);
	public void editDetails(Student student);
	public List<Student> login(Student student);
}
