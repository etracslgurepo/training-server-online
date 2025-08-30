package treasury.facts;

//we added this because it is used by both AbstractBillItem and DiscountItem
interface ICashReceiptBillItem {

	String getAcctid();
	def toMap();

}