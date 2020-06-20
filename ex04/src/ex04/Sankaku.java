package ex04;

class Sankaku implements Xydata {
	protected double x, y;
	
	public Sankaku() {
		x = y = 0.0;
	}
	public void set_data(double n1, double n2) {
		x = n1;
		y = n2;
	}
	public void menseki() {
		System.out.print("x=" + x + " y=" + y);
		System.out.println(" –ÊÏ=" + x*y/2.0);
	}

}
