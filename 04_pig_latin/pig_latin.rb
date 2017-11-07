def translate (word)
  exception = ["a", "e", "i", "u", "o"]
  if word.match(" ")
    puts "buh"
  else
    wordarray = word.split("")
    letter1 = word[0]
    letter2 = word[1]
    if exception.include? wordarray[0]
      "#{word}" + "ay"
    else
      if exception.include? wordarray[1]
        word[0] = ""
        "#{word}" + "#{letter1}" + "ay"
      else
        word[0..1] = ""
        "#{word}" + "#{letter1}" + "#{letter2}" + "ay"
      end
    end
  end
end
#write your code here
