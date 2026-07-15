package vrs.facts;


class VrsAccount {

	String acctno;
	int lastyearrenewed;
	String vehicletypeid;
	String franchiseno;

	int year;
	String apptype;

	public VrsAccount( def m ) {
		this.acctno = m.acctno;
	
		if(m.activeyear) this.year = m.activeyear;
		if(m.apptype) this.apptype = m.apptype;

		if(m.lastyearrenewed) this.lastyearrenewed = m.lastyearrenewed;
		this.vehicletypeid = m.vehicletypeid;
		this.franchiseno = m.franchiseno;
	}

	public VrsAccount() {

	}

}