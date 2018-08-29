defmodule ProdFib do

    def product_fib(n) do
      calculate_product_of_fib(1,1,n)
    end

    def calculate_product_of_fib(first, second, n) when (first * second) >= n do
      [first, second, first * second == n]
    end

    def calculate_product_of_fib(first, second, n) do
      calculate_product_of_fib(second, first + second, n)
    end

end
