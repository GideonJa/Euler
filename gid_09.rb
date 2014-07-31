# gid_09.rb
found = false
(1..998).each do |a|
	break if found
	(a..999).each do |b|
		break if  a + b  > 998 || found
		(b..998).each do |c|
			break if a + b + c > 1000 || found
			if a**2 + b**2 == c**2 && a + b + c ==  1000
				puts "a: #{a} b: #{b} c #{c} = #{a**2 + b**2}  =  #{c**2} a+b+c = #{a+b+c}"
				puts  a*b*c
				found = true
				break
			end
		end
	end
end
