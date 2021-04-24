#include <iostream>

using namespace std;

int main()
{
    
    int fib_num1 = 0, fib_num2= 1, fib_num3 = 0;
    int fib_num_sum= 0;
    
    while(fib_num2 <= 4000000)
    {
        
        fib_num_sum += (fib_num2 % 2 == 0) ?
            fib_num2 : 0;
        
        fib_num3 = fib_num1;
        fib_num1 = fib_num2;
        fib_num2 = fib_num3 + fib_num1;
    }
    
   	cout << fib_num_sum << "\n";
}