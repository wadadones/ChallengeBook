
@memo = Array.new(1000)

def fib(n)
	puts "fib(#{n})"
	return n if n <= 1
	return @memo[n] if @memo[n]
	return @memo[n] = fib(n-1) + fib(n-2)
end

