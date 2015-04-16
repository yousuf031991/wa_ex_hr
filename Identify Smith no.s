package identifysmithNumbers;

import java.util.Scanner;

public class Solution {
	public static int sumOfdigits(int N) {
		int sod = 0;
		while (N != 0) {
			sod += N % 10;
			N /= 10;
		}
		return sod;
	}

	public static int sumOfPrimeFactors(int N) {
		int sopf = 0;
		for (int i = 2; i <= N; i++) {
			while (N % i == 0) {
				sopf += sumOfdigits(i);
				N /= i;
			}
		}
		return sopf;
	}

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int N = sc.nextInt();
		int sod = sumOfdigits(N);
		int sopf = sumOfPrimeFactors(N);
		if (sod == sopf) {
			System.out.println(1);
		} else {
			System.out.println(0);
		}
		sc.close();
	}
}
