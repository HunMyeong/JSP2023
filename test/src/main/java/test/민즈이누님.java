package test;

import java.util.Random;

public class 민즈이누님 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Random ran = new Random();
		int count = 0;
		int space = 0;
		int sum = 0;
		
		
		
		while(count < 50) {
			int a = ran.nextInt(100);
			System.out.print("[" + a + "]");
			sum += a;
			count++;
			space++;
			if(space >= 6) {
				System.out.println();
				space = 0;
			}
		}
		System.out.println();
		System.out.println("합=" + sum);
	}
}
