require 'test_helper'

class WorkTest < ActiveSupport::TestCase
  setup do
    @work = works(:one)
  end

  test "Work can get user responsable" do
    u = User.create(name: "alex")
    w = u.works.build(description: "algo")
    assert_equal u.name, w.user.name
  end

  test "Scope without_item must have only inventory_id nil" do
    values = Work.without_item.map(&:inventory_id)
    assert_not_includes(values, !nil )
  end

end
