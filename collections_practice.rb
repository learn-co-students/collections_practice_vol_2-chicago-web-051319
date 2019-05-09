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
  #new_data1 = {data[0].keys.to_a[0] => info.to_a[0].to_a[0][0]}
  #new_info1 = new_data1.merge(info[0].values.to_a[0])
  #new_data2 = {data[1].keys.to_a[0] => info.to_a[0].to_a[1][0]}
  #new_info2 = new_data2.merge(info[0].values.to_a[1])
  #[new_info1, new_info2]
