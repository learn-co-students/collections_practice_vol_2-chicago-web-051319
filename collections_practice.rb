def begins_with_r(tools_array)
    truth_value = []
    truth_value = tools_array.map { | tool | tool.start_with?('r') }
    if truth_value.include?(false)
        return false
    else
        return true
    end 
end

def contain_a(array)
    new_array = []
    array.each { | word | new_array << word if word.include?('a') }
    new_array
end

def first_wa(array)
    new_array = []
    array.map { | word | new_array << word if word.match?(/wa/) }
    new_array.first
end

def remove_non_strings(array)
    array.keep_if { | anything | anything.is_a?(String) }
end

def count_elements(array)
    array.each do | hash |
        hash[:count] = 0
        name = hash[:name]
        array.each do | new_hash |
          if new_hash[:name] == name
            hash[:count] += 1
          end
        end
    end.uniq
end
     
def merge_data(keys, data)
    data[0].map do | name, hash |
        new_hash = {}
        keys.each do | name_hash |
            if name_hash[:first_name] == name
                new_hash = hash.merge(name_hash)
            end
        end
        new_hash
    end
end

def find_cool(array)
    new_array = []
    array.each do | element |
      new_array << element if element[:temperature] == "cool"
    end
    new_array
  end

def organize_schools(schools)
    organized_schools = {}
    schools.each do | name, location_hash |
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
  