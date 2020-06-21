package com.soft.main;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.soft.beans.HelloWorld;

public class MainClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//beans.xml file roading
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("com/soft/config/beans.xml");

		
		HelloWorld helloen = (HelloWorld)ctx.getBean("hello");
		callMethod(helloen);
		HelloWorld helloen2 = ctx.getBean("hello",HelloWorld.class);
		callMethod(helloen2);
		ctx.close();
	}

	public static void callMethod(HelloWorld hello) {
		hello.sayHello();
	}
}
