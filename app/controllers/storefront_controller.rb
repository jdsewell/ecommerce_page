class StorefrontController < ApplicationController
  def all_items
  	@products = Product.all
  end

  def items_by_category
  	@categories = Category.all
  	
  end

  def items_by_brand
  	@products = Product.all
  	@brands = []
	@products.each do |product|
  		if @brands.include?(product.brand) == false #keeps duplicates out
  			@brands.push(product.brand)
  		end
  	end
  end
end
