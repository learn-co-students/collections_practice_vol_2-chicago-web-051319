require 'pry'
def begins_with_r(arr)
  arr.each do |x| x.split("")
  if x[0] != "r"
    return false
    end
  end
  true
end

def contain_a(arr)
  arr.map do |x| 
    if x.include?("a")
      x
    end
  end.compact
end

def first_wa(arr)
  arr.map! do |x| 
    x.to_s
  end
  arr.each do |x|
    if x.include?("wa")
      return x
    end
  end
end

def remove_non_strings(arr)
  arr.delete_if {|x| x.class != String}
end

def count_elements(arr)
  arr.group_by(&:itself).map{|k, v| k.merge(count: v.length)}
  end
#arr.uniq.map { |x| [arr.count(x), x] }

def merge_data(arr1, arr2)
  arr2[0].map do |name, value|
    hash = {}
    arr1.each do |data|
      if data[:first_name] == name
        hash = value.merge(data)
        end
      end
    hash
    end
end

def find_cool(arr)
arr.each do|hash| 
  hash.each do |key, value| 
    if value == "cool"
      return [hash]
      end
    end
  end
end


def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end






