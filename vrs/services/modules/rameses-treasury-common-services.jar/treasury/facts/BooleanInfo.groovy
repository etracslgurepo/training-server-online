package treasury.facts;

public class BooleanInfo {

	String name;
	private boolean booleanvalue;

	public BooleanInfo( def o ) {
		this.name = o.name;
		this.booleanvalue = o.booleanvalue;
	}

	public BooleanInfo() {
	}

	public boolean getValue() {
		return this.booleanvalue;
	}
	
	public void setValue( boolean d ) {
		this.booleanvalue = d;
	}
	
}


