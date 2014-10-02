# gid_24.rb

def perm2(arr,k,n,count)
  arr.sort!
  notDone = true
  while notDone
    if arr == @arr[count] && count == 1000000-1
      # puts count.inspect
      puts arr.inspect
      puts @arr[count].inspect 
      puts arr.join()
      
    end
    count+=1

    i = findFirstChar(arr)
     # break if there is no such charachter
    if i
      r = findRightCeil(arr,i)
      arr[i], arr[r] = arr[r], arr[i]
      arr = arr.take(i+1)+arr[i+1..-1].reverse
      # swap
      # reverse
    else
      notDone = false
    end
  end
  arr
end

def findFirstChar(arr)
  (arr.size-2).downto(0) do |i|
    return i if arr[i] < arr[i+1]
  end
  return false
end

def findRightCeil(arr,i)
  # find the ceiling
  # find the first charachter smaller then its right
  r=i+1
  (i+1..arr.size-1).each do |j|
    r = j if arr[j] < arr[i+1] && arr[j] > arr[i]
  end
  return r
end

def perm(arr,k,n,count)
  pr = false
  # return [arr,count] if count > 10
  # puts "step 0 k:#{k} n:#{n} arr: #{arr.inspect} count:#{count}"
  if k==n
    count+=1
    # if count < 7 && count > 1
      puts arr.inspect 
      puts @arr[count-1].inspect 
      puts 
    # end
    # return [arr, count]
  else
    (k..n).each do |i|
      puts "step 1  k:#{k} i:#{i} n:#{n} arr: #{arr.inspect} "  if pr 
      arr[i], arr[k] = arr[k], arr[i]

      puts "step 2  k:#{k} i:#{i} n:#{n} arr: #{arr.inspect} replaced #{arr[i]} with #{arr[k]} calling with k:#{k+1}, n:#{n},count:#{count}" if pr 
      count = perm(arr,k+1,n,count)

      puts "step 3  k:#{k} i:#{i} n:#{n} arr: #{arr.inspect} " if pr 
      arr[i], arr[k] = arr[k], arr[i]

      puts "step 4  k:#{k} i:#{i} n:#{n} arr: #{arr.inspect} replaced #{arr[i]} with #{arr[k]}" if pr 
    end
  end
  # return [arr, count]
  return count
  

end

arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# arr = %w(a b c)
# arr = %w(D C F E B A)
arr.sort!
# i = findFirstChar(arr)
# p arr[i]
# r = findRightCeil(arr,i)
# p arr[r]
@arr = []
arr.permutation.each_with_index do |pr,i|
  @arr[i] = pr 
  # puts pr.inspect
end


n = arr.size-1
k = 0
perm2(arr,k,n,0)