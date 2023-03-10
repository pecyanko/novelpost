class Novel < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_one_attached :image
  belongs_to :user
  has_many :comments
  has_many :favorites, dependent: :destroy

  validates :title, presence: true
  validates :author, presence: true
  validates :review, presence: true
  validates :image, presence: true

  validates :category_id, numericality: { other_than: 1, message: "を入力してください" }

end
