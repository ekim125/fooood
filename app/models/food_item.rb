class FoodItem < ApplicationRecord
has_many :order_food_items
	def image_url_or_auto
		if image.present?
			image
	else
		"http://loremflickr.com/320/240/#{name}"
		end
	end


	def self.filter_by_section(section)
    	where("section like ?", "%#{section}%")
  	end

  	def self.search(search)
  		where("name like ?","%#{search}%")
  	end
end
