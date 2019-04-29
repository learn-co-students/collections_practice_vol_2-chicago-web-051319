# your code goes here
def begins_with_r (col)
  col.each do |i|
    a = i.split("")
    if a[0] != "r"
      return false
    end

  end
  
  return true
end

def contain_a(col)
  arr = []
  col.each do |i|
    a = i.split("")
    if a.include?("a")
      arr << i
    end
  end
  
  return arr
end

def first_wa(col)
  col.find do |i|
    b = i.to_s
    a = b.split("")
    if a[0] == "w" && a[1]
      return i
    end
  end
end

def remove_non_strings(col)
  a = []
  col.each do |i|
    if i.is_a?(String)
      a.push(i)
    end
  end
  
  col = a
  return col
end

def count_elements(col)
  arr = []
  col.each do |i|
    temp = {
      :name => i[:name],
      :count => 1
    }
    arr.push(temp)
  end
  
  ind = 0
  for i in arr
    #puts "Looping"
    new_ind = 0
    
    for j in arr
     # puts "loopdy looping"
      if i == j && ind != new_ind
          arr.delete_at(new_ind)
          #puts "delete duplicate"
          arr[ind][:count] += 1
      end
      
      new_ind += 1
    end
      
    ind += 1
  end
  
 # puts "result: #{arr}"
  return arr
end


def merge_data(col_a , col_b)
 # puts col_a  # THESE ARE ARRAYS OF HASHES
  res = col_a
  col_b.each do |i|
    res.each do |j|
      ind = 0
      
      i.each do |k , v|

        if j[:first_name] == k # if the :first_name of  A  matches the key of  B
          #puts "found you"
          v.each do |element , val|
            puts "#{element} : #{val} (#{k})"
            j[element] = val
          end
        end
      end
      
      ind += 1
    end
  end
  
  return res
end


def find_cool(col)
  #puts col
  res = []
  col.each do |i|
    i.each do |k , v|
      if v == "cool"
        res.push(i)
      end
    end
  end
  
  return res
end

def organize_schools(col)
  puts " Collection: #{col}"
  
  res = {}
  
  col.each do |k , v|
    v.each do |v_k , v_v|
      puts v_v
      res[v_v] = []
    end
  end
  
  col.each do|k , v|
    v.each do |v_k , v_v|
      res[v_v] << k
    end
  end

  col = res
  return res
end