class MoneyFormat
  def self.format(number)
    formated_number = ''
    number.to_s.reverse.split(//).each_with_index do |digit, index|
      formated_number += ',' if index != 0 && index % 3 == 0
      formated_number += digit
    end
    formated_number.reverse
  end
end
