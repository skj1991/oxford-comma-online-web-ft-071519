require 'pry'
def oxford_comma(array)
  case array.size
  when 1
    return array[0].to_s
  when 2
    string = array[0] + " and " + array[1]
  else
    string = ""
    array.each_with_index do |item, index|
      if index == array.size - 1
        string += "and " + item
      else
        string += item + ", "
      end

      #string += "and " + item if index == array.size - 1 # if the index we're on is the last index in the array
      #break if index == array.size - 1
      #string += item + ", "
    end
    return string
  end
end
