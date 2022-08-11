create table Musicians (
ssn char(10),
name char(30),
primary key (ssn));

create table Instruments (
instrid char(10),
dname char(30),
mkey char(5),
primary key (instrid));

create table Plays (
ssn char(10),
instrid integer,
primary key (ssn, instrid),
foreign key (ssn) references Musicians (ssn),
foreign key (instrid) references Instruments (instrid));

create table SongsAppears (
songid integer,
author char(30),
title char(30),
albumIdentifier integer,
primary key (songid),
foreign key (albumIdentifier) references AlbumProducer (albumIdentifier));

create table TelephoneHome (
phone char(11),
address char(30),
primary key (phone),
foreign key (address) references Place (address));

create table Lives (
ssn char(10),
phone char(11),
foreign key (phone) references TelephoneHome (phone),
foreign key (ssn) references Musicians (ssn));

create table Place (
address char(30),
primary key (address));

create table Perform (
songid integer,
ssn char(10),
primary key (ssn, songid),
foreign key (songid) references Songs (songid),
foreign key (ssn) references Musicians (ssn));

create table AlbumProducer (
albumIdentifier integer not null,
ssn char(10) not null,
copyrightDate date,
speed integer,
title char(30),
primary key (albumIdentifier),
foreign key (ssn) references Musicians (ssn));

