#!/bin/bash

docker run -d -p 4040:4040 -v $HOME/Music:/var/media/music -v $HOME/Videos:/var/media/videos arubislander/madsonic
