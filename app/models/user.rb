class User < ApplicationRecord
  # validates :email, confirmation: true, format: { with: /\A[^@\s]+@[^@\s]+\.[^@\s]+\z/ }
  # validates :email_confirmation, presence: true
  has_one :passport, dependent: :destroy
end
