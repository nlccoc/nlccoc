class LaverneController < ApplicationController
    def index
<<<<<<< HEAD
=======
      @mvideos_lv = Mvideo.where(location_id: 2).order(date: :desc)
>>>>>>> a404e15b0c87fe70e825ae6a87290e7b142fd6d4
    end  
end
