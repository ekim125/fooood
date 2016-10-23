class HomeController < ApplicationController
  def index
  end

  def menu
    @food_items = FoodItem.all
  	@sections = %w(Breakfast Lunch Dinner Drinks)
    @food_items = FoodItem.filter_by_section(params[:section]).order("#{params[:sort_param]} ")
  
    if params[:search]
      @food_items = FoodItem.search(params[:search])
    end

  end

  def contact_us
  end

  def about_us
  end
end
