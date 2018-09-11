def reverse_integer(int)
  result = int.to_s.reverse!.to_i
  result *= -1 if int < 0 
  return 0 if result > 2147483647 || result < -2147483647
  return result
end