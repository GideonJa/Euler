# gid_23.rb

def find_abundant_up_to(num)
  abundant = {}
  abt_divisors ={}
  (1..num).each do |test_num|
    sum_of_divisors, divisors = find_sum_of_divisors(test_num)
    if sum_of_divisors > test_num
      abundant[test_num] = true 
      # puts "#{test_num} is abundant, the sum is #{sum_of_divisors} divisors are: #{divisors.inspect}"
    else
      abundant[test_num] = false
    end
  end
  return abundant
end

def find_sum_of_divisors(test_num)
  sum=0
  divisors = []
  (1..Math.sqrt(test_num).floor).each do |i|
    if test_num % i == 0
      
      # j= test_num/i unless i == 1 || test_num/i == i
      # p [i,j]
      sum +=i
      divisors << i
      sum += test_num/i unless i == 1 || test_num/i == i
      divisors << test_num/i unless i == 1 || test_num/i == i
    end
  end
  return [sum, divisors]
end

def pos_nums(num)
  abundant = find_abundant_up_to(num)
  sum =0
  (1..num).each do |test|

    found = true
    (1..(test/2).ceil).each do |sub_test|
      if (abundant[sub_test] && abundant[test-sub_test]) 
        found = false
        break
      end
    end
    sum+=test if found
  end
  sum
end


p pos_nums(29000)