class Product < ActiveRecord::Base
  scope :find_newest_article, -> { order(created_at: :desc).limit(5) }

  validates :name, presence: :true, length: { maximum: 50 }
  validates :category, presence: :true, length: { maximum: 50 }
  validates :detail, presence: :true, length: { maximum: 1000}
  validates :lowest_price, presence: :true, length: { maximum: 20}

end


# name, :lowest_price, :detail, :user_id, :category

# http://www.ken-tmr.com/sketch-201503/paris-5.jpg
