class Anagram
  def initialize(word)
    @alphabetized_word = alphabetize(word)
  end

  def alphabetize(word)
    word.split("").sort.join
  end

  def match(word_list)
    word_list.select do |word|
      @alphabetized_word == alphabetize(word)
    end
  end
end
