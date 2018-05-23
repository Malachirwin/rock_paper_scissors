require "rspec"
require "rock_paper_scissors"
describe('win?') do
  it("returns true if rock is the object and scissors is the argument") do
    game = RPS.new()
    expect(game.wins?("rock", "scissors")).to(eq(true))
  end
  it("returns true if rock is the object and scissors is the argument") do
    game = RPS.new()
    expect(game.wins?("scissors", "paper")).to(eq(true))
  end
  it("returns true if rock is the object and scissors is the argument") do
    game = RPS.new()
    expect(game.wins?("paper", "rock")).to(eq(true))
  end
end
