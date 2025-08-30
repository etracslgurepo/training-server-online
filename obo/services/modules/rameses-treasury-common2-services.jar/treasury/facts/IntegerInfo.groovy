package treasury.facts;

public class IntegerInfo {

	String name;
	int intvalue;

	public IntegerInfo( def o ) {
		this.name = o.name;
		if(o.intvalue) this.intvalue = o.intvalue;
	}

	public IntegerInfo() {}


	public int getValue() {
		return this.intvalue;
	}
	
	public void setValue( int d ) {
		this.intvalue = d;
	}
	
}


