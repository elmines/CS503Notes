#include <stdio.h>

int i = 0;

//quicksort is only partially tail-recursive
//This can be called "tree-recursion"
void quicksort(int* array, int lo, int hi) {
	if (hi - low >= 2) {
		int p = partition(array, lo, hi);
		quicksort(array, lo, p);
		quicksort(array, p, hi);
	}
}

//The tail-recursive call is optimized away
void quicksort2(int* array, int lo, int hi) {

	TOP:
	if (hi - lo >= 2) {
		int p = partition(array, lo, hi);
		quicksort(array, lo, p);

		lo = p;
		goto TOP;
	}
}

int fib(int n) {

	if (n < 2) return n;

	int prevPrev = 0;
	int prev = 1;
	for (int i = prev; i <= n; ++i) {
		result = prevPrev + prev;
		prevPrev = prev;
		prev = result;
	}
}

int main(void) {
	printf("%d\n", i);
	++i;
	main();
	return 0;
}
