#write your code here
def add(n, m)
  n + m
end

def subtract(n, m)
  n - m
end

def sum(arr)
  total = 0
  arr.each { |i| total += i }
  total
end

def multiply(n, m)
  n * m
end

def power(n, m)
  total = n
  m.times { total = total * n }
  total
end

def factorial(n)
  total = 1
  while n > 0 do
    total *= n
    n -= 1
  end
  
  total
end