# gid_67.rb
require './gid_18.rb'
index =0
tree = []
File.open("triangle.txt", "r").each_line do |line|
	tree[index] =  line.split("\r\n") .map {|line| line.split(" ").map(&:to_i) }.first
	index+=1
end
p max_path(tree)