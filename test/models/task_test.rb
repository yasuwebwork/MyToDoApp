require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  
  test "tasks save" do
    task = Task.new({
      id:'99999',
      state: 'done',
      task: 'test1',
      detail: '詳細1',
      limit_date: '2020/01/01',
      end_date: '2020/01/02',
      })
    assert task.save, 'Faild to save'
  end
end
