package treasury.facts;

class TxnDoc {

	String doctypeid;

	public AppDoc( def m ) {
		this.doctypeid = m.doctypeid;
	}

	public int hashCode() {
		return doctypeid.hashCode();
	}

}