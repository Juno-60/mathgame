class Player

  attr_accessor :player_id, :player_lives

  def initialize(player_id)
    @player_id = player_id
    @player_lives = 3
  end

end