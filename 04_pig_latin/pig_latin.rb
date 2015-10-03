# Pig Latin

def translate(str)
  words = str.split(" ")

  words.each_with_index do |word, index|
    if word.match(/^[aeiou]/i)
      words[index] = word + "ay"
    elsif word.match(/^(qu+|[^aeiou]+qu+|[^aeiou]+)(\w+)/i)
      words[index] = $2 + $1 + "ay"
    end
  end

  return words.join(" ").rstrip
end