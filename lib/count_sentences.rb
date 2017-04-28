require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end

  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end

  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    splitter = self.split(" ")
    counter = 0
      splitter.each do |word|
        if word.sentence? == true
          counter += 1
          #binding.pry
        elsif word.question? == true
          counter += 1
        elsif word.exclamation? == true
          counter += 1
        end
      end
      counter
  end
end
