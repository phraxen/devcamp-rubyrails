class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular_items
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_items, -> do
    where(subtitle: 'Ruby on Rails')
  end
end
