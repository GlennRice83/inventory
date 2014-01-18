require "spec_helper"

describe "StockManager", pending: true do
  describe "#incoming_transfer" do
    it "validates the state of ShoppingList.list_items"
    it "duplicates each ListItem.item"
    it "assigns each duplicated Item to Item.food.default_container"
  end

  describe "#outgoing_transfer"
end
