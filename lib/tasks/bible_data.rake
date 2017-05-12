namespace :db do
  namespace :seed do
    task :verse => :environment do
      filename = "db/bible/verses.seeds.rb"
      puts "Seeding #{filename}..."
      load(filename) if File.exist?(filename)
    end
    
    task :chapter => :environment do
      filename = "db/bible/chapters.seeds.rb"
      puts "Seeding #{filename}..."
      load(filename) if File.exist?(filename)
    end
    
    task :book => :environment do
      filename = "db/bible/books.seeds.rb"
      puts "Seeding #{filename}..."
      load(filename) if File.exist?(filename)
    end
    
    task :annotation => :environment do
      filename = "db/bible/annotations.seeds.rb"
      puts "Seeding #{filename}..."
      load(filename) if File.exist?(filename)
    end
    task :version => :environment do
      filename = "db/bible/versions.seeds.rb"
      puts "Seeding #{filename}..."
      load(filename) if File.exist?(filename)
    end
  end
end