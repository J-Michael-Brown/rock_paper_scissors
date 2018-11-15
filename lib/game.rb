require('pry')

class RPS
  def initialize()
    game_state = Hash.new()
    game_state.store(['rock','rock'],'tie')
    game_state.store(['rock','paper'],'lose')
    game_state.store(['rock','scissors'],'win')
    game_state.store(['paper','rock'],'win')
    game_state.store(['paper','paper'],'tie')
    game_state.store(['paper','scissors'],'lose')
    game_state.store(['scissors','rock'],'lose')
    game_state.store(['scissors','paper'],'win')
    game_state.store(['scissors','scissors'],'tie')
    @game_state = game_state
    @prng = Random.new
  end


  def wins?(p1,p2=@prng.rand(1..3))
    if p2 == 1
      p2 = 'rock'
    elsif p2 == 2
      p2 = 'paper'
    elsif p2 == 3
      p2 = 'scissors'
    end
    @current_game = [p1,p2]
    state = @game_state.fetch(@current_game)
    if (state == 'win')
      return true
    elsif state == 'tie'
      return 'draw!'
    elsif state == 'lose'
      return false
    else
      return 'something went wrong'
    end
  end
end


# def game
