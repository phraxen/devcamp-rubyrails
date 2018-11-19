class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular_items
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_items, -> do
    where(subtitle: 'Ruby on Rails')
  end

  after_initialize :set_defaults # called after item is instantiated (e.g. by calling 'new', or when loading from DB)

  def set_defaults
    self.main_image ||= 'http://placehold.it/600x400'
    self.thumb_image ||= 'http://placehold.it/350x200'
  end
end
