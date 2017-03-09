module LuhnValidator
  # Validates credit card number using Luhn Algorithm
  # arguments: none
  # assumes: a local String called 'number' exists
  # returns: true/false whether last digit is correct
  def validate_checksum
  	# TODO: use the integers in nums_a to validate its last check digit
    nums_a = number.to_s.chars.map(&:to_i)
    r = nums_a.size % 2
    sum = nums_a.each_with_index.map{|c, i|
      if i % 2 == r
      	z = (c < 5) ? c * 2 : (c * 2) % 10 + 1
  	  else
  	  	z = c
      end
      z
    }.reduce(0, :+)
    return sum % 10 == 0
  end
end

