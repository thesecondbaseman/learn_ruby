#write your code here

def echo statement
    statement
end

def shout statement
    statement.upcase
end

def repeat statement, number = 2
    ((statement + " ") * number).rstrip 
end

def start_of_word word, end_trim
    word[0..(end_trim - 1)]
end

def first_word statement
    (statement.split)[0]
end

def titleize statement
    statement = statement.split
    index = 0

    statement.each do |word|
        if word.length > 4 or index == 0 or (index + 1) == statement.length
            statement[index] = word.capitalize
        end
        index = index + 1
    end

    statement.join " "
end