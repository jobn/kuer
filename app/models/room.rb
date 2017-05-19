class Room < ApplicationRecord
  after_initialize :build_number

  validates :nickname, :number, presence: true
  validates :number, uniqueness: true

  private

  def build_number
    return if self.number
    number = 0
    numbers = Room.pluck(:number)

    loop do
      number = rand(10**6)
      break if number > 10**5 && !numbers.include?(number)
    end

    self.number = number
  end
end
