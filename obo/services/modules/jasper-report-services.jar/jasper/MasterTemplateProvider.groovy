package jasper;
import com.rameses.io.*;

public class MasterTemplateProvider {

	public def getUrl() {
		return getClass().getResource("blank.jrxml");	
	}

	public def getBytes() {
		def io = new IOStream();
		return io.toByteArray( getClass().getResourceAsStream("blank.jrxml") );
	}

	public def getCompiledBytes() {
		def io = new IOStream();
		return io.toByteArray( getClass().getResourceAsStream("blank.jasper") );
	}

	public def getUrl(String fname) {
		if( fname.lastIndexOf(".") <= 0 ) {
			fname = fname + ".jrxml";		
		}
		else {
			fname = fname.replace(".jasper", ".jrxml");	
		}
		return getClass().getResource(fname);	
	}

	public def getBytes(String fname) {
		def io = new IOStream();
		if( fname.lastIndexOf(".") <= 0 ) {
			fname = fname + ".jrxml";		
		}
		else {
			fname = fname.replace(".jasper", ".jrxml");
		}
		return io.toByteArray( getClass().getResourceAsStream(fname) );
	}

	public def getCompiledBytes(String fname) {
		def io = new IOStream();
		if( fname.lastIndexOf(".") <= 0 ) {
			fname = fname + ".jasper";		
		}
		else {
			fname = fname.replace(".jrxml", ".jasper");
		}
		return io.toByteArray( getClass().getResourceAsStream(fname) );
	}

} 
