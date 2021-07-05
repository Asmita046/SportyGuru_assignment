package spring.assignment.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import spring.assignment.entities.Student;

public class login_rowmapper implements RowMapper<Student> {

	public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		if(rs == null) {
			return null;
		}
		else{
			return new Student(rs.getInt(1), rs.getString(2), null, null, null, null);
		}
	}

}
