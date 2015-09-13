require_relative 'todo'


class Todo_list



  def get_task
  nm = Todo.new

  puts "what task would you like to add to the list? >"
  tsk = gets.chomp
  nm.task = tsk
  nm.save

  puts "your task is #{nm.task} completed: #{nm.completed}"
  end

  def todo_list

  list = Todo.select("id", "task").where(completed: "no")
  list.each do |list|
  puts "Todo #{list.id} and task #{list.task}"
    end
  end

end
