package interview_programs;

public class ReverseString {

	public static void reverse(String s) {
		char[] ch = s.toCharArray();
		int first= 0;
		int last= ch.length-1;

		while(first < last){
			char temp = ch[first];
			ch[first] = ch[last];
			ch[last] = temp;
			first++;
			last--;
		}

		for(char c:ch) {
			System.out.print(c);
		}
		
	}
	
	public static void main(String[] args) {

		String s = "Hello World!";
		reverse(s);
	}

}
