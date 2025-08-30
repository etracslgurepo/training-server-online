package obo.facts;

import java.util.*;

public class BuildingInfo {
	String worktype;

	String apptype;
	double projectcost;			//computed. 
	double fixedcost;  			//fixed cost
	double highercost;			//whichever is higher = computed or fixed

	double floorarea; 			//deprecated
	double totalfloorarea; 		
	double height;
	int numunits = 1;
	int numfloors;

	String barangayid;
	String barangayname;
	

	public BuildingInfo() {}

	public BuildingInfo(def app) {
		if( app.apptype !=null) this.apptype = app.apptype; 

		if( app.actualprojectcost == null ) {
	        if( app.projectcost !=null ) this.projectcost = app.projectcost;
	        if( app.fixedcost !=null ) this.fixedcost = app.fixedcost;
	        if( app.height !=null ) this.height = app.height;
	        if( app.numunits !=null ) this.numunits = app.numunits;
	        if( app.totalfloorarea !=null ) this.totalfloorarea = app.totalfloorarea;
	        if( app.numfloors !=null ) this.numfloors = app.numfloors;
		}
		else {
	        if( app.actualprojectcost !=null ) this.projectcost = app.actualprojectcost;
	        if( app.actualfixedcost !=null ) this.fixedcost = app.actualfixedcost;
	        if( app.actualheight !=null ) this.height = app.actualheight;
	        if( app.actualnumunits !=null ) this.numunits = app.actualnumunits;
	        if( app.actualtotalfloorarea !=null ) this.totalfloorarea = app.actualtotalfloorarea;
	        if( app.actualnumfloors !=null ) this.numfloors = app.actualnumfloors;
		}

        if( this.fixedcost > this.projectcost ) {
        	this.highercost = this.fixedcost;
        }
        else {
        	this.highercost = this.projectcost;
        }			

        if(app.location?.barangay?.objid) {
        	this.barangayid = app.location.barangay.objid;
        	this.barangayname =  app.location.barangay.name;
        }

	}

}


