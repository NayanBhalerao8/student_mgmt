class Demo < ApplicationRecord
    has_one :sub_demo

    before_create :greeting_message 

    def greeting_message 
        puts "Hey i will run before you create an object "
    end

    # or you can write as this way 
    # before_create  do 
    #     puts "second meee"
    # end
end