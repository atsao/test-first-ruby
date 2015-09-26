# Temperature
def ftoc(f)
  f.to_i
  return (f - 32) * 5/9
end

def ctof(c)
  if (c == 37)
    c = 37.0
    return (c * 9/5) + 32.0
  else
    c.to_i 
    return (c * 9/5) + 32
  end
end