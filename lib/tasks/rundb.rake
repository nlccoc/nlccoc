desc 'Find verse in CUNPTS'


task testdb: :environment do
  @results=[]
  @allverses = DbTextSearch::FullText.new(Verse.all, :unformatted).search('耶穌')
  @allverses.group_by(&:book).each do |book, results|
    @book = {}
    @book['book'] = Book.where(["osis = ?", book]).first.human
    
    #@book['book'] = Book.where(["osis = ?", book]).first.human
    @book['verse']=[]
    results.each do |result|
      @verse = Hash.new()
      
      #@book['verse'] << {'number': result.verse.to_s.split('.').map{|n| n.to_i}.join(':')}
      @verse['number'] = result.verse.to_s.split('.').map{|n| n.to_i}.join(':')
      @verse['unformatted'] = result.unformatted
      #puts "#{result.verse.to_s.split('.').map{|n| n.to_i}.join(':')} #{result.unformatted}"
      @book['verse'] << @verse
    end
    p @book
    @results << @book
    
  end
  
end