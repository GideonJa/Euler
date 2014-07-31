# gid_03.rb
def largest_prime(num)
	result=0
	Math.sqrt(num).ceil.downto(2) do |check_num|
		return check_num if num%check_num==0 && prime?(check_num)
	end
	return nil
end

def prime?(possible_prime)
	return possible_prime if possible_prime == 2
	(2..Math.sqrt(possible_prime).ceil).each do |i|
		return false if possible_prime%i==0
	end
	return true
end

def largest_prime2(num)
	max=0
	(2..Math.sqrt(num)).each do |i|
		if num%i==0
			count=0
			while num%i==0
				count+=1
				num = num/i
			end
			max = i
		end
	end
	max = num if num !=1
	return max
end


def all_prime(num)
	max=0
	(2..Math.sqrt(num)).each do |i|
		if num%i==0
			count=0
			while num%i==0
				count+=1
				num = num/i
			end
			p [i, count]
		end
	end
	p [num,1] if num !=1
end

def prime_upto(num)
	(2..num).each do |i|
		p i if prime?(i)
	end
end

def prime_ruby_test(num)
	require 'prime'
	p num.prime_division
	Prime.each {|p| puts p; break if p > 100 }
end
# p largest_prime(600851475143)
# p largest_prime2(600851475143)
# all_prime(2520)
prime_ruby_test(600851475143)
