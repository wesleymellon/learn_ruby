class Book
  attr_reader :title
# write your code here

  # def initialize title_name
  #   @title_name = title_name
  # end

  # def title
  #   title_array = @title_name.split(" ")
  #   title_array.each_with_index do |word, index|
  #     title_array[index] = word.capitalize
  #   end
  #   @title_name = title_array.join(" ")
  # end

  def title=(original_title)
    # manipulate value
    title_array = original_title.split(" ")
    title_length = title_array.length
    title_array.each_with_index do |word, index|
      if(!special_word?(word) || (title_length == 1 ||index == 0))
        title_array[index] = word.capitalize
      end
    end
    @title = title_array.join(" ")
  end

  def special_word?(word)
    if(word == "a" || word == "to" || word == "an" || word == "and" || word == "in" || word == "of" || word == "the")
      return true
    else
      return false
    end
  end

end
