require 'test_helper'

class ListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
	@ptr=lists(:one)
  end

  test "campo task no null"
    assert_not_nil(@ptr.task,'task null')
  end

  test "campo task no vacio"
	assert_not_empty(@ptr.task, 'list without task')
  end

  test "campo title no null"
    assert_not_nil(@ptr.title,'title null')
  end

  test "campo title no vacio"
	assert_not_empty(@ptr.title, 'task without title')
  end

  test "campo completed no null"
    assert_not_nil(@ptr.completed,'completed null')
  end

  test "campo completed no vacio"
	assert_not_empty(@ptr.title, 'task without completed')
  end
end
