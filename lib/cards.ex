defmodule Cards do

  def create_deck do
    # Double quotes is convention
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]
    # List comprehension:
    # Is a map function. Returns new array.
    # Can have multiple comprehensions running at the same time. 
    for suit <- suits, value <- values do 
      "#{value} of #{suit}"
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

  def deal(deck, hand_size) do
    # Whenever possible: delegate to built-in methods 
    # List = linked-list, Tuple = Hash
    # No index notation
    # Pattern matching: mirror structure and amount of elements, set equal to. 
    Enum.split(deck, hand_size)
  end

  def save(deck, filename) do 
    # Use Erlang to communicate with file system
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end 

end
