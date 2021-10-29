class Blog < ApplicationRecord
  enum status: {draft: 0, published: 1}
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body

  belongs_to :topic

  def self.special_blogs
    all
  end

  def self.published
    where(status: "published")
  end

  def self.recent
    order("updated_at DESC")
  end
end
