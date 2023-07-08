namespace Method_Practice
{
   internal class Program
   {
      static void Main(string[] args)
      {
         Console.Write("Enter a Number: ");
         double num0 = Convert.ToDouble(Console.ReadLine());

         Console.Write("Operator: ");
         string op = Console.ReadLine();

         Console.Write("Enter a Number: ");
         double num1 = Convert.ToDouble(Console.ReadLine());

         switch (op)
         {
            case "+": 
               Console.WriteLine("Your answer is: " + (num1 + num0));
               break;
            case "-":
               Console.WriteLine("Your answer is: " + (num0 - num1));
               break;
            case "*":
               Console.WriteLine("Your answer is: " + (num0 * num1));
               break;
            case "/":
               Console.WriteLine("Your answer is: " + (num0 / num1));
               break;
         }


         Console.ReadLine();
      }

   }
}