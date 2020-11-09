class QuestionsController < ApplicationController
    def ask
    end 

    def answer   
        @search = params[:answer]
        if @search == "I am going to work"
            @reply = "Great!"
        elsif @search.include? "?"
            @reply = "Silly question, get dressed and go to work!"
        elsif @search.include? "bastard"
            @reply = "I couldn't agree more"
        else 
            @reply = "I don't care, get dressed and go to work!"
        end 
    end

end



# @replies = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]  
# if search.present?
#     @replies = @replies.select{ |name| name == search }
# else 
#     @replies
# end 