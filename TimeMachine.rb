require './Future.rb'

class TimeMachine
  attr_accessor :level, :name
  
  def initialize(args)
     @name = args
     @level = Future.new(@name, self) 
     
     puts "Welcome to the Time Machine #{@name}"
  end
  
  def death
    puts "Well that's it, you got stuck in 1820 and have to farm. Good luck"
    Process.exit()  
  end
  
  def prompt()
    puts "What's your answer, kind sir??"
    gets.chomp
  end
  
  def play(level)
    while true
      @level.description 
    end
  end
end

game = TimeMachine.new("Bobby")
game.play(:level)