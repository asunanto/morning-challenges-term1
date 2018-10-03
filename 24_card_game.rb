<<<<<<< HEAD
class Card
    include Comparable
    attr_accessor :suit, :rank
    def initialize(suit, rank)
        # Create a new card
        @suit = suit
        @rank = rank
        @rank_face = ""
    end
    
    def face_card?
        # Is the card a face card (above 10)?
        return @rank > 10
    end 
    
    def to_s
        # Return human readable card
        case @rank
        when 1
            @rank_face = "Ace"
        when 11
            @rank_face = "Jack"
        when 12
            @rank_face = "Queen"
        when 13
            @rank_face = "King"
        end
        @suit = @suit.capitalize
        # if self.face_card? || self.rank == 1
        #     return "#{@rank_face} of #{@suit}" 
        # else
        #     return "#{@rank} of #{@suit}"
        # end
        return self.face_card? || self.rank == 1 ? "#{@rank_face} of #{@suit}" : "#{@rank} of #{@suit}"
    end
    
    def <=>(other)
        @rank <=> other.rank
    end
end
=======
 class Card
  include Comparable
  
  attr_accessor :suit, :rank, :rank_names 
  
  def initialize(suit, rank)
    # Create a new card
    @suit = suit
    @rank = rank
    @rank_names = {
      '1': 'Ace',
      '11': 'Jack',
      '12': 'Queen',
      '13': 'King'
    }    
  end

  def face_card?
    # Is the card a face card (above 10)?
    @rank > 10
  end

  def <=>(other)
    @rank <=> other.rank
  end
  
  def to_s
    # Return human readable card
    rank = @rank_names[@rank.to_s.to_sym] || @rank.to_s
    suit = @suit.to_s
    suit[0] = suit[0].upcase
    "#{rank} of #{suit}"
  end
end
>>>>>>> d785f49315f21edd5329234273e9431f9c199eea
