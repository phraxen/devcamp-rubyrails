class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular_items
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_items, -> { where(subtitle: 'Ruby on Rails') }

  after_initialize :set_defaults # called after item is instantiated (e.g. by calling 'new', or when loading from DB)

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: 600, width: 400)
    self.thumb_image ||= Placeholder.image_generator(height: 350, width: 200)
  end
end
