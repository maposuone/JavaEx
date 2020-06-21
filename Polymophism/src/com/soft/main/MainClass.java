package com.soft.main;

import com.soft.beans.HelloWorld;
import com.soft.beans.HelloWorldEn;
import com.soft.beans.HelloWorldJp;

public class MainClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		HelloWorld helloen = new HelloWorldEn();
		callMethod(helloen);
		HelloWorld hellojp = new HelloWorldJp();
		callMethod(hellojp);
	}
	
	public static void callMethod(HelloWorld hello) {
		hello.sayHello();
	}
}
