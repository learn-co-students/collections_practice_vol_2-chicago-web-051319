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
  data[0].map do |name, hash|
  new = {}
    keys.each do |info| 
      if info [:first_name] == name 
        new = hash.merge(info)
      end
    end
  new
end 
end

#find all cool hashes

def find_cool(cool)
  cool.select { |data| data[:temperature] == "cool" }
end

#alternative: 
# def find_cool(array)
#  container = []
#  array.each do |element|
#    container << element if element[:temperature] == "cool"
#  end
#  container
# end


    # organizes the schools by location
def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, place|
    location = place[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end


