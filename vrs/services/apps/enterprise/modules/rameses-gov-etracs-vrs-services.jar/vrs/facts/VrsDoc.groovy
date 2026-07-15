package vrs.facts;

class VrsDoc {

	String doctypeid;
	Date dtissued;
	String issueno;
	String controlnopattern;
	Date expirydate;
	Date prevexpirydate;


	def df = new java.text.SimpleDateFormat("yyyy-MM-dd");
	def convertDate( def t ) {
		if(t instanceof String ) {
			t = df.parse( t );
		}
		return t;
	}

	public VrsDoc( def m ) {
		this.doctypeid = m.doctypeid;
		if(m.dtissued) this.dtissued = convertDate( m.dtissued );
		if(m.issueno) this.issueno = m.issueno;
		if(m.expirydate) this.expirydate = convertDate( m.expirydate );
		if(m.prevexpirydate) this.prevexpirydate = convertDate( m.prevexpirydate );
	}

	public int hashCode() {
		return doctypeid.hashCode();
	}

	
}