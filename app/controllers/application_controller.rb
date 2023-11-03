class ApplicationController < ActionController::Base
    before_action :print_message 
    after_action :print_message_after
    private 
    def print_message 
        puts "hi i am inherited before action print message"
    end

    def print_message_after 
        puts "=============hi i am after action"
    end
end
