namespace :db do
    namespace :seed do
      task :full_restore => :environment do
        system "rake db:reset"
        system "rake db:migrate"
        system "pg_restore --verbose --clean --no-acl --no-owner -h postgres-db -U postgres -d app_development db/latest-1206.dump"
      end
    end
  end