class User < ApplicationRecord
  
  has_many :vans
  has_many :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true

  def full_name
    first_name.capitalize + " " + last_name.capitalize
  end
end
