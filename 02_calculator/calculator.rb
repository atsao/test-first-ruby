# Calculator

def add(n1, n2)
  return n1 + n2
end

def subtract(n1, n2)
  return n1 - n2
end

def sum(n)
  sum = 0
  if n.is_a?(Array)
    n.each { |x| sum = sum + x }
  end
  return sum
end

def multiply(*args) 
  result = 1
  args.each { |n| result *= n }
  return result
end

def power(n, p)
  if p == 0
    return 1
  elsif p < 0
    denom = 1
    p = p.abs
    (1..p).each { |x| denom *= n }
    return (1.0/denom).to_f
  else
    result = 1
    (1..p).each { |x| result *= n }
    return result
  end
end

def factorial(n) 
  if n == 0 || n == 1
    return 1
  elsif n < 0
    return nil
  else
    result = 1
    (1..n).reverse_each { |x| result *= x }
    return result
  end
end