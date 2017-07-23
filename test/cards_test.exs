defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  # Doctests: automatically generated from doc examples.
  # Case tests: assert(true), refute(false) keyword next to expression that evaluates to a boolean.
  # Test behaviors that you care about in document.

  test "create_deck makes 20 cards" do
  	deck_length = length(Cards.create_deck)
  	assert deck_length == 20
  end

  test "shuffling a deck randomizes it" do
  	deck = Cards.create_deck
  	assert deck != Cards.shuffle(deck)
  end

end
