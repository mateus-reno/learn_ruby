def translate (word)
  exception = ["a", "e", "i", "u", "o"]
  if word.match(" ")
    puts "buh"
  else
    wordarray = word.split("")
    if exception.include? wordarray[0]
      "#{word}" + "ay"
    else
      if exception.include? wordarray[1]
        word[0] = ""
        "#{word}" + "#{wordarray[0]}" + "ay"
      else
        word[0..1] = ""
        "#{word}" + "#{wordarray[0]}" + "#{wordarray[1]}" + "ay"
      end
    end
  end
end
#write your code here
