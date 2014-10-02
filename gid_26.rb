# gid_26.rb

def longest_cycle(num)

  test = num.to_s.gsub(/(\d)/, '\1 ' )
  puts num.inspect if num < 8
  test =  test[test.index('.')+1..-1]
  # puts test.inspect
  cycle = test.match(/(.+ .+)(\1 )+/)
  return cycle ? cycle[1] : nil
  
end




max_c = 0
(1..1000).each do |i|
  num = printf( "%0.0100f",(1.0/i))
  c = longest_cycle(num)
  cs = c ? c.split(" ").uniq.size : 0
  
  puts [i, num, c, cs, max_c].inspect if cs > max_c
  max_c =  cs if cs > max_c
end