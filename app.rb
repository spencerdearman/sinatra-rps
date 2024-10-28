require "sinatra"
require "sinatra/reloader"

# 0 == rock, 1 == paper, 2 == scissors

get("/") do
  erb(:home)
end

def move_name(move)
  if move == 0
    return "rock"
  elsif move == 1
    return "paper"
  else
    return "scissors"
  end
end

get("/rock") do
  our_move = 0
  @our_move_text = move_name(our_move)
  their_move = rand(3)
  @their_move_text = move_name(their_move)
  if their_move == 1
    @outcome = 1
  elsif their_move == 0
    @outcome = -1
  else
   @outcome = 0
  end

  erb(:game)
end

get("/paper") do
  our_move = 1
  @our_move_text = move_name(our_move)
  their_move = rand(3)
  @their_move_text = move_name(their_move)
  if their_move == 0
    @outcome = 0
  elsif their_move == 2
    @outcome = 1
  else
   @outcome = -1
  end

  erb(:game)
end

get("/scissors") do
  our_move = 2
  @our_move_text = move_name(our_move)
  their_move = rand(3)
  @their_move_text = move_name(their_move)
  if their_move == 0
    @outcome = 1
  elsif their_move == 1
    @outcome = 0
  else
   @outcome = -1
  end

  erb(:game)
end
