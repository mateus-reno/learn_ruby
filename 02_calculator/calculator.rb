def add (num1, num2)
  num1 + num2
end

def subtract (num1, num2)
  num1 - num2
end

def sum (array1)
  array1.inject(0){|sum,x| sum + x }
end

def multiply (array1)
  array1.inject(){|sum,x| sum * x }
end

def power (num1, num2)
  num1**num2
end

def factorial (num1)
  if num1 > 0
    if num1 > 1
      sum = 1
      while num1 > 1
        sum = sum * num1
        num1 -= 1
      end
      return sum
    else
      1
    end
  else
    0
  end
end
#write your code here
