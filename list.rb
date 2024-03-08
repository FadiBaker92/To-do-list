class Workouts 
  attr_accessor :todos

  def initialize(workout, reps)
    @workout = workout
    @reps = reps
  end

end


class WorkoutList
  
  def initialize
    @workout_list = []
  end

  def run
    loop do 
      puts "Welcome to the Workout tracker CLI"
      puts "1 - Add Workout"
      puts "2 - View your Workout"
      puts "3 - Exit"
      print "Choose from options: "
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
    print "Add workout: "
    workout = gets.chomp
    print "How many reps: "
    reps = gets.chomp
    work = Workouts.new(workout, reps)
    @workout_list.push(work)
    puts "Workout added successfully"
    puts ""
  end

  def view_list
    if @workouot_list == []
      puts "No workout"
      puts ""
    else
      puts "Your Workout for the day: "
      @workout_list.each do 
      end

    end

    
  end


end

viewworkoutlist = WorkoutList.new
viewworkoutlist.run
