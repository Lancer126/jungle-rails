require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'name is nil' do
      @category = Category.find_or_create_by name: 'Apparel'
      @product = @category.products.create({
        name: nil,
        quantity: 10,
        price: 64.99
      })
      expect(@product).to_not be_valid
    end

    it 'price is nil' do
      @category = Category.find_or_create_by name: 'Apparel'
      @product = @category.products.create({
        name: "Wadup",
        quantity: 10,
        price: nil
      })
      expect(@product.price).to be_nil
    end

    it 'quantity is nil' do
      @category = Category.find_or_create_by name: 'Apparel'
      @product = @category.products.create({
        name: "wadup",
        quantity: nil,
        price: 64.99
      })
      expect(@product).to_not be_valid
    end

    it 'category is nil' do
      @category = Category.find_or_create_by name: 'Apparel'
      @product = Product.create({
        name: "Wadup",
        quantity: 10,
        price: 64.99
      })
      expect(@product.category).to be_nil
    end
  end
end