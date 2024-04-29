
proctype Fib_nonRec_2(int n) { 
	int a = 0;
	int b = 1;
	int c;
	int i = 1;
	int result

	do
	:: (n == 0) -> result = a; break
	:: (n == 1) -> result = b; break
	:: (i <= n) -> c = b; b = a+b; a = c; i++
	:: else -> n = 1
	od;
	
	printf("result: %d\n", result)
}

init { 
	run Fib_nonRec_2(10)
}
