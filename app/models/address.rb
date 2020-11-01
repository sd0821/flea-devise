class Address < ApplicationRecord
  validates :destination_family_name, :destination_first_name, :destination_family_name_furigana, :destination_family_name_furigana, :postal_code, :municipality, :house_number, presence: true
  # 空の入力を防ぐ
  validates :tel, uniqueness: true, allow_blank: true
  # 同じ電話番号は登録できない
  validates :destination_family_name, :destination_first_name, format: {with:/\A[ぁ-んァ-ン一-龥]/, message: "は全角のみで入力して下さい"}
  # 名前 全角文字のみ登録可能
  validates :destination_family_name_furigana, :destination_family_name_furigana, format: {with: /\A[ァ-ヶー－]+\z/, message: "は全角カタカナのみで入力して下さい"}
  # 名前よみがな 全角カタカナにみ登録可能

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
end
