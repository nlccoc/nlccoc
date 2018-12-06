desc 'Find verse in CUNPTS'

task setverseforcunpts: :environment do
  v = Version.find(1)
  Verse.where('id >= 0 and id <=31021').each do |verse|
    verse.version = v
    verse.save
  end
end

task setannotationsforcunpts: :environment do
  v = Version.find(1)
  Annotation.where('id > 0 and id <=1013').each do |annotation|
    annotation.version = v
    annotation.save
  end
end

task setbooksforcunpts: :environment do
  v = Version.find(1)
  Book.where('number > 0 and number <=66').each do |book|
    book.version = v
    book.save
  end
end

task setchaptersforcunpts: :environment do
  v = Version.find(1)
  Chapter.where('id > 0 and id <=1189').each do |chapter|
    chapter.version = v
    chapter.save
  end
end


