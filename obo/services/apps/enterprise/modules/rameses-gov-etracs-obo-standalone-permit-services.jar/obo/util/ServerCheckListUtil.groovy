package obo.util;

class ServerCheckListUtil {
	
    public def format( def txt, def vals ) {
        return format(txt, vals);
    }

    public def format( def txt, def vals, def particulars ) {
        def arr = [];
        if(txt == "{S}") txt = "{s}";
        if( txt == "{s}" && !vals ) {
            //if text value is required but there are no values do nothing
        }
        else {
            if(vals==null) vals = [];
            def s = txt =~ /\{\w\}/ ;
            def sb = new StringBuffer();
            int i = 0;
            while (s.find()) {
               if(vals.size()-1 <= i) vals << "";
               def val = vals[i++];
               if( !val ) val = "?";
               s.appendReplacement(sb,"<u>"+val+"</u>"); 
            } 
            s.appendTail(sb);
            def str = sb.toString(); 
            if( str && str.trim() != "." ) {
                arr << str;    
            }   
        }
        
        if( particulars ) {
            arr << particulars;
        }
        return arr.join(". ");
    }

    public def formatList( def items ) {
        items.each {
            it.particulars = format( it.checklistitem.title, it.values, it.particulars );
        } 
        return items;  
    }
}