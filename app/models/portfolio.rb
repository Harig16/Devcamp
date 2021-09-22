class Portfolio < ApplicationRecord
  validates_presence_of :title, :sub_title, :body, :main_image, :thumb_image

  # without scope method
  def self.angular
    where(sub_title: "Angular")
  end

  #custom scope method
  scope :rails_portfolios_items, -> { where(sub_title: "Ruby on Rails") }
end
