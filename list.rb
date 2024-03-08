class Workouts 
  attr_accessor :workout , :reps

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
      puts "1 - Add workout"
      puts "2 - View your workouts"
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
    if @workout_list == []
      puts "No workout saved"
      puts ""
    else
      puts "Your workout for the day: "
      @workout_list.each do |workout|
        puts "#{workout.reps} x #{workout.workout}"
      end

    end

    
  end


end

viewworkoutlist = WorkoutList.new
viewworkoutlist.run
