module Spree
  HomeController.class_eval do

    def hot_products
      @products = Product.where("viewed > ?", 0).reorder(viewed: :desc).limit(20)
    end
    
  end
end