#write your code here
def translate(str)
  str = str.split(" ")
  str.each_with_index do |word, index|
    str[index] = transform(word)
  end
  str.join(" ")
end

def transform(word)
  word_length = word.length
  letter_q = false
  3.times do
    # puts "#{word[0] == "q"}"
    if(!isVowel?(word[0]) || (word[0] == "u" && letter_q))
      if word[0] == "q"
        letter_q = true
      end
      word = word[1...word.length] + word[0]

    else
      letter_q = false
      break
    end
  end
  word = word + "ay"
end

def isVowel?(letter)
  vowels = ["a", "e", "i", "o", "u"]
  vowels.each do |vowel|
    if (vowel == letter) 
      return true
    end
  end
  return false
end

puts translate("queen")