# gid_45.rb
def tri(n)
  n*(n+1)/2
end
def pen(n)
  n*(3*n-1)/2
end

def hexa(n)   
  n*(2*n - 1)
end

t=286
pe= 144
h = 144
step=10000
t_array=p_array=h_array = []
while t < 100000
  t_array += (t..t+step).map {|n| tri(n)} 
  p_array += (pe..pe+step).map {|n| pen(n)} 
  h_array += (h..h+step).map {|n| hexa(n)}
  comp =  t_array & p_array & h_array
  if (comp).size > 0
    puts "found"
    t = (t_array.index(comp[0]))
    puts "t is " + (t+286).to_s
    puts "the number is " + comp[0].inspect
    break
  else
    t+=step+1
    pe+=step+1
    h+=step+1
  end
end
