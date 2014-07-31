# gid_12.rb

def find_triangle(num)
 return 1.upto(num).inject {|memo, n| memo+n}
end

def divs_of(n)
 result = 0
 sqr = Math.sqrt(n).floor
 1.upto(sqr).each do |i|
	 i == sqr ? result +=1  : result +=2  if n%i ==0
 end
 return result
end



def find_max_div(m)
	i = 1
	max_divs = 0
	until max_divs >= m
		t = find_triangle(i)
		divs = divs_of(t)
		if divs > m
			max_divs = divs
			max_t = t
			max_i = i
		end
		i+=1
	end
	puts "divs #{max_divs} t #{max_t} i #{max_i}"
end


find_max_div(500)


