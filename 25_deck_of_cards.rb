# Create a Deck class that uses the Card class you created last time.
#
# Deck functionality
# A deck has a public attribute:
#
# cards: array of remaining cards in the deck.
#
# ...and three public methods:
#
# count(): count of remaining cards in the deck.
#
# shuffle(): randomize the order of the remaining cards in the deck.
#
# draw(n): remove the last n cards from the deck and return them in an array.
#
# Upon initialization, a deck is filled with 52 cards (13 from each of 4 suits).

require_relative '24_card_game'

class Deck
  def initialize
    # Create a new array of cards
    @deck = Array.new(13){Array.new(4)}
    @suits = ['S','H','C','D']
    for i in 1..13
      for j in 0...@suits.length
        @deck[i-1][j] = i.to_s + @suits[j]
      end
    end
    @deck = @deck.flatten
  end
  
  def shuffle
    # Shuffle the remaining cards
    @deck.shuffle
  end

  def draw(n=1)
    @deck.pop(n)
  end

  def count
    @deck.length
  end
end


