class Portfolio < ApplicationRecord

  # set position automatically
  acts_as_list

  #technology reference
  has_many :technologies, dependent: :delete_all

  # image uploaded using carrierwave
  mount_uploader :main_image, PortfolioUploader
  mount_uploader :thumb_image, PortfolioUploader

  #nested attributes 
  accepts_nested_attributes_for :technologies, 
                                  allow_destroy: true,
                                  reject_if: lambda { |attrs| attrs[:name].empty? }

  # Concerns used only for data change. Created Placeholder file in concerns folder and included in Portfolio and skill model
  #include Placeholder

  validates_presence_of :title, :sub_title, :body #, :main_image, :thumb_image

  # without scope method
  def self.angular
    where(sub_title: "Angular")
  end

  def self.by_position
    order("position ASC")
  end

  #custom scope method
  scope :rails_portfolios_items, -> { where(sub_title: "Ruby on Rails") }

  # set default value in model level after object initialize
  #after_initialize :set_defaults

  #def set_defaults
  #  self.main_image ||= Placeholder.image_generator(height: 600, width: 400)
  #  self.thumb_image ||= Placeholder.image_generator(height: 350, width: 200)
  #end
end
