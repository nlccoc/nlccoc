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


task add_abbr: :environment do
  abbr = ['創', '出', '利', '民', '申', '書', '士', '得', '撒上', '撒下', '王上', '王下', '代上', '代下', '拉', '尼', '斯', '伯', '詩', '箴', '傳', '歌', '賽', '耶', '哀', '結', '但', '何', '珥', '摩', '俄', '拿', '彌', '鴻', '哈', '番', '該', '亞', '瑪', '太', '可', '路', '約', '徒', '羅', '林前', '林後', '加', '弗', '腓', '西', '帖前', '帖後', '提前', '提後', '多', '門', '來', '雅', '彼前', '彼後', '約一', '約二', '約三', '猶', '啟']
  books = Book.where('version_id = 2')
  p books.count
  p abbr.length
  books.each_with_index do |book, index|
    p book.human + ' => ' + abbr[index]
    book.human_abbr = abbr[index]
    book.save
  end
end