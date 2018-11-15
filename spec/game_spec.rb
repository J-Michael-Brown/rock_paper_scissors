require('game.rb')
require('rspec')

describe('RPS.wins?') do
  it("returns true if rock is the object and scissors is the argument") do
    game = RPS.new()
    expect(game.wins?('rock','scissors')).to(eq(true))
  end
  it("returns false if rock is the object and paper is the argument") do
    game = RPS.new()
    expect(game.wins?('rock','paper')).to(eq(false))
  end
  it("returns 'draw' if rock is the object and rock is the argument") do
    game = RPS.new()
    expect(game.wins?('rock','rock')).to(eq('draw!'))
  end
  # it("returns 'draw!',true, or false if rock is the object and there is no argument") do
  #   game = RPS.new()
  #   expect(game.wins?('rock')).to(eq('draw!'|true|false))
  # end
end
