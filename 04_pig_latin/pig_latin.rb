require 'active_support'
require 'active_support/core_ext'

def translate phrase
    array = phrase.split(' ')
    cut = 0
    hold = ''
    i = 0
    j = 0

    while (i < array.length)
        word = array[i].split('')

        if (!is_vowel(word[0])) then
            j = 0
            while (j < word.length)
                if (is_vowel(word[j])) then
                    if (word[j].eql? "u" and
                        word[j-1].eql? "q") then
                        cut = j + 1
                        break
                    else
                        cut = (j)
                        break
                    end
                end
                j += 1
            end

            hold = word.slice!(0, cut)
            word.push(hold.join(''))
        end

        word.push("ay")
        array[i] = word.join('')

        i += 1
    end

    array = array.join(' ')
    return array
end

def is_vowel letter
    if (letter.eql? "a" or
        letter.eql? "e" or
        letter.eql? "i" or
        letter.eql? "o" or
        letter.eql? "u")
        return true
    end

    return false
end

translate("the quick brown fox")