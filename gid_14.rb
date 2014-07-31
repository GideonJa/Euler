# gid_14.rb
def p_collatz(num)
	while num >1
		print  "#{num}->"
		if num%2==0
			num= num/2
		else
			num = (num*3)+1
		end
	end
	print "1"
	puts
end

def collaz_size(num)
	size=0
	while num > 1
		if num%2==0
			num/=2
		else
			num=(num*3)+1
		end
		size+=1
	end
	return size+1
end

def max_collatz(mx)
	max_s=max_num=0
	while mx >1
		c_size = collaz_size(mx)
		if c_size > max_s
			max_s = c_size
			max_num = mx 
		end
		mx-=1
	end
	return [max_num, max_s]
end
num=1000000
# p_collatz(num)
p max_collatz(num)

