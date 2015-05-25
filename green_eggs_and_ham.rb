
class GreenEggsAndHam
  include Enumerable

  def initialize
    @text = File.read('green_eggs_and_ham.txt')
  end

  def words
    @text.split.map!{|word| word.downcase.gsub(/[^a-z-]/, '')}
  end

  def word_count
    words.count
  end

  def sorted_unique_words
    words.uniq.sort
  end

  def number_of_words_shorter_than(num)
    small_words = words.select { |word| word.length < num }
    small_words.length
  end

  def longest_word
    words.max_by{ |word| word.length}
  end

  def frequency_of_unique_words
    words.each_with_object(Hash.new(0)) { |word, index| index[word] += 1 }
  end

end    