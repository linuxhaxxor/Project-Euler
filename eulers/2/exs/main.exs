defmodule Fibonacci do
	# Standard fibonacci def and I was going to use take_while on it. While it
	# demonstrates pattern matching and worked, it was a lot slower.
	def fib(0), do: 0
	def fib(1), do: 1
	def fib(x), do: fib(x-1) + fib(x-2)

	# While researching, I found this gem for infinite streams of fibs
	# I'm going to use this implementation instead
	# https://github.com/seven1m/30-days-of-elixir/blob/master/24-stream.exs#L33-L35
	def fib2 do
		Stream.unfold({0, 1}, fn {x, y} -> {x, {y, x+y}} end)
	end

	def sum_even_fibs_to(x) do
		fib2
		|> Stream.take_while(fn y -> y < x end)
		|> Stream.filter(fn y -> rem(y, 2) === 0 end)
		|> Enum.sum
	end
end

4000000 |> Fibonacci.sum_even_fibs_to |> IO.puts

