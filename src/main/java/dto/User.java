package dto;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

import lombok.Data;
@Entity
@Data
public class User {
@Id
//@GeneratedValue(strategy=GenerationType.IDENTITY)
@GeneratedValue(generator="x")
@SequenceGenerator(name="x",sequenceName="x",initialValue=1214561,allocationSize=1)
int id;
String firstname;
String lastname;
long mobileno;
String email;
String gender;
String password;
String confirmpassword;
Date dob;
int age;
double wallet;


}
