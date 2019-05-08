# your code goes here

def begins_with_r (array)
  # Return true if every element of the tools array starts with an "r" and false otherwise.
  array.all? {|word|word.start_with?("r")}
end


#return all elements that contain the letter 'a'
def contain_a(array)
  array.select { |word| word.include?("a") }
end

# Return the first element that begins with the letters 'wa'
def first_wa (array)
  array.find { |word| word[0..1] == "wa" }
end

# remove anything that's not a string from an array
def remove_non_strings(array)
  array.select { |word| word.class == String }
end

# count how many times something appears in an array
def count_elements(array)
  array.uniq.collect do |word|
    word[:count] = array.count(word)
    word
  end
end

    # combines two nested data structures into one
def merge_data (keys, data)
    keys[0].values.map.with_index {|v, i| data[i].merge(v)}
end

#find all cool hashes
def find_cool(cool)
  cool.select { |data| data[:temperature] == "cool" }
end
end

def organize_schools
    # organizes the schools by location
end

