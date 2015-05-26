
class GreenEggsAndHam

  def initialize
    @text = File.read('green_eggs_and_ham.txt')
  end

  def words
    @text.split.map!{ |word| word.downcase.gsub(/[^a-z-]/, '') }
                                          #' /'=begin or end a regex patern (sub in this case). 
                                          # ^=not the following. 
                                          # after the coma is what you are replacig with. 
  end

  def word_count
    words.count
        #.lenth or .size would work as well
  end

  def sorted_unique_words
    words.uniq.sort
  end

  def number_of_words_shorter_than(num)
    small_words = words.select { |word| word.length < num }.length
    # small_words.length - not needed just do the .length on  the block
  end

  def longest_word
    words.max_by{ |word| word.length}
  end

  def frequency_of_unique_words
    words.each_with_object(Hash.new(0)) { |word, index| index[word] += 1 }
  end

  def stanzas
    @text.split("\n\n")
  end

  def lines
    @text.split("\n").reject { |line| line == ""}
  end

end    