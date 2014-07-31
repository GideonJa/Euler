# gid_05.rb
found = false
nums = [2, 3, 4, 5, 7, 9, 11, 13, 16, 17, 19].reverse
i = 20
until found 
	found = true
	nums.each do |pr|
		if i%pr!=0
			i +=20 
			found = false 
			break
		end
	end
end
p i