package vrs.facts;

public class VrsTxn {
	
	String txntypeid;
	String txnmode;
	String vehicletypeid;
	int activeyear;

	public VrsTxn( def m ) {
		this.txntypeid = m.txntypeid;
		this.txnmode = m.txnmode;
		this.vehicletypeid = m.vehicletypeid;
		if(m.activeyear) this.activeyear = m.activeyear;
	}

	
}