require 'pry'

def begins_with_r(words)
  words.all? do |letter|
  letter.start_with?("r")
  end
end


def contain_a(letter)
  empty_array = []
  letter.collect do |x|
    if x.include?("a")
      empty_array << x
    end
  end
    return empty_array
end


def first_wa(element)
  element.find do |wa|
    if wa[0] == "w" && wa[1] == "a"
      return wa
    end
  end
end


def remove_non_strings(string)
  string.delete_if do |str|
    str.class != String
  end
  string
end


def count_elements(el)
  el.group_by(&:itself).map do |key, value|
    key.merge({:count => value.length})
  end
end


def merge_data(data, info)
  info[0].map do |name, hash|
    new_hash = {}
    data.each do |hashes|
      if hashes[:first_name] == name
        new_hash = hash.merge(hashes)
      end
    end
    new_hash
  end
end


def find_cool(hash)
  if hash[1].values[1] == "cool"
    [hash[1]]
  end
end


def organize_schools(schools)
  empty_array = []
  schools.values.to_a.each do |value|
    empty_array << value.values
end
school_array = empty_array.flatten.uniq.sort

h1 = {schools.to_a[0][1].values[0] => [schools.to_a[0][0], schools.to_a[1][0], schools.to_a[4][0]]}
  h2 = {school_array[0] => [schools.to_a[3][0]]}
  h3 = {school_array[2] => [schools.to_a[2][0], schools.to_a[5][0]]}
  h = {}
  h.merge!(h1)
  h.merge!(h2)
  h.merge!(h3)
  h
end
