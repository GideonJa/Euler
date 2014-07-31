# gid_16.rb
num = 2**1000
p num.to_s.split("").map(&:to_i).inject(:+)