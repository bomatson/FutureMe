require './Future.rb'

class Past
  def initialize(name, engine)
    @name = name
    @engine = engine
  end
    
  def description
    puts "You've found yourself in Los Angeles, 1988"
    puts "#{@name}, you are a little confused."
    puts "Everyone is wearing dumb clothes and it looks dirtier than before"
    puts "Want to head back to the future? [y/n]"
    
    reaction = @engine.prompt()
    
    if reaction == "y"
      puts "Let's DO IT!!!!"
      puts "------------TIME WARP-----------------------"
      sleep 2
      @engine.play(:level)
    elsif reaction == "n"
      puts "Fine, but I want to write this part of the story later"
      puts "So for now, you end up back in the Time Machine"
      puts "------------TIME WARP-----------------------"
      sleep 3
      @engine.play(:level)
    else 
      puts "what?"
      puts "------"
      description
    end
  
  end
  
end

