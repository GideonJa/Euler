# gid_15.rb

def factorial(num)
	(1..num).inject(:*)
end

p factorial(40)/(factorial(20)*factorial(20))
