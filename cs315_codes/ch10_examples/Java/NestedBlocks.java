public class NestedBlocks {
	public static void main(String[] args) {
		int i=1;
		System.out.println("In main i="+i);
		{ // outer block
			int i=2;
			System.out.println("In outer block i="+i);
			{ // inner block
				int i=3;
				System.out.println("In outer block i="+i);
			}
			System.out.println("In outer block i="+i);
		}
		System.out.println("In main i="+i);
	}
}
