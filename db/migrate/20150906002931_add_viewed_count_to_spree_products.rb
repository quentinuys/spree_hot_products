class AddViewedCountToSpreeProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :viewed, :integer
  end
end
