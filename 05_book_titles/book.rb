require 'active_support'
require 'active_support/core_ext'

class Book
    attr_reader :title

    def title=(newTitle)
        @title = titleize(newTitle)
    end

    def titleize title
        dont = ["a", "an", "to", "and", "or", "of", "in", "over", "the", 
            "then", "than"]
        array = title.split(/\W+/)
        i = 0
    
        while (i < array.length)
            if (!dont.include?(array[i]) || i == 0) then
                array[i] = array[i].mb_chars.capitalize
            end
            i += 1
        end
        
    
        string = array.join(' ')
    
        return string
    end
end
