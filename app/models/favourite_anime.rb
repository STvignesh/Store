class FavouriteAnime < ApplicationRecord
  # Now that there is no validation rules present here we can create empty object and save that to db
  # But is that what we want? No, we want to make sure that the data is valid before saving it to the database. So we will add some validation rules here.

  validates :name, :rating, presence: true
  validates :name, length: { minimum: 5 }
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
  # validate do |anime|
  #   errors.add :name, :too_short, message: "is not long enough"
  # end
  #  this above validation checks both name and rating and expects them to have some value
end
