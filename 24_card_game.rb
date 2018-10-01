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

        queen_of_spades = Card.new(:spades, 12)
        ten_of_clubs = Card.new(:clubs, 10)

puts queen_of_spades >ten_of_clubs
 