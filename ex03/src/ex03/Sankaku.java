package ex03;

public class Sankaku extends Xydata{
	public Sankaku() {
		x = y = 0.0;
	}
	public void menseki() {
		System.out.print("x=" + x + "y" + y);
		System.out.println("–ÊÏ=" + x*y/2.0);
	}
}
