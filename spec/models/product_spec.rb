require 'rails_helper'

describe Product do

  context "when the product has comments"

    before do
      @product = FactoryGirl.create(:product)
      @user = FactoryGirl.create(:user)
      @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
      @product.comments.create!(rating: 3, user: @user, body: "Nice bike")
      @product.comments.create!(rating: 5, user: @user, body: "Great bike!")
    end

    it "returns the average ratings of all comments" do
      #"Expect the product's average rating to equal 3"
      #(The average of 1 3 and 5 should be 3)
      expect(@product.average_rating).to eq 3
    end

    it "is an invalid product" do
      #A new product is created with no name, only a description
      # Products require a name
      expect(Product.new(description: "Red mountain bike")).not_to be_valid
    end

  end


