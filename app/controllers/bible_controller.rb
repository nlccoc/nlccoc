class BibleController < ApplicationController
  layout "extmain"
  include LogsHelper

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
  
  def searchpost
    
    @keyword = params[:keyword]
    @version = params[:version]
    
    version = {}
    
    version['cnvt'] = 3
    version['cunpts'] = 1
    version['rcuvts'] = 2
    version['kjv'] = 7
    version['niv'] = 8
    #version = {'cnvt' => 3, 'cunpts' => 1, 'rcuvts' => 2, 'kjv' => 7}
    version_id = 1
    book_cnt=0
    @results={}
    @results['keyword']=@keyword
    if !@keyword.nil? && !@keyword.empty? then
      version_id = version[@version]
      
      if version_id == version['kjv'] || version_id == version['niv'] then
        
        @allverses = DbTextSearch::FullText.new(Verse.all.where('version_id = ?', version_id), :unformatted).search(@keyword)
        @results['verse_count'] = @allverses.count
        @results['results']=[]
        @allverses.group_by(&:book).each do |book, results|
          book_cnt = book_cnt+1
          @book = {}
          @book['book']={}
          @book['book']['osis'] = book
          @book['book']['name'] = Book.where(["osis = ? AND version_id = ?", book, version_id]).first.human
          
          #@book['book'] = Book.where(["osis = ?", book]).first.human
          @book['book']['verses']=[]
          verse_count=0
          results.each do |result|
            @verse = Hash.new()
            verse_count = verse_count+1
            #@book['verse'] << {'number': result.verse.to_s.split('.').map{|n| n.to_i}.join(':')}
            @verse['number'] = result.verse.to_s.split('.').map{|n| n.to_i}.join(':')
            @verse['unformatted'] = result.unformatted
            #puts "#{result.verse.to_s.split('.').map{|n| n.to_i}.join(':')} #{result.unformatted}"
            @book['book']['verses'] << @verse
          end
          @book['book']['verse_count'] = verse_count
          @results['results'] << @book
        end 
      else
        if defined?(ActiveRecord::Base)
          config = ActiveRecord::Base.configurations[Rails.env] ||
                      Rails.application.config.database_configuration[Rails.env]
          config['pool'] = ENV['DB_POOL'] || 5
          ActiveRecord::Base.establish_connection(config)
        end
        if [Rails.env] == 'development' then
          @allverses=ActiveRecord::Base.connection.exec_query('SELECT "verses".* FROM "verses" WHERE (version_id = ' + version_id.to_s + ') AND ("verses"."unformatted" COLLATE NOCASE LIKE \'%' + @keyword + '%\')')
        else
          @allverses=ActiveRecord::Base.connection.exec_query('SELECT "verses".* FROM "verses" WHERE (version_id = ' + version_id.to_s + ') AND ("verses"."unformatted" LIKE \'%' + @keyword + '%\')')
        end
        @results['verse_count'] = @allverses.length
        @results['results']=[]
        
        @allverses = @allverses.to_hash.map(&:symbolize_keys)
      
        
        @allverses.group_by{|d| d[:book]}.each do |book, results|
          book_cnt = book_cnt+1
          @book = {}
          @book['book']={}
          @book['book']['osis'] = book
          b = Book.where(["osis = ? AND version_id = ?", book, version_id])
          @book['book']['name'] = b.first.human
          @book['book']['human_abbr'] = b.first.human_abbr
          @book['book']['verses']=[]
          verse_count=0
          results.each do |result|
            verse_count=verse_count+1
            @verse = Hash.new()
            
            #@book['verse'] << {'number': result.verse.to_s.split('.').map{|n| n.to_i}.join(':')}
            @verse['number'] = result[:verse].to_s.split('.').map{|n| n.to_i}.join(':')
            @verse['unformatted'] = result[:unformatted]
            #puts "#{result.verse.to_s.split('.').map{|n| n.to_i}.join(':')} #{result.unformatted}"
            @book['book']['verses'] << @verse
          end
          @book['book']['verse_count'] = verse_count
          @results['results'] << @book
        end
      end
=begin
      @allverses.group_by(&:book).each do |book, results|
        book_cnt = book_cnt+1
        @book = {}
        @book['book']={}
        @book['book']['osis'] = book
        @book['book']['name'] = Book.where(["osis = ? AND version_id = ?", book, version_id]).first.human
        
        #@book['book'] = Book.where(["osis = ?", book]).first.human
        @book['book']['verses']=[]
        results.each do |result|
          @verse = Hash.new()
          
          #@book['verse'] << {'number': result.verse.to_s.split('.').map{|n| n.to_i}.join(':')}
          @verse['number'] = result.verse.to_s.split('.').map{|n| n.to_i}.join(':')
          @verse['unformatted'] = result.unformatted
          #puts "#{result.verse.to_s.split('.').map{|n| n.to_i}.join(':')} #{result.unformatted}"
          @book['book']['verses'] << @verse
        end
 
        @results['results'] << @book
      end 
=end
    end
    
    v = Version.find(version_id)
    Log.info("Bible searched with keyword [#{@results['keyword']}] on [#{v.fullename}], returned with total [#{@results['verse_count'] }] records")
    @results['book_count'] = book_cnt
    respond_to do |format|
      format.html { render :action => 'biblesearch' }
      format.json { render :json => @results.to_json }
    end
  end
  
  def onlinebible
    redirect_to bible_search_path
  end
end
