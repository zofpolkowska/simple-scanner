defmodule Rules do
#  import Definitions

  def stringify(token) do
    cond do
      Definitions.digit(token) ->
        ['<span style = "color:mediumvioletred;">']++ [token] ++['</span>']
      Definitions.letter(token) ->
        ['<span style = "color:darkcyan;">']++ [token] ++['</span>']
      Definitions.capital(token) ->
        ['<span style = "color:darkmagenta;">']++ [token] ++['</span>']                
      token == Definitions.plus ->
        '<span style = "color:darkorange;"> + </span>'
      token == Definitions.minus ->
        '<span style = "color:cyan">-</span>'
      token == Definitions.multiply ->
        '<span style = "color:yellow;">*</span>'
      token == Definitions.divide ->
        '<span style = "color:green;">/</span>'
      token == Definitions.left_parenthesis->
        '<span style = "color:purple;">(</span>'
      token == Definitions.right_parenthesis ->
        '<span style = "color:purple;">)</span>'
      token == Definitions.left_square_bracket ->
        '<span style = "color:orange;">[</span>'
      token == Definitions.left_angle_bracket ->
        '<span style = "color:orange;">}</span>'
      token == Definitions.right_angle_bracket ->
        '<span style = "color:orange;">{</span>'
      token == Definitions.right_square_bracket ->
        '<span style = "color:orange;">]</span>'
      token == Definitions.equals ->
        '<span style = "color:brown;">=</span>'
      token == Definitions.left_arrow ->
        '<span style = "color:cyan;"><</span>'
      token == Definitions.right_arrow ->
        '<span style = "color:cyan;">></span>'
      token == Definitions.dot ->
        '<span style = "color:deeppink;">.</span>'
      token == Definitions.comma ->
        '<span style = "color:darkkhaki;">,</span>'
      token == Definitions.question_mark ->
        '<span style = "color:indianred;">?</span>'
      token == Definitions.space ->
        '&nbsp;'
      token == Definitions.new_line ->
        '<br />'
      true ->
        token
    end
  end

  def iterate([]), do: []
  def iterate([h|t]), do: [stringify(h)] ++ iterate(t)

  def head do
    '<!DOCTYPE html><html><head></head><body>'
  end
  def tail, do: '</body></html>'
  
end  
