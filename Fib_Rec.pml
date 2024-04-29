proctype Fib_Rec(int n; chan p) {

	int result1, result2;
  	chan child1 = [1] of { int };
  	chan child2 = [1] of { int };
  
	if
    	:: (n == 0) -> p!0  
    	:: (n == 1) -> p!1
	:: (n >= 2) -> run Fib_Rec(n-1, child1); 
		       run Fib_Rec(n-2, child2);
		       child1?result1;
		       child2?result2;
	               p!(result1 + result2)
     	fi
}

init {
	int result;
  	chan child = [1] of { int };
  	
	run Fib_Rec(11, child);
  	child?result;
  	
	printf("result: %d\n", result)
}




