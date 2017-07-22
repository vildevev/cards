defmodule Cards do

  def create_deck do
    # Double quotes is convention
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]
    # List comprehension:
    # Is a map function. Returns new array.
    for suit <- suits do 
      suit
    end
  end

  def shuffle(deck) do
    # No need to import Edum module
    # Data structures are immutable 
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    # Question mark implies that the function return a boolean
    # Function isn't called on array as in OO Programming. Is instead a 'master' function that can take the object as one of the arguments.
    Enum.member?(deck, card)
  end

end
