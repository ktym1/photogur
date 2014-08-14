# The key is that string interpolation will automatically cause Ruby to call a "to_s" method.
# In this example, we just so have to have an explicit "to_s" example, which is why the "I called to_s" 
# is printed out

# class Game
  
#   def to_s
#   	puts "I called to_s!"  
#   end

#   def description
#      "#{self}"
#   end

# end

# g = Game.new
# g.description

# In this example, string interpolating the object prints the object and number. 
# Ruby is still calling a to_s method in the background with string interpolation. 
# But doesn't print any strings because we are not interpolating strings.
class Game 
 
  def description
     puts "#{self}" "#{5}"
  end

end

g = Game.new
g.description

