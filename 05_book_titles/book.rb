class Book
# write your code here
    attr_accessor :title

    def title
        @title.capitalize!
        exceptions = ["and", "the", "a", "an", "in", "at", "on", "of", "to"]
        book_title = @title.split(" ").map {|str| 
            if str == "i"
                str.capitalize
            elsif exceptions.include?(str)
                str
            else
                str.capitalize
            end
         }.join(" ")
         return book_title
    end
    
end
