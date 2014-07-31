# gid_02.rb
def fib_less_then(fib_max)
	sum = 2
	fib1 =1
	fib2 =2
	while fib2 < fib_max
		fib = fib1 + fib2
		sum += fib if fib%2==0
		fib1 = fib2
		fib2 = fib
	end
	return sum
end


a = fib_less_then(4000000)
puts a.to_s.split('').reverse.each_slice(3).map(&:join).join(',').reverse
puts a
