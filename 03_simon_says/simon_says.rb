require 'active_support'
require 'active_support/core_ext'

def echo word
    return word
end

def shout word
    return word.upcase
end

def repeat word, num = 2
    return ((word + " ") * num).strip
end

def start_of_word word, index
    return word[0..(index - 1)]
end

def first_word phrase
    array = phrase.split(/\W+/)
    return array[0]
end

def titleize title
    dont = ["to", "and", "or", "over", "the", "then", "than"]
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