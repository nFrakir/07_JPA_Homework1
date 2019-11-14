package com.gmail.silverleaf.annn;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Entity
@Table(name="students")
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String sirname;

    //@ManyToMany
    //@JoinTable(
    //        name = "courses_students",
    //        joinColumns = {@JoinColumn(name = "student_id", referencedColumnName = "id")},
    //        inverseJoinColumns = {@JoinColumn(name = "course_id", referencedColumnName = "id")})
    //List<Course> courses = new ArrayList<>();

    public Student(String sirname) {
        super();
        this.sirname = sirname;
    }

    public Student() {
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSirname() {
        return sirname;
    }

    public void setSirname(String sirname) {
        this.sirname = sirname;
    }

    //public void addCourse(Course course) {
    //    if (!courses.contains(course)) {
    //        courses.add(course);
    //    }
    //    if (!course.students.contains(this)) {
    //        course.students.add(this);
    //    }
    //}

    //public List<Course> getCourses() {
    //    return Collections.unmodifiableList(courses);
    //}

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", sirname='" + sirname + '\'' +
                '}';
    }
}
