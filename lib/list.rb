require_relative 'todo'


class Todo_list

  nm = Todo.new

  puts "what task would you like to complete? >"
  tsk = gets.chomp
  nm.task = tsk


  nm.save

  puts "your info is task: #{nm.task} completed: #{nm.completed}"

  puts "#{Todo.select('task').where(completed: "no")}"



end
