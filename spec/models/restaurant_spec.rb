require 'rails_helper'

RSpec.describe Restaurant do 
  it { should have_many(:products) } # shoulda_matchers testing 
  context 'testing total of products' do    
    it 'return total of products for a specific restaurant' do 
      # Arrange 
        restaurant = FactoryBot.create(:restaurant)
        product1 = FactoryBot.create(:product, restaurant: restaurant)
        product1 = FactoryBot.create(:product, restaurant: restaurant)
      # Act 

      # Assert
      expect(restaurant.total_of_products).to eq 2 # total_of_products esta no model
    end 
  end
end