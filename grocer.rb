require 'pry'
require 'pp'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  # Find a specific item using its name inside of the collection array
  item_counter_index = 0
  while item_counter_index < collection.length do
    if collection[item_counter_index][:item] == name
      return collection[item_counter_index] # Will return the elemenet and EXIT THE LOOP AND METHOD
    end
    item_counter_index += 1
  end
  nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  # Will return AoH [{:item => "AVOCADO", :price => 3.00, :clearance => true, :count => 2}]
  # Item: {:item => "AVOCADO", :price => 3.00, :clearance => true, :count => 2}
  new_cart = []
  item_counter_index = 0
  while item_counter_index < cart.length do
    new_cart_item = find_item_by_name_in_collection(cart[item_counter_index][:item], new_cart)
    if new_cart_item != nil
      new_cart_item[:count] += 1
    else
      new_cart_item = {
        :item => cart[item_counter_index][:counter],
        :price => cart[item_counter_index][:price],
        :clearance => cart[item_counter_index][:clearance],
        :count => 1
      }
      new_cart << new_cart_item
    end
  item_counter_index += 1
  end
  new_cart
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
