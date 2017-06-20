class Portfolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumb_image
	scope :angular_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

	
end