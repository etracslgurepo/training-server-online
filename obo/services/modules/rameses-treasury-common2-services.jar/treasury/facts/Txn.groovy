package treasury.facts;

public class Txn {
	
	String txntypeid;
	String txnmode;

	public Txn( def m ) {
		this.txntypeid = m.txntypeid;
		this.txnmode = m.txnmode;
	}

	
}