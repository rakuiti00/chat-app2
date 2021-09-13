class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_one_attached :image  # １レコードと画像ファイルの紐付け

  validates :content, presence: true

end
