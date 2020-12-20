#!/bin/bash
rsync -av --delete /home/elijah/anime/アニメ/ /home/elijah/anime2/アニメ/ /home/elijah/media/Anime/アニメ
ls /home/elijah/anime/アニメ/ > /home/elijah/media/Anime/anime_list
ls /home/elijah/anime2/アニメ/ > /home/elijah/media/Anime/anime2_list
