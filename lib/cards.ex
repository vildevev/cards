defmodule Cards do

  def create_deck do
    # Double quotes is convention
    ["Ace", "Two", "Three"]
  end

  def shuffle(deck) do
    # No need to import Edum module
    # Data structures are immutable 
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    # Question mark implies that the function return a boolean
    Enum.member?(deck, card)
  end

end
