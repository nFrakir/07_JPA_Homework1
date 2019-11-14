package com.gmail.silverleaf.annn;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        System.out.println("Start backend checking");
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPA_Study");
        EntityManager em = emf.createEntityManager();

        Query query = em.createQuery("SELECT c FROM Course c", Course.class);
        List<Course> courses = query.getResultList();

        System.out.println("------------------------------------------------------");
        for(Course element: courses) {
            System.out.println("------------------------------------------------------");
            System.out.println(element);
            System.out.println("***************");
            System.out.println(element.getStudent_count());
            System.out.println("------------------------------------------------------");
        }
    }
}
