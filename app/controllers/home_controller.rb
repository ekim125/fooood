class HomeController < ApplicationController
  def index
  end

  def menu
  	#@a = 'Tan Bui'
  	breakfast = 'Breakfast'
  	lunch = 'Lunch'
  	#@section_list = [ breakfast, lunch, 'Dinner', 'Drinks']
  		@section_list = Section.all
  end

  def contact_us
  end

  def about_us
  end
end
