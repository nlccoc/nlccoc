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

task createverse1: :environment do
  filename = "db/bible/verse.1.seeds.rb"
  puts "Seeding #{filename}..."
  load(filename) if File.exist?(filename)
end
task createverse2: :environment do
  filename = "db/bible/verse.2.seeds.rb"
  puts "Seeding #{filename}..."
  load(filename) if File.exist?(filename)
end
task createverse3: :environment do
  filename = "db/bible/verse.3.seeds.rb"
  puts "Seeding #{filename}..."
  load(filename) if File.exist?(filename)
end
task createverse4: :environment do
  filename = "db/bible/verse.4.seeds.rb"
  puts "Seeding #{filename}..."
  load(filename) if File.exist?(filename)
end

task createverse5: :environment do
  filename = "db/bible/verse.5.seeds.rb"
  puts "Seeding #{filename}..."
  load(filename) if File.exist?(filename)
end
task createverse6: :environment do
  filename = "db/bible/verse.6.seeds.rb"
  puts "Seeding #{filename}..."
  load(filename) if File.exist?(filename)
end
task createverse7: :environment do
  filename = "db/bible/verse.7.seeds.rb"
  puts "Seeding #{filename}..."
  load(filename) if File.exist?(filename)
end
task createverse8: :environment do
  filename = "db/bible/verse.8.seeds.rb"
  puts "Seeding #{filename}..."
  load(filename) if File.exist?(filename)
end
task createverse9: :environment do
  filename = "db/bible/verse.9.seeds.rb"
  puts "Seeding #{filename}..."
  load(filename) if File.exist?(filename)
end