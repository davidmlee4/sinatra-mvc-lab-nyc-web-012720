class PigLatinizer
    # attr_reader :text

    # def initialize(text)
    #     @text = text 
    # end

    def piglatinize(string)
        words = string.split(' ')
        words.map {|word|translate(word)}.join(' ')
    end


    def translate(word)
        if word.start_with?('a','e','i','o','u','A','E','I','O','U')
            "#{word}way"
        else
            parts = word.split(/([aeiou].*)/)
            "#{parts[1]}#{parts[0]}ay"
        end
        # s1 = text.split(' ')
        # s1 each do |word| 
        #     if word.first does not equal aeoui 
        #         consonants = word.scan_until(/[aeoui]/)
        #         new_word = word.replace()
        # end
    end


end