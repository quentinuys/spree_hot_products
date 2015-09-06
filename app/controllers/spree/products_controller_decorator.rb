module Spree
  ProductsController.class_eval do
    before_action :update_viewed, only: :show

    def update_viewed
      @product.increment(:viewed)
      @product.save!
    end
  end
end