# gid_07.rb
def cop_out(num)
	require 'prime'
	sum = 0
	Prime.each_with_index do |p,i| 
		sum += p if p < num
		# puts p if p < num
		return sum if p >= num 
	end
end

def find_nth_prime(nth)
	return 2 if nth <= 1
	return 3 if nth == 2

	counter = 4
	num_found = 2
	while num_found < nth 
		if(counter % 2 != 0 && counter%3 != 0) 
			temp = 4
			while temp*temp <= counter
				break if counter % temp == 0
				temp +=1
			end

			
			if temp*temp > counter
				result = counter 
				num_found +=1
			end
		end
		counter +=1
	end
	
	return result
end

p cop_out(2000000)
# p find_nth_prime(10000)