package water.facts;

import com.rameses.util.*;
import treasury.facts.*;

public class WaterBill extends Bill {

	int year;
	int month;
	double volume;
	double rate;
	int prevreading;
	int reading;
	int units = 1;

	boolean volumeChanged = false;

	public WaterBill(def o ) {
		super(o);
		if(o.year != null) this.year = o.year;
		if(o.month != null) this.month = o.month;
		if(o.volume != null) this.volume = o.volume;
		if(o.rate != null) this.rate = o.rate;		
		if(o.reading != null) this.reading = o.reading;
		if(o.prevreading != null) this.prevreading = o.prevreading;
		if(o.units != null) this.units = o.units;
	}

	public def toMap() {
		def map = super.toMap();
		map.rate = this.rate;
		map.volume = this.volume;
		map.year = this.year;
		map.month = this.month;
		return map;
	}

	public int getYearmonth() {
		return ((year*12)+month);
	}

	public double getUnitvolume() {
		return NumberUtil.round( volume / units );
	}

}
