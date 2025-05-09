INSERT INTO Person (personID, personName, phoneNumber) VALUES
(1, 'Wren', 1001001000),
(2, 'Cigg', 2002002000),
(3, 'Ro', 3003003000),
(4, 'Josh', 4004004000),
(5, 'John', 5005005000),
(6, 'Dev', 6006006000);

INSERT INTO Character (characterID, characterName, playerPersonID, characterLevel, campaignID) VALUES
(1, 'Bob', 1, 1, 1),
(2, 'Billy', 1, 5, 2),
(3, 'Brian', 2, 1, 1),
(4, 'Bulldog', 3, 1, 1),
(5, 'Bobby', 4, 5, 2),
(6, 'Burt', 4, 1, 1);

INSERT INTO Campaign (campaignID, campaignName, DMPersonID) VALUES
(1, 'Pain', 5),
(2, 'The Bees', 6),
(3, 'No one', 3);

INSERT INTO GameSession (sessionID, campaignID, startTime) VALUES
(1, 1, '2025-11-15 07:00:00'),
(2, 1, '2025-11-22 07:00:00'),
(3, 2, '2026-01-22 07:00:00');

INSERT INTO CampaignPlayer (sessionID, playerPersonID) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 4);

INSERT INTO GameSessionPlayer (sessionID, playerPersonID) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 4);