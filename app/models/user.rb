class User < ApplicationRecord
  # has_many :koes
  # has_many :texts
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
