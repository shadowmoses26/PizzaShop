class AddProducts < ActiveRecord::Migration[7.1]
  def change
    Product.create :title => 'Hawaiian', :description => 'This is Hawaiian pizza', :price => 350, :size => 30, :is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/pizza1.jpg'

    Product.create :title => 'Pepperoni', :description => 'Nice pepperoni pizza', :price => 450, :size => 30, :is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/pizza2.jpg'

    Product.create :title => 'Vegetarian', :description => 'Amazing vegetarian pizza', :price => 400, :size => 30, :is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/pizza3.jpg'
  end
end
