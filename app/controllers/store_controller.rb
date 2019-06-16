class StoreController < ApplicationController
  def index
  	@products = Product.order(:title)
  end

 def food
  	@products = Product.order(:title)
  end

   def beverage
  	@products = Product.order(:title)
  end

     def today
  	@products = Product.order(:title)
  end

end
