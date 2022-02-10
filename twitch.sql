-- CREATED BY: 6AMRUN
-- FEBRUARY 08, 2022

-- CREATE DATABASE
CREATE DATABASE Twitch;

-- CREATING TABLES
CREATE TABLE streamer (streamerID int PRIMARY KEY, username varchar(255), followers int, Created_On date, broadcaster_type varchar (255));
CREATE TABLE broadcasts (broadcastID int PRIMARY KEY, streamerID int, number_views int, video_length time NOT NULL, FOREIGN KEY (streamerID) REFERENCES streamer(streamerID));
CREATE TABLE clips (clipID varchar(255) PRIMARY KEY, broadcastID int, number_views int, video_length time NOT NULL, clip_by varchar(255), FOREIGN KEY (broadcastID) REFERENCES broadcasts(broadcastID));

-- INSERTING INTO streamer
INSERT INTO streamer VALUES (95711949, 'aziakiara', 55963, '2015-07-10', 'partner');
INSERT INTO streamer VALUES (49073484, 'KrisMF', 6928, '2013-09-16', 'affiliate');
INSERT INTO streamer VALUES (66682416, 'holykray', 2111, '2014-07-19', 'affiliate');
INSERT INTO streamer VALUES (93468390, '404LEXI', 2482, '2015-06-14', 'affiliate');

