class Window < Gosu::Window
  def initialize
    super(800,800,false)
    @player = Player.new(self)
    @background = Gosu::Image.new(self, "images/backgrounds/grass.png", true)
  end

  def update
    run_game
  end
  
  def run_game
    @player.update
  end
  
  def draw
    @background.draw(0, 0, 1)
    @player.draw
  end
end
