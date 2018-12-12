docker exec -it nlccoc rake db:setup
docker exec -it nlccoc rake db:migrate
docker exec -it nlccoc pg_restore --verbose --clean --no-acl --no-owner -h postgres-db -U postgres -d app_development db/latest-1206.dump