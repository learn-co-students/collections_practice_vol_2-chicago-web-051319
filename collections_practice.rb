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

def merge_data(keys, data)
  name = [
        {
             :first_name => "blake",
            :awesomeness => 10,
                 :height => "74",
              :last_name => "johnson",
                  :motto => "Have a koala-ty day!"

        },
        {
             :first_name => "ashley",
            :awesomeness => 9,
                 :height => 60,
              :last_name => "dubs",
                  :motto => "I dub thee, 'Lady Brett Ashley'."

        }
    ]
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

def organize_schools(arr)
{"Chicago"=>["dev boot camp chicago"], "NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"]}

end


#{"Chicago"=>["dev boot camp chicago"], "NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"]}

#def merge_data(keys, data)
    #keys.each do |hash| 
      #data.each do |data_hash| 
    
      #hash.each do |hash_key, hash_value|
        #data_hash.clone.each do |data_hash_key, data_hash_value|
          #if hash_value == data_hash_key
            #binding.pry
            #data_hash[:motto] = hash[:motto]
          #end
         #end
        #end
      #end
    #end
  #end


