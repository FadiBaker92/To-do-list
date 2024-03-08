class Todo 
  attr_accessor :todo

  def initialize(todo)
    @todo = todo
  end

end


class ToDoList
  
  def initialize
    @todo_list = []
  end

  def run
    loop do 
      puts "Welcome to the todo list CLI"
      puts "1 - Add to list of Todos"
      puts "2 - View list of Todos"
      puts "3 - Exit"
      print "Choose an option: "
      user_choice = gets.chomp.to_i
      case user_choice
      when 1
        add_to_list
      when 2 
        view_list
      when 3
         puts "Goodbye!"
         break
      else
        puts "Invalid option"
      end

    end
  end

  def add_to_list
    print "Add todo: "
    todo = gets.chomp
    newtodo = Todo.new(todo)
    @todo_list.push(newtodo)
    puts "Todo added successfully"
  end

  def view_list
    if @todo_list == []
      puts "Your list is empty"
      puts ""
    else
      puts "Your Todos List"
      @todo_list.each {|todo| puts todo}

    end

    
  end


end

viewtodolist = ToDoList.new
viewtodolist.run
