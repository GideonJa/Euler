# gid_21.rb
def find_divs(num, p=nil)
	sum = 1  
	(2..Math.sqrt(num).floor).each do |i| 
		if num%i==0 
			sum+= i 
			sum+= num/i unless i==1  || num/i==i
		end
	end
	return sum
end

divs ={}
sum=0
(1..9999).each {|i| divs[i] = find_divs(i)}
(1..9999).each {|i|sum += i if  divs[i] != i && i ==divs[divs[i]] }
puts sum
