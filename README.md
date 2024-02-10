# Start db
sudo service postgresql restart
psql --username=freecodecamp --dbname=number_guess

# Dump db
pg_dump -cC --inserts -U freecodecamp number_guess > number_guess.sql

# Rebuild db
psql -U postgres < number_guess.sql