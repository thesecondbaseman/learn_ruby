class Book
    attr_accessor :title

    def title
        words = @title.split
        conjunctions = ['and', 'but', 'although']
        prepositions = ['the', 'in', 'of', 'a', 'an']

        words.length.times do |i|
            if (not (conjunctions.include? words[i] or prepositions.include? words[i])) || i == 0
                words[i] = words[i].capitalize
            end
        end

        words.join " "
    end
end