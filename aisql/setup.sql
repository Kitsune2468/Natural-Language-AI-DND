create table Person (
    personID integer primary key,
    personName varchar(20) not null,
    phoneNumber integer not null
);

create table Character (
    characterID integer primary key,
    characterName varchar(20) not null,
    playerPersonID integer not null,
    characterLevel integer not null,
    campaignID int,
    foreign key (playerPersonID) references Person (personID),
    foreign key (campaignID) references Campaign (campaignID)
);

create table Campaign (
    campaignID integer primary key,
    campaignName varchar(20) not null,
    DMPersonID integer not null,
    foreign key (DMPersonID) references Person (personID)
);

create table GameSession (
    sessionID integer primary key,
    campaignID integer not null,
    DMPersonID integer not null,
    foreign key (campaignID) references Campaign (campaignID)
);

create table GameSessionPlayer (
    sessionID integer not null,
    playerPersonID integer not null,
    foreign key (sessionID) references GameSession (sessionID),
    foreign key (playerPersonID) references Person (personID),
    primary key (sessionID, playerPersonID)
);
create table CampaignPlayer (
    campaignID integer not null,
    playerPersonID integer not null,
    foreign key (campaignID) references Campaign (sessionID),
    foreign key (playerPersonID) references Person (personID),
    primary key (campaignID, playerPersonID)
);

