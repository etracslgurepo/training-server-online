package treasury.facts;

public class DecimalInfo {

	String name;
	double decimalvalue;


	public DecimalInfo(def o ) {
		this.name = o.name;
		if(o.decimalvalue) this.decimalvalue = o.decimalvalue;
	}

	public DecimalInfo() {}

	public double getValue() {
		return this.decimalvalue;
	}
	
	public void setValue( double d ) {
		this.decimalvalue = d;
	}
	
}


