class CreateTodoTable < ActiveRecord::Migration
    def change
    create_table(:todos) do |table|
    table.string :task
    table.string :completed, default: 'no'
    table.timestamps
    end
  end
