def caesar_cipher(s, number)
    new_s = ""
    s.each_char do |letter|
        x = letter.ord
        # check if letter is valid (if it is an actual letter)
        if (x >= 65 && x <= 90) || (x >= 97 && x <= 122)
            # check if its upcase or lowercase
            if letter == letter.upcase
                # start adding value by a loop (using number) {for loop iterating through number}
                for index in 0...number
                     # if the value is 90, go back to 65
                    if x == 90
                        x = 65
                    else
                        x += 1
                    end

                end
            else
                # start adding value by a loop (using number) {for loop iterating through number}
                for i in 0...number
                     # if the value is 122, go back to 97
                    if x == 122
                        x = 97
                    else
                        x += 1
                    end
                end
            end
        end
        new_s.concat(x.chr)
    end
    new_s
end


