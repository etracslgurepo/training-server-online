package wf;

class NoTransitionFoundException extends RuntimeException {


    public NoTransitionFoundException() {
    	super();
    }

    public NoTransitionFoundException(String msg) {
    	super(msg);
    }


}