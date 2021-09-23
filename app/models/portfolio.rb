class Portfolio < ApplicationRecord
  validates_presence_of :title, :sub_title, :body, :main_image, :thumb_image

  # without scope method
  def self.angular
    where(sub_title: "Angular")
  end

  #custom scope method
  scope :rails_portfolios_items, -> { where(sub_title: "Ruby on Rails") }

  # set default value in model level after object initialize
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://via.placeholder.com/600X400"
    self.thumb_image ||= "https://via.placeholder.com/350X200"
  end
end
