**PSQL**

2022.02.16.

1. db: artwork db-név// artworkadmin db-login // ArtWork db-password
2. módosítottam a psql config fájlt, hogy tudjon artworkadmin belogolni lokálisan a psql-re:
a) psql -t -P format=unaligned -c 'SHOW hba_file; // get location of hba_file
    # /etc/postgresql/10/main/pg_hba.conf **(edited)**
    sudo nano /etc/postgresql/10/main/pg_hba.conf

b) Add new user with password login right on localhost
   # Database administrative login by Unix domain socket 
   local   all  postgres    peer // default user with login rights without password
   local   all  artworkadmin    md5 // new user with login rights with password
   // save **(edited)**

c) indítottam újra a psql service-t:
   sudo systemctl restart postgresql

3. megcsináltam adatbázist, felhasználót a beállítottam jogosultságokat:
   create database artwork; 
   create role artworkadmin with password 'ArtWork'; 
   alter role artworkadmin login; alter role artworkadmin superuser; 
   grant connect on database atwork to artworkadmin; 
   grant usage on schema public to artworkadmin; 

4. manuálisan lefutottam az init.sql scriptet a repóból - azaz kimásoltam minden egyik parancsot és egyesével lefutottam, hogy lásam, mi sikerült:
   CREATE EXTENSION IF NOT EXISTS "uuid-ossp"; 
   
   CREATE TABLE image ( 
       id uuid DEFAULT uuid_generate_v4(), 
       category VARCHAR NOT NULL, 
       content BYTEA NOT NULL, 
       extension VARCHAR NOT NULL, 
       PRIMARY KEY (id) 
       ); 
       
    GRANT ALL PRIVILEGES ON TABLE image TO artworkadmin;
