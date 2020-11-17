class Item < ApplicationRecord
  validates :name, presence: true, length: { maximum: 40 }  #空NG #40文字以内
  # validates :item_text, presence: true, length: { maximum: 1000 }  #空NG #1000文字以内
  # validates :category, presence: true  #空NG
  # validates :item_status, presence: true  #空NG
  # validates :delivery_charge, presence: true  #空NG
  # validates :delivery_area, presence: true  #空NG
  # validates :delivery_days, presence: true  #空NG
  # validates :price, presence: true, numericality: {greater_than_or_equal_to:300, less_than_or_equal_to:9999999}  #空NG #300円以上9999999円以下


  belongs_to :user
  # belongs_to :category
  # belongs_to :brand
  has_many :item_images,dependent: :destroy
  accepts_nested_attributes_for :item_images

  # extend ActiveHash::Associations::ActiveRecordExtensions
  # belongs_to_active_hash :item_status
  # belongs_to_active_hash :delivery_charge
  # belongs_to_active_hash :delivery_area
  # belongs_to_active_hash :delivery_day

  has_one :purchase_management
end
