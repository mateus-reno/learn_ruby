def echo(parameter)
  return parameter
end

def shout(parameter)
  return parameter.upcase
end

def repeat(parameter, times=2)
  return ("#{parameter} " * times).strip
end

def start_of_word(parameter, index=1)
  return parameter[0..(index-1)]
end

def first_word(parameter)
  return parameter.split[0]
end

def titleize(parameter)
  exception = ["and", "over", "the"]
  parameter.split.map.with_index do |word, i|
    if (exception.include? word) && (i != 0)
      word
    else
      word.capitalize
    end
  end.join(" ")
end

#write your code here
