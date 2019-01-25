#write your code here
def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, n = 2)
  repeat = str
  (n - 1).times {repeat = repeat + " " + str}
  repeat
end

def start_of_word(str, n)
  str[0...n]
end

def first_word str
  space_index = str.index(" ")
  str[0...space_index]
end

def titleize str
  str_array = str.split(" ")
  str_array.each_with_index do |word, index|
    if (word != "the" && word != "and" && word != "over")
      str_array[index] = word.capitalize
    end
  end
  str_array[0] = str_array[0].capitalize
  str_array.join(" ")
end
