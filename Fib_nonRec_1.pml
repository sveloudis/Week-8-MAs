
proctype Fib_nonRec_1(int n) { 
	int a = 0;
	int b = 1;
	int c;
	int i = 1;
	int result

	if 
	:: (n == 0) -> result = a;
	:: (n == 1) -> result = b;
	:: else -> i = 1;
    		   do
		   :: (i < n) -> c = b; b = a+b; a = c; i++
		   :: else -> break
		   od;
		   result = b;
	fi
	
	printf("result: %d\n", result)
}

init { 
	run Fib_nonRec_1(10)
}
