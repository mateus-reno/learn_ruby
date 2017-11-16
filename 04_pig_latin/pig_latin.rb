
def translate (string)
  vowels = ["a", "e", "i", "o", "u"]
  consonants = ("a".."z").to_a - ["a", "e", "i", "o", "u"]
  wordarray = []
  string.split.map do |word|
    letterarray = word.split("")
    if vowels.include? letterarray[0]
      wordarray.push(letterarray.push("a", "y").join())
    elsif consonants.include?(letterarray[0] && letterarray[1] && letterarray[2])
      letterarray.push(letterarray[0])
      letterarray.push(letterarray[1])
      letterarray.push(letterarray[2])
      wordarray.push(letterarray.drop(3).push("a", "y").join())
    elsif consonants.include?(letterarray[0] && letterarray[1])
      letterarray.push(letterarray[0])
      letterarray.push(letterarray[1])
      wordarray.push(letterarray.drop(2).push("a", "y").join())
    elsif consonants.include?(letterarray[0])
      letterarray.push(letterarray[0])
      letterarray[0] = ""
      wordarray.push(letterarray.push("a", "y").join())
    else
      "No"
    end
  end
  wordarray.join(" ")
end

#module Decomposer (string)
#
#end
#letterarray.shift.join
#%w(a e i o u)
