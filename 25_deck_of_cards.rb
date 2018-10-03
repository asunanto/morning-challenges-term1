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
<<<<<<< HEAD
  attr_accessor :cards
  def initialize
    # Create a new array of cards
    # @deck = Array.new(13){Array.new(4)}
    # @suits = ['S','H','C','D']
    # for i in 1..13
    #   for j in 0...@suits.length
    #     @deck[i-1][j] = i.to_s + @suits[j]
    #   end
    # end
    # @cards = @deck.flatten
    @cards = []
    for i in 1..13
      @cards << Card.new(:spades, i)
      @cards << Card.new(:hearts, i)
      @cards << Card.new(:clubs, i)
      @cards << Card.new(:diamonds, i)
    end
  end
  
  def shuffle
    # Shuffle the remaining cards
    @cards = @cards.shuffle
  end

  def draw(n=1)
    @cards.pop(n)
  end

  def count
    @cards.length
  end
=======
    attr_accessor :cards
    
    def initialize
        # Create a new array of cards
        @cards = []
        for suit in [:spades, :diamonds, :clubs, :hearts] do
            for rank in 1..13 do
                @cards << Card.new(suit, rank)
            end
        end
    end
    
    def shuffle
        # Shuffle the remaining cards
        @cards.shuffle!
    end
    
    def draw(n=1)
        # Draw (remove) n cards from the deck. Return those cards
        @cards.pop(n)
    end
    
    def count
        # How many cards are left?
        @cards.length
    end
>>>>>>> d785f49315f21edd5329234273e9431f9c199eea
end


