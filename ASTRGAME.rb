class Astrgame

  @flag = false
  @count  = 0
  @string =  String(gets.chomp)
  no_of_words = Integer(gets.chomp)
  long_array = []
  no_of_words.times  do
    long_array << String(gets.chomp)
  end

  def self.check_if_present(sub)
    sub.each do | char |
      @flag = @string.include?(char)
    end
    if @flag
      @count = (@count + 1)
      p @count
    end
  end

  def self.calling(long_array)
    sub = []
    long_array.each do | sub_string |
      sub_string.each_char { | char | sub << char }
      Astrgame.check_if_present(sub)
    end
  end


  # p @count
  Astrgame.calling(long_array)

end