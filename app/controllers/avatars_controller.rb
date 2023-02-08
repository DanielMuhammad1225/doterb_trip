class AvatarsController < ApplicationController


    def Index
        @avatar = Avatar.all
    end

    def new 
        @avatar = Avatar.new
    end

    def edit
    end

    def create
        @avatar = Avatar.new(event_params)
        @avatar.save
    end

end
