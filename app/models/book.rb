class Book < ApplicationRecord
  validates :title, presence: true
  after_create :sell


  private
  def sell
    puts "READDY TO SELL"
    # Implementation for selling the book
  end
end
