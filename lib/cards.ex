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

  def load(filename) do
    # Parentheses are optional when providing arguments
    # Avoid if statements, use case statements instead
    # Prepend underscore to variables you don't want to use, but need for the sake of pattern matching.
    # If left hand side is hard-coded, right side same spot value must match.
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term binary
      {:error, _reason} -> "That file does not exist"
    end
  end
  
end
