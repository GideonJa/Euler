# gid_19.rb
def leap?(year)
  return true if year % 400 == 0
  return true if year % 4 ==0 && year % 100 != 0
  return false
end

def sundays
  m=[nil, 31,28,31,30,31,30,31,31,30,31,30,31]
  year = 1899
  month= 12
  day= 31
  sun_sum =0
  while year < 2001
    if remain(m, day,month, year) >= 7
      day +=7
    else
      day = 7 - remain(m, day,month, year)
      if month == 12 
        month = 1 
        year += 1
      else
        month += 1 
      end
    end
    sun_sum+=1 if year >=1901 && year <= 2000 && day == 1
  end
  return sun_sum
end

def remain(m, day,month,year)
  days = month == 2 && leap?(year) ? 29 : m[month]
  return days - day
end
p sundays