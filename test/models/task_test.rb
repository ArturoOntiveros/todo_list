require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
	@ptr=tasks(:one)
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
  
  test 'deleting tasks on cascade' do
    @ptr.destroy
    assert_empty Task.where(list:@list.title)
  end

end
