module Spree
  HomeController.class_eval do

    def hot_products
      @products = Product.where("viewed > ?", 0).order(viewed: :desc).first(20)
    end
    
  end
end