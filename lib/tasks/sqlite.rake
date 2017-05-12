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

task alterversion: :environment do
  @chapter = Chapter.all
  @chapter.each do |chapter|
    chapter.version_id=1
    chapter.save
  end
end