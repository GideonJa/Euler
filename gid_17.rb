# p "three hundred and forty-two".gsub(/[\s-]/,'')

def to_human(num)
	word={}
	word[0]  = "zero"
	word[1]  = "one"
	word[2]  = "two"
	word[3]  = "three"
	word[4]  = "four"
	word[5]  = "five"
	word[6]  = "six"
	word[7]  = "seven"
	word[8]  = "eight"
	word[9]  = "nine"
	word[10]  = "ten"
	word[11]  = "eleven"
	word[12]  = "twelve"
	word[13]  = "thirteen"					
	word[14]  = "fourteen"
	word[15]  = "fifteen"
	word[16]  = "sixteen"
	word[17]  = "seventeen"
	word[18]  = "eighteen"
	word[19]  = "nineteen"
	word[20]  = "twenty"
	word[30]  = "thirty"
	word[40]  = "forty"
	word[50]  = "fifty"
	word[60]  = "sixty"
	word[70]  = "seventy"
	word[80]  = "eighty"
	word[90]  = "ninety"

	case num
		when 0..20 
			 word[num]
		when 21..99
			aux =  num%10==0 ? "" : "-" + word[num.to_s[-1].to_i]
			word[num.to_s[-2].to_i*10] + aux
		when 100..999
			if remove_hunderds(num) == 0
				hundreds(word, num) 
			else
				hundreds(word, num)  + " and " + to_human(remove_hunderds(num))
			end
		else
			"one thousand"
	end
end

def remove_hunderds(num)
	return num.to_s[-2..-1].to_i 
end

def hundreds(word, num)
	h = num.to_s[-3].to_i 
	word[h] + " hundred"
end

num = 1000
s= ""
(1..num).each do |i| 
	s << to_human(i).gsub(/[\s-]/,'')
end
p s.size