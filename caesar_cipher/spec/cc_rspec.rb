require 'spec_helper'
require_relative '../caesar_cipher_file/caesar_cipher.rb'

    RSpec.describe 'Nested Array Exercises' do
        describe 'see if it is working' do

            #  > caesar_cipher("What a string!", 5)
            #  => "Bmfy f xywnsl!"
            it 'gets and translates number properly with case' do
              expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
            end
        
            # remove the 'x' from the line below to unskip the test
            it 'gets 0 as value and returns string' do
                expect(caesar_cipher("What a string!", 0)).to eq("What a string!")
            end

            it 'handles large number' do
                expect(caesar_cipher("hellO!", 100)).to eq("dahhK!")
            end
        end
    end
