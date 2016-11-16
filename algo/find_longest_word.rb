# Complete the method called find_longest_word, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.

class Sentence
  attr_accessor :sentence, :words
def find_longest_word(sentence)
#  @sentence = {}
#  words.each do |word|
#   sentence[word] = word.length 
# end
#   puts @lengths
  longest_word = " "
    @words = sentence.split(" ")
    @words.each do |word|
    longest_word = word unless word.length < longest_word
  end
  puts longest_word
  # sentence.split(' ').sort! { |a, b| b.length <=> a.length }[0]

  # longest_word = []
  # @sentence.each { |word| longest_word = word if word.length > longest_word.length }

end

# Driver code - don't touch anything below this line.
puts "TESTING find_longest_word..."
puts

result = find_longest_word("What is the longest word in this phrase?")

puts "Your method returned:"
puts result
puts

if result == "longest"
  puts "PASS!"
else
  puts "F"
end