class PhoneNumber < ApplicationRecord
  before_validation :strip_non_numeric_from_value

  EXPECTED_NUMBER_OF_DIGITS = 10

  def strip_non_numeric_from_value
    self.value = self.value.gsub(/\D/, "").split("").last(EXPECTED_NUMBER_OF_DIGITS).join
  end
end
