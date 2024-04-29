proctype Fact_nonRec(int n) { 
	int a = 1;
	int i, result;

	if 
	:: (n == 0) -> skip;
	:: else -> i = 1;
    		   do
		   :: (i <= n) -> a = i*a; i++
		   :: else -> break
		   od
	fi
	result = a;
	
	printf("result: %d\n", result)
}

init { 
	run Fact_nonRec(10)
}

