package com.soft.main;

import com.soft.beans.HelloWorldEn;
import com.soft.beans.HelloWorldJp;

public class MainClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//HelloWorldEn hello = new HelloWorldEn();
		HelloWorldJp helloj = new HelloWorldJp();
		//callMethod(hello);
		callMethod(helloj);
		
	}
	public static void callMethod(HelloWorldJp hello) {
	//public static void callMethod(HelloWorldEn hello) {
		hello.sayHello();
	}

}
