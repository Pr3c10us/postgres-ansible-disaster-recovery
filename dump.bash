# Primary
 sudo sed -i 's/#archive_mode = off/archive_mode = on/' /etc/postgresql/15/main/postgresql.conf
 sudo sed -i "s/#archive_command = ''/archive_command = 'cp %p \/logs\/archive\/%f'/" /etc/postgresql/15/main/postgresql.conf
 sudo systemctl restart postgresql
 sudo -i -u postgres psql -c "CREATE ROLE repuser WITH REPLICATION PASSWORD 'repuser12345' LOGIN;"
 sudo sed -i "98i host    replication     repuser         51.144.74.36/32         scram-sha-256" /etc/postgresql/15/main/pg_hba.conf
 sudo systemctl reload postgresql


# Secondary
sudo su - postgres -c "rm -rf 15/main/"

