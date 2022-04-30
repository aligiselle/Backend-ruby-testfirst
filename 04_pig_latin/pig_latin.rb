#write your code here
def translate_word(word)
    if word[0..1] == "qu"
        pig_latin = word[2..(word.length-1)] + word[0..1] + "ay"

    elsif word[0..2] == "sch"
        pig_latin = word[3..(word.length-1)] + word[0..2] + "ay"

    elsif word[1..(word.length-1)].include?("qu")
        pig_latin = word[3..(word.length-1)] + word[0..2] + "ay"
    else
         #if a word begins with a vowel
         if word[0] == "a" || word[0] == "e" || word[0] == "i" || word[0] == "o" || word[0] == "u"
            return word + "ay"
        elsif
            #if a word begins with a constonant and then a vowel
            (word[0] != "a" || word[0] != "e" || word[0] != "i" || word[0] != "o"|| word[0] != "u") &&
            (word[1] == "a" || word[1] == "e" || word[1] == "i" || word[1] == "o" || word[1] == "u")
            pig_latin = word[1..(word.length-1)] + word[0] + "ay"
        elsif
            #if a word begins with two constonants 
            (word[0] != "a" || word[0] != "e" || word[0] != "i" || word[0] != "o"|| word[0] != "u") &&
            (word[1] != "a" || word[1] != "e" || word[1] != "i" || word[1] != "o"|| word[1] != "u") &&
            (word[2] == "a" || word[2] == "e" || word[2] == "i" || word[2] == "o"|| word[2] == "u")
            pig_latin = word[2..(word.length-1)] + word[0..1] + "ay"
        elsif
            #if a word begins with three constonants 
            (word[0] != "a" || word[0] != "e" || word[0] != "i" || word[0] != "o"|| word[0] != "u") &&
            (word[1] != "a" || word[1] != "e" || word[1] != "i" || word[1] != "o"|| word[1] != "u") &&
            (word[2] != "a" || word[2] != "e" || word[2] != "i" || word[2] != "o"|| word[2] != "u")
            pig_latin = word[3..(word.length-1)] + word[0..2] + "ay"
        end
    end
    return pig_latin
end

def translate (str)
    # if the string is empty
    if str.length == 0 || str == " "
        pig_latin = "This is an empty String"
    #if the string is not empty
    else
        str = str.downcase #make string all lowercase
        str = str.split
        pig_latin = str.map {|word|
                translate_word(word)
        }.join(" ") #end of map
    end
    return pig_latin 
end