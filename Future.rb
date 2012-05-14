require './Past.rb'

class Future
  
  def initialize(name, engine)
    @name = name
    @past = Past.new(@name, engine)
    @engine = engine
  end
  
  def description
    puts "You've found yourself in Los Angeles, 2030. Way to go #{@name}!"
    puts "Hilariously enough, there's no traffic"
    puts "Do you:"
    puts "1. Get a ride from a flying taxi"
    puts "2. Run through the city aimlessly"
    puts "3. Go back in Time Machine"
    
    
    reaction = @engine.prompt()
    
    if reaction  == "1"
      sleep 1
      flying_taxi
    elsif reaction == "2"
      puts "You were shot and have to crawl back to the Time Machine"
      sleep 1
      @engine.death
    elsif reaction == "3"
      puts "------------TIME WARP-----------------------"
      sleep 2.5
      @past.description
    else
      puts "Not sure what you meant!"  
      puts "-----------------------"
      description
    end
  end
  
  def flying_taxi
    puts "The flying taxi man takes you through DTLA 2030"
    puts "You give him the address to your place on Sunset and La Brea"
    puts "Once you get there, the bill comes to #{rand(10000)} dollars"
    puts "WHOA. That's a lot more than I remember."
    puts "Do you have the cash? [y/n]"
    
    pay = @engine.prompt()
    if pay == "y"
      explore
    elsif pay == "n"
      fight
    else
      puts "what?"
      puts "------"
      flying_taxi
    end
  end
  
  def fight
    puts "He is MAD that you don't have enough money."
    puts "In the future, money is valued more than life"
    puts "This is probably because the rate of population increased faster than inflation"
    puts "You must fight to the death. Which weapon do you choose?"
    puts "1. Knife"
    puts "2. Fists"
    puts "3. Grenade Launcher"
    
    attack = gets.chomp
    if attack == "1"
      puts "You slice his arm, but he's got a gun"
      puts "Outmatched, you flee away in time"
      explore
    elsif attack == "2"
      puts "You snap his neck in time"
      puts "Dope job #{@name}. Free ride!"
      puts "-----------------------------"
      description
    else 
      puts "Not quick enough"
      puts "-----------------"
      @engine.death
    end
  end
  
  def explore
    puts "Once out of the taxi, you start to wander around."
    puts "Nothing is the same. Except Crazy girls is still there"
    puts "Everything is dirty and it's a free for all environment"
    puts "You're a little bored with the future. Check out the past? [y/n]"
    
    explore_LA = gets.chomp
    if explore_LA == "y"
      puts "------------TIME WARP-----------------------"
      sleep 2
      @past.description
    elsif explore_LA == "n"
      puts "Why don't we hit the pool?"
      puts "-------------------------"
      sleep 1
      pool
    else
      puts "what?"
      puts "------"
      explore
    end
    
  end
  
  def pool
  puts "Any pool you look for is too expensive or filled with bugs"
  puts "At least that hasn't changed about LA!"
  puts "You rest for some time, then decide to leave"
  puts "------------TIME WARP-----------------------"
  @past.description
  
  end
  
end

