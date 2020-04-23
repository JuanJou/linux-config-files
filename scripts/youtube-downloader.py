#!/usr/bin/python3
import pafy
import requests
import datetime
from env import api


def plunk_videos(item):
    return item['contentDetails']

channel = api.get('channels',id='UCDxnXI11xwSlmYaBZ7Q9jlw',part='id,contentDetails')
playid = channel['items'][0]['contentDetails']['relatedPlaylists']['uploads']
playlist = api.get('playlistItems',playlistId=playid, part='id,contentDetails')
videos = map(plunk_videos,playlist['items'])

for video in videos:
    video_date = datetime.datetime.strptime(video['videoPublishedAt'],'%Y-%m-%dT%H:%M:%S.%fZ')
    print(video_date < datetime.datetime.now())
    myvid = pafy.new('https://www.youtube.com/watch?v='+ video['videoId']);
    best = myvid.getbest();
    best.download(filepath="/home/juanjou/Fisica/videos/",quiet=False);

exit()

