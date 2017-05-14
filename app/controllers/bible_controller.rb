class BibleController < ApplicationController
  layout "extmain"

  def bchapter
    @book = params[:book]
    @chapter = params[:chapter]
    @versoin = params[:version]
    bookname = @book+'.'+@chapter
    version_id=1
    if @version.nil? || @version == 'cun' then
      version_id=1
    else
      version_id=2
    end
    
    logger.debug bookname
    @bible = Chapter.where('lower(reference_osis) = ? AND version_id = ?', bookname, version_id)
    
    logger.debug(@bible.inspect)
    respond_to do |format|
      format.html { render :action => 'bible' }
      format.json { render :json => @bible.to_json }
    end
  end
end
