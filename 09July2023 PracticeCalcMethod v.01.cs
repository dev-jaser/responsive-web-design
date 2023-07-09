namespace Method_Practice
{
   internal class Program
   {
      static void Main(string[] args)
      {
         Console.Write("Enter a Number: ");
         int n0 = Convert.ToInt32(Console.ReadLine());
         Console.Write("Enter a Number: ");
         int n1 = Convert.ToInt32(Console.ReadLine());
         int answer = Calc(n0, n1);
         Console.WriteLine("Your answer is: " + answer);
         Console.ReadLine();
      }
      static int Calc(int num1, int num2)
      {
         int num = num1 + num2;
         return num;
      }
   }
}
