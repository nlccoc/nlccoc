class DownloadController < ApplicationController
  def sermon
    logger.debug('*******************')
    redirect_to params[:file]
  end
end