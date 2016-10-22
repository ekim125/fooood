class FoodItem < ApplicationRecord
	belongs_to :section

	def image_or_default
		if image.present?
			image
	else
		"http://loremflickr.com/320/240/canhchua"
		end
	end
end
