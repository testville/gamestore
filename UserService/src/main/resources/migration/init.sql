create table user_profile
(
    id            serial
        primary key,
    user_name    varchar not null
        unique,
    user_login    varchar not null
        unique,
    user_password text    not null,
    registration_date date not null,
    previous_guest_id int
);
create table guest_profile
(
    id            serial
        primary key
);










