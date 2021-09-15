class Portfolio < ApplicationRecord
  validates_presence_of :title, :sub_title, :body, :main_image, :thumb_image
end
