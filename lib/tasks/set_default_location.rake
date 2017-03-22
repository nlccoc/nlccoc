
desc 'Set all location to Irvine'

task set_to_irvine: :environment do
  Mvideo.all.each do |mvideo|
    mvideo.location_id=1
    mvideo.save
  end
end