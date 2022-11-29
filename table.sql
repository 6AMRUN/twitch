-- CREATED BY: 6AMRUN
-- FEBRUARY 08, 2022

DROP TABLE streamer;
DROP TABLE broadcasts;
DROP TABLE clips;

-- CREATE DATABASE
CREATE DATABASE Twitch;

-- CREATING TABLES
CREATE TABLE streamer (streamerID int PRIMARY KEY, username varchar(255), followers int, Created_On date, broadcaster_type varchar (255));
CREATE TABLE broadcasts (broadcastID int PRIMARY KEY, streamerID int, number_views int, video_length time NOT NULL, FOREIGN KEY (streamerID) REFERENCES streamer(streamerID));
CREATE TABLE clips (clipID varchar(255) PRIMARY KEY, broadcastID int, number_views int, video_length time NOT NULL, clip_by varchar(255), FOREIGN KEY (broadcastID) REFERENCES broadcasts(broadcastID));
