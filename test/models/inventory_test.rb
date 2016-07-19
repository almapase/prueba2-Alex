require 'test_helper'

class InventoryTest < ActiveSupport::TestCase
  setup do
    @inventory = inventories(:one)
  end

  test "Serial number must be unique" do
    inventory2 = Inventory.create(serial_number: 1, size:1, description: "algo")
    assert_not inventory2.valid?
  end

  test "size must greater than cero" do
    @inventory.size = 0
    assert_not @inventory.valid?
  end

  test "Record serial number afert destroy" do
    text = "La pieza con serial #{@inventory.serial_number} ha sido borrada"
    @inventory.destroy
    assert_equal text, Record.last.description
  end


end
