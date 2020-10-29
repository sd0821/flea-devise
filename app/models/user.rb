class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true, uniqueness: true 
  validates :family_name, presence: true
  validates :first_name, presence: true
  validates :familyname_furigana, presence: true
  validates :firstname_furigana, presence: true
  validates :date, presence: true
end
