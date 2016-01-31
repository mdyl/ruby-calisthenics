module FunWithStrings
  def palindrome?
    word = self.downcase.scan(/\w/)
    word == word.reverse
  end
  def count_words
    number_words = self.scan(/\w+/).inject(Hash.new(0)) { |hash, w| hash[w.downcase] += 1; hash}
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
