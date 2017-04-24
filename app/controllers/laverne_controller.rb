class LaverneController < ApplicationController
    def index
      @header_bg='transparent'
      @mvideos_lv = Mvideo.where(location_id: 2).order(date: :desc).limit(4)
    end  
end
