# Primary
/usr/lib/postgresql/15/bin/initdb -D /tmp/Primary_db

# Secondary
sudo su - postgres -c "rm -rf 15/main/"

