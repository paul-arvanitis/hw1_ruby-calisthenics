module FunWithStrings
  def palindrome?
    return true if self.reverse.downcase.gsub(/\W/,'') == self.downcase.gsub(/\W/,'')
  end
  def count_words
    dict = Hash.new(0)
    words = self.downcase.gsub(/\W/,' ').split(' ')
    words.each {|i| dict[i] += 1}
    return dict
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
