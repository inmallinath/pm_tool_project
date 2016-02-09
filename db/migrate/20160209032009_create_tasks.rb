class CreateTasks < ActiveRecord::Migration
  def up
    create_table :tasks do |t|
      t.string :title
      t.datetime :due_date

      t.timestamps null: false
    end
  end

  def down
    drop_table :tasks
  end
end
