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

end
