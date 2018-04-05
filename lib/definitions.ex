defmodule Definitions do
  import Constants
 
  const :arrow, 62
  const :minus, 45
  const :plus, 43
  const :multiply, 42
  const :divide,  47
  const :left_parenthesis, 40
  const :right_parenthesis, 41
  const :left_square_bracket, 91
  const :right_square_bracket, 93
  const :right_angle_bracket, 123
  const :left_angle_bracket, 125
  const :equals, 61
  const :left_arrow, 60
  const :right_arrow, 62
  const :dot, 46
  const :comma, 44
  const :question_mark, 63
  const :percent, 37
  const :parenthesis_left, 40
  const :parenthesis_right, 41
  const :new_line, 10
  const :space, 32
  const :tab, 9

  def digit(char) do
    e = to_string(char)
    (e > "47") and (e < "58")
  end

  def letter(e) do
    (e > 96) and (e < 123)
  end

  def capital(e) do
    (e > 64) and (e < 91)
  end
end
