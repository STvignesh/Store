class Student < ApplicationRecord
  has_many :blogs, dependent: :destroy
end
