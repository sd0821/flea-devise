class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true, uniqueness: true 
  validates :family_name, presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "全角ひらがな、全角カタカナ、漢字のみが使用できます"}
  validates :first_name, presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "全角ひらがな、全角カタカナ、漢字のみが使用できます"}
  validates :familyname_furigana, presence: true, format: { with: /\A([ァ-ン]|ー)+\z/, message: "全角カタカナのみが使用できます"}
  validates :firstname_furigana, presence: true, format: { with: /\A([ァ-ン]|ー)+\z/, message: "全角カタカナのみが使用できます"}
  validates :date, presence: true

  # validates :nickname, presence: true
  # validates :family_name,
  #   format: { with: /\A[ぁ-んァ-ン一-龥]/},
  #   presence: true
  # validates :filst_name,
  #   format: { with: /\A[ぁ-んァ-ン一-龥]/},
  #   presence: true
  # validates :familyname_furigana,
  #   format: { with: /\A([ァ-ン]|ー)+\z/},
  #   presence: true
  # validates :filst_name_furigana,
  #   format: { with: /\A([ァ-ン]|ー)+\z/},
  #   presence: true
  # validates :date,
  #   presence: true

  has_one :address
end
