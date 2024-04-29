proctype Fact_rec(int n; chan c) { 
	chan childF = [1] of { int };
	int result

	if 
	:: (n == 0) -> c!1;
	:: else -> run Fact_rec(n-1, childF);
		   childF?result;
		   c!n*result
	fi
}

init {
	int result;
  	chan child = [1] of { int };
  	
	run Fact_rec(14, child);
  	child?result;
  	
	printf("result: %d\n", result)
}





