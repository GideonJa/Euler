# gid_04.rb
def latgest_palidrom
	max=[0,0,0]
	999.downto(100) do |i|
		999.downto(100) do |j|
			if palidrom?(i*j)
				# p [i,j,i*j]
				max= [i,j,i*j] if i*j > max[2]
			end
		end
	end
	return max 
end
def palidrom?(num)
	num.to_s == num.to_s.reverse
end
p latgest_palidrom()