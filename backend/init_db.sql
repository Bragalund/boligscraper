create schema api;

create table api.boligannonse (
    id serial primary key,
    adresse text not null,
    postnummer text not null,
    bynavn text not null,
    solgt boolean,
    totalpris integer,
    prisantydning integer,
    fellesgjeld integer,
    kvadratmeter integer,
    antall_soverom integer,
    boligtype text 
);


-------- roles  

set password_encryption = 'scram-sha-256';

create role db_read_write_user noinherit login password 'supersecret';
grant usage on schema api to db_read_write_user;
grant select, insert, update, delete on api.boligannonse to db_read_write_user;

