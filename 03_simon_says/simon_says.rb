# Simon Says

def echo(str)
  return str
end

def shout(str)
  return str.upcase
end

def repeat(str, n=2)
  placeholder = ""
  n.times { placeholder += str + " " }
  return placeholder.rstrip
end

def start_of_word(str, n=1)
  array = str.split("")
  result = ""
  (1..n).each { |x| result += array[x-1] }
  return result
end

def first_word(str)
  return str.split(" ")[0]
end

def titleize(str)
  array = str.split(" ")
  if array.length > 1
    array.each_with_index do |word, index|
      puts "#{word}: #{index}"
      if index == 0 && word == "the"
        array[index] = word.capitalize
      elsif !word.match(/(and|the|over|but)/)
        array[index] = word.capitalize
      end
    end
    return array.join(" ")
  else
    return str.capitalize
  end
end