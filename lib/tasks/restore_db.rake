namespace :db do
    namespace :seed do
      task :full_restore => :environment do
        system "rake db:reset"
        system "rake db:migrate"
        system "pg_restore --verbose --clean --no-acl --no-owner -h postgres-db -U postgres -d app_development db/latest.dump"
      end
    end
  end