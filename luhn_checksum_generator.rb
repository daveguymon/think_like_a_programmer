def luhn_checksum(id_num)
  id_num_reverse = id_num.to_s.reverse.split('')

  comparator = []

  id_num_reverse.each_with_index do |dig, index|
    if index.even?
      comparator << dig.to_i * 2
    else
      comparator << dig.to_i
    end
  end

  comparator_sum = comparator.inject(:+)
  checksum_digit = (comparator_sum * 9) % 10
  luhn_number = comparator_sum + checksum_digit

  luhn_number
end


luhn_checksum(434829097)
