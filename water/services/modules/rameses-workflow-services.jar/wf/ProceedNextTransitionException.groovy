package wf;

class ProceedNextTransitionException extends RuntimeException {


    public ProceedNextTransitionException() {
    	super();
    }

    public ProceedNextTransitionException(String msg) {
    	super(msg);
    }


}