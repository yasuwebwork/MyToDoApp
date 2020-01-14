require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  test "should get tasks" do
    get tasks_url
    assert_response :success, 'Faild to tasks'
  end
  
  test "should get show" do
    get tasks_show_path(tasks(:one))
    assert_response :success ,'Faild to show' 
  end
  
  test "should get done" do
    get tasks_done_path(tasks(:one).id)
    #assert_generates(tasks_done_path,{ id: '1', controller: 'tasks', action: 'done'})
    #assert_response :success ,'Faild to done'
  end
end
