# gid_25.rb

def fib1000(digits)
  fib1 = 1
  fib2 = 1
  counter = 2
  current_fib = 0

  while current_fib.to_s.size < digits
    current_fib = fib1 + fib2
    counter+=1
    fib1 = fib2
    fib2 = current_fib
  end

  puts counter if current_fib.to_s.size >= digits
end


digits = 1000
fib1000(digits)