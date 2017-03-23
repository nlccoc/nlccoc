class LaverneController < ApplicationController
    def index
      @mvideos_lv = Mvideo.where(location_id: 2)
    end  
end
