# sequential method to generate the fibonacci sequence up to n values
def fibs(n)
  result = [0, 1]

  case n
  when 0
    result
  when 1
    result = [0]
  when 2
    result 
  else
    (n - 2).times do
      result.push(result[-2] + result[-1])
    end
  end
  p result
end

# recursive method to generate the fibonacci sequence up to n values.
def fibs_rec(n, result = [0, 1])
  case n
  when 0
    p result = []
  when 1
    p result = [0]
  when 2
    p result
  end

  if n >= 3
    result.push(result[-2] + result[-1])
    return p result if n == 3
    fibs_rec(n - 1, result)
  end
end

fibs(9) # => [0, 1, 1, 2, 3, 5, 8, 13, 21]
fibs_rec(9) # => [0, 1, 1, 2, 3, 5, 8, 13, 21]