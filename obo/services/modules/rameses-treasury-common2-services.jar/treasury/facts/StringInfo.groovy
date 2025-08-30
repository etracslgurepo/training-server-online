package treasury.facts;

public class StringInfo {

	String name;
	String stringvalue;

	public StringInfo(def o) {
		this.name = o.name;
		this.stringvalue = o.stringvalue;
	}

	public StringInfo() {

	}

	public String getValue() {
		return this.stringvalue;
	}
	
	public void setValue( String d ) {
		this.stringvalue = d;
	}
	
}


