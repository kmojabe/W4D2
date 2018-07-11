require 'date'

class Cat < ApplicationRecord
  COLORS = %w(red green black white blue yellow orange)

  validates :birth_date, :color, :sex, :description, presence:true
  validates :name, uniqueness: true
  validates :color, inclusion: { in: COLORS, message: "Input is not a valid color" }
  validate  :validate_sex

  def validate_sex
    if sex.present? && !(sex == 'M' || sex == 'F')
      self.errors[:sex] << "Not a valid sex"
    end
  end

  def age
    now = Date.current
    age = now.year - birth_date.year
    age -= 1 if now.yday < birth_date.yday
    age
  end

end
