# gid_01.rb
puts (1..999).inject(0) {|memo, n| n % 5 ==0 || n % 3 ==0 ? memo + n : memo  }
puts (1..9).inject(0) {|memo, n| n % 5 ==0 || n % 3 ==0 ? memo + n : memo  }
