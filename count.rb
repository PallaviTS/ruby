class Count

  def self.count_words(string)
  Hash[
    string.scan(/[a-zA-Z]+/)
      .group_by{|word| word.downcase; p word }
      .map{|word, words|[word, words.size]; p word; p words}
  ]
 end

puts count_words 'I was 09809 home -- Yes! yes!  You was'

end