require 'test_helper'

class CartTest < ActiveSupport::TestCase
  fixtures :products

  test "should create a new line item when adding a new product" do
    cart = Cart.create

    cart.add_product(products(:ruby).id, products(:ruby).price).save!
    assert_equal cart.line_items.size, 1
    assert_equal cart.line_items[0].quantity, 1
    assert_equal cart.total_price, products(:ruby).price
  end

  test "should create two line items when adding two different products" do
      cart = Cart.create

      cart.add_product(products(:ruby).id, products(:ruby).price).save!
      cart.add_product(products(:rails).id, products(:rails).price).save!
      assert_equal cart.line_items.size, 2
      assert_equal cart.line_items[0].quantity, 1
      assert_equal cart.line_items[1].quantity, 1
      assert_equal cart.total_price, products(:ruby).price + products(:rails).price
  end

end
