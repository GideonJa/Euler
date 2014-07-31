# gid_10.rb

def sieve(num)
	array = Array.new(num) {|i| i = true }
	prime = 2
	sum = 2
	while (prime <= num)
		array[prime] = false

		turn_off_primes(array, prime) if Math.sqrt(num).ceil

		prime = find_next_prime(array, prime)

		break if prime >= num
		# p prime
		sum += prime
	end
	return sum
end
def turn_off_primes(array, prime)
	primeS = prime*prime
	while  (primeS < (array.length))
		array[primeS] = false
		primeS += prime
	end
end
def find_next_prime(array, prime)
	while  (prime < (array.length) && !array[prime])
		prime +=1
	end
	return prime
end
num=2000000

p sieve(num)