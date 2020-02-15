#write your code here

def translate statement
  vowels = ['a', 'e', 'i', 'o', 'u']
  statement = statement.split

  index = 0
  statement.each do |word|
    capitalized = word[0] == word[0].upcase
    word[0] = word[0].downcase
    if vowels.include? word[0]
      statement[index] = word + "ay"
    else
      index_of_first_vowel = word.index /[aeiou]/
      if word[index_of_first_vowel - 1] == 'q'
        index_of_first_vowel = index_of_first_vowel + 1
      end
      statement[index] = word[index_of_first_vowel..(word.length + 1)] + word[0..index_of_first_vowel - 1] + "ay"
    end
    if capitalized
      statement[index][0] = statement[index][0].capitalize
    end
    index = index + 1 
  end

  statement.join " "
end