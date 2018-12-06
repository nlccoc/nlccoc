require "sqlite3"

task readbooksrcuvts: :environment do
  SQLite3::Database.new( "db/rcuvts.sqlite3" ) do |db|
    db.execute( "select * from books" ) do |row|
      p row[1]
      Book.create(:osis => row[1], :human => row[2], :chapters=>row[3], :version_id => 2)
    end
  end

end

task readversesrcuvts: :environment do
  SQLite3::Database.new( "db/rcuvts.sqlite3" ) do |db|
    p 'open'
    db.execute( "select * from verses" ) do |row|
      p row
      Verse.create(:book => row[1], :verse => row[2], :unformatted => row[3], :version_id => 2)
      #Book.create(:osis => row[1], :human => row[2], :chapters=>row[3], :version_id => 2)
    end
  end
end

task readchapterscunpts: :environment do
  SQLite3::Database.new( "db/cunpts.sqlite3" ) do |db|
    p 'open'
    db.execute( "select * from chapters" ) do |row|
      p row
      Chapter.create(:reference_osis => row[1], :reference_human => row[2], :content => row[3], :previous_reference_osis => row[4], :previous_reference_human => row[5], :next_reference_osis => row[6], :next_reference_human => row[7], :version_id => 1)
      #Verse.create(:book => row[1], :verse => row[2], :unformatted => row[3], :version_id => 2)
      #Book.create(:osis => row[1], :human => row[2], :chapters=>row[3], :version_id => 2)
    end
  end
end

task readchaptersrcuvts: :environment do
  SQLite3::Database.new( "db/rcuvts.sqlite3" ) do |db|
    db.execute( "select * from chapters" ) do |row|
      p row
      Chapter.create(:reference_osis => row[1], :reference_human => row[2], :content => row[3], :previous_reference_osis => row[4], :previous_reference_human => row[5], :next_reference_osis => row[6], :next_reference_human => row[7], :version_id => 2)
      #Verse.create(:book => row[1], :verse => row[2], :unformatted => row[3], :version_id => 2)
      #Book.create(:osis => row[1], :human => row[2], :chapters=>row[3], :version_id => 2)
    end
  end
end

task :readbibleversion, [:version, :versionid] => [:environment] do |t, args|
  filename = 'db/' + args[:version] + '.sqlite3'
  p 'open ' + filename + ', version_id = ' + args[:versionid].to_s
  
  SQLite3::Database.new(filename) do |db|
    count = 0
    p 'Creating [Books]...'
    db.execute( "select * from books" ) do |row|
      count = count + 1
      Book.create(:osis => row[1], :human => row[2], :chapters=>row[3], :version_id => args[:versionid])
    end
    p '[Book] ' + count.to_s + ' created.'
  
    count = 0
    p 'Creating [Annotations]...'
    db.execute( "select * from annotations" ) do |row|
      count = count + 1
      Annotation.create(:osis => row[1], :link => row[2], :content=>row[3], :version_id => args[:versionid])
    end
    p '[Annotations] ' + count.to_s + ' created.'
    count = 0
    p 'Creating [Chapters]...'
    db.execute( "select * from chapters" ) do |row|
      count = count + 1
      Chapter.create(:reference_osis => row[1], :reference_human => row[2], :content => row[3], :previous_reference_osis => row[4], :previous_reference_human => row[5], :next_reference_osis => row[6], :next_reference_human => row[7], :version_id => args[:versionid])
    end
    p '[Chapters] ' + count.to_s + ' created.'
    
    count = 0
    p 'Creating [Verses]...'
    db.execute( "select * from verses" ) do |row|
      if (count%1000)==0 then
        p '[Verse] ' + count.to_s + ' created'
      end
      count = count + 1
      Verse.create(:book => row[1], :verse => row[2], :unformatted => row[3], :version_id => args[:versionid])
    end
    p '[Verses] ' + count.to_s + ' created.'
  end
end

task alterversionid: :environment do
  #@book = Book.where('id > 132 AND id < 300')
  #@book.each do |book|
  #  book.version_id=3
  #  book.save
  #end
  
  #@chapter = Chapter.where('id > 2378 AND id < 4000')
  #@chapter.each do |chapter|
  #  p chapter
  #  chapter.version_id=3
  #  chapter.save
  #end
  
  #@verse = Verse.where('version_id IS NULL')
  #@verse.each do |verse|
  #  verse.version_id=3
  #  p verse
  #  verse.save
  #end
end

task createcnvt: :environment do
  Version.create(:id => 9, 
                  :fullename => 'Modern English Version', 
                  :copyright => '', 
                  :contact_url => 'http://www.biblesociety.org.uk/', 
                  :name => 'MEV', 
                  :url => '', 
                  :date =>'20151216')
end
task addnumber: :environment do
  @book = Book.where('number IS NULL')
  
  @book.each do |book|
    p book
  end
end