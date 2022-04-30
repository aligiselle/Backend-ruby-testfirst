#write your code here
def echo(word)
    return word
end

def shout(word)
    return word.upcase
end

def repeat(word, repeat=2)
        word = "#{word} " * repeat
    return word.rstrip
end

def start_of_word(word,i)
    return word[0..(i-1)]
end

def first_word(sentence)
    return sentence.split.first
end

def titleize(words)
    words.capitalize!  # capitalize the first word in case it is part of the no words array
    little_words = ["and", "or", "the", "over", "to", "the", "a", "but"]
    sentence = words.split(" ").map {|word| 
        if little_words.include?(word) 
            word #if word is in little_words array return the word
        else
            word.capitalize #if word is not in little_words array then capitalize word
        end
    }.join(" ") 
  sentence  # returns the phrase with all the excluded words
end
