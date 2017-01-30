Position = Struct.new(:x, :y, :dir)

class BeefyRobotSimulator
  # Your code here
  def initialize
    find_start(get_input)
    @position = Position.new(0,0,"NORTH")
  end

  def get_input
    gets.strip
  end

  def find_start(input)
    puts input
    @commands = input.split(" ")
    @command = ''
    until(@command.upcase == "PLACE")
      @command = @commands.shift
    end
    return find_start(input) if(@commands[0] !~ /\d,\d,[a-zA-Z]+/)
    place(@commands.shift)
    parse(@commands)
  end

  def parse(input)

  end

  def place(str)
    x, y, f = str.split(',')
    x, y = x.to_i, y.to_i
    puts x, y
    @position.x = x
  end
end

simulator = BeefyRobotSimulator.new
