class Player < ApplicationRecord

  belongs_to :team
  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }
  
end
