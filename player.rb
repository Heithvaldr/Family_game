class Player 
  attr_reader :x, :y
  def initialize(window)
    @window = window
    @x = 400
    @y = 0
    @icon = Gosu::Image.new(@window, "images/heithvaldr/heithvaldr_front_10.png", true)
    @icon2 = Gosu::Image.new(@window, "images/heithvaldr/heithvaldr_front_11.png", true)
    @flag = 1
  end
  
  def draw
    @icon.draw(@x, @y, 2)
    @icon2.draw(@x, @y, 2)
  end
  
  def update
    if @window.button_down? Gosu::Button::KbDown
      move_down
    end
    if @window.button_down? Gosu::Button::KbUp
      move_up
    end
    if @window.button_down? Gosu::Button::KbLeft
      move_left
    end
    if @window.button_down? Gosu::Button::KbRight
      move_right
    end
  end
  
  def move_down
    @y = @y + 1
    if @y > @window.height - 15
      @y = @window.height - 15
    end
    if @flag == 1
      @icon2.draw(@x, @y, 2)
      @flag = 0
    else
      @icon.draw(@x, @y, 2)
      @flag = 1
    end  
  end
  
  def move_up
    @y = @y - 10
    if @y < 0
      @y = 0
    end
  end
  
  def move_left
    @x = @x - 10
    if @x < 0
      @x = 0
    end
  end
  
  def move_right
    unless @x > @window.width - 25
      @x = @x + 10
    end
  end
end
