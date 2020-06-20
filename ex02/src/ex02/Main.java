package ex02;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Banana:1, Peach:2");
		int input = scanner.nextInt();
		if (input == 1) {
			Fruit fruit = new Banana();
			fruit.show();			
		} else if(input == 2){

			Fruit fruit = new Peach();
			fruit.show();	
		}
	}

}
