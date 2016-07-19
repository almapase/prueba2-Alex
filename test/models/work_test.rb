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

end
