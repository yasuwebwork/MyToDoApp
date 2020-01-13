class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|

      t.text :state
      t.text :task
      t.text :detail
      t.date :limit_date
      t.date :end_date
    end
  end
end