require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentence = 0
    punctuation = [".", "?", "!"]
    self.chars.each.with_index do |char, index|
      if punctuation.include?(char) && !punctuation.include?(self[index + 1])
        sentence += 1
      end
    end
      sentence
  end
end