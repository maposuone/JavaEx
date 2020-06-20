package ex03;

abstract class Xydata {
	protected double x,y;
	
	public void set_data(double n1, double n2) {
		x = n1; y = n2;
	}
	abstract public void menseki();
}
