defmodule Scanner do
  #import Definitions
  #import Rules
  
  def read(path) do
    {:ok, contents} = File.read(path)
    String.to_charlist(contents)
  end

  def identify(path) do
    chars = read(path)
    result = Rules.iterate(chars)
    head = Rules.head()
    tail = Rules.tail()
    Enum.join([head,result,tail],"\n")
  end

  def write(path) do
    binary = identify(path)
    {:ok, file} = File.open "index.html", [:write]
    IO.binwrite file, binary
  end
end
