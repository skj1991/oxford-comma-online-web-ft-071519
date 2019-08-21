def oxford_comma(array)
  case array.size
  when 1
    return array[0].to_s
  when 2
    string = array[0] + " and " + array[1]
  else
    string = String.new
    array.each_with_index do |item, index|
      if item == array.last
        string += "and " + item
      else
        string += item + ", "
      end
    end
    return string
  end
end
