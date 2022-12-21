public class LabeledBreak {
    public static void main(String[] args) {
      int max = 20;
      int sum = 0;
      outerloop: 
      for (int i= 0; i< 10; i++)
         for (int j=0; j< 5; j++) {
            sum += i + j;
            System.out.println("sum="+sum);
            if (sum > max)
               break outerloop;
         }
      System.out.println("Done...");
    }
}
