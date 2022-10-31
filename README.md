# Twitch 
a project of a personal twitch database of streamers that I watch
data used from both twitch.tv and twitchinsights.net

## Relational Schema
![Relations](https://user-images.githubusercontent.com/96393286/199062748-c062a418-89e9-4dab-9ace-0516d9d14446.png)

### Entities
Streamer (streamerID, username, followers, Created_On, broadcaster_type)
broadcasts (broadcastID, streamerID, number_views, video_length)
clips (clipID, broadcastID, number_views, video_length, clip_by)
