class TasksController < ApplicationController
  
  def index
    @tasks = Task.order('limit_date').all
    @status = ['todo', 'doing', 'done']
  end
  
  def show
    id      = params[:id]
    @task   = Task.find(id)
    @status = ['todo', 'doing', 'done']
  end
  
  def store
    id   = params[:id]
    task = Task.find(id)
    task.task       = params[:task]
    task.state      = params[:state]
    task.limit_date = params[:limit_date]
    task.save
    redirect_to '/tasks', notice: 'タスクを作成しました。' #indexページへ
  end

  def done
    id   = params[:id]
    task = Task.find(id)

    task.state      = 'done';
    task.limit_date = '2020-01-01'
    task.save
    redirect_to '/tasks', notice: 'タスクを更新しました。'
  end
end