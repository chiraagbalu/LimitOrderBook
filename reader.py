from calendar import c
import pandas as pd
import numpy as np
import yaml
from datetime import datetime
import time
from collections import defaultdict
import atexit

from websock_py.client import FtxWebsocketClient
from rest_py import client_us as restclient

import os
from dotenv import load_dotenv

load_dotenv()

# load in api keys
API_KEY = os.getenv('API_KEY')
SECRET_KEY = os.getenv('SECRET_KEY')

# connect to rest client
rest = restclient.FtxClient(api_key=API_KEY, api_secret=SECRET_KEY)

# connect to websocket
sock = FtxWebsocketClient()
sock.connect()


with open('book_data.txt', 'a') as book_info:
    while True:
        time.sleep(1)
        bids = sock.get_orderbook('ETH/USD')['bids'][0:11]
        asks = sock.get_orderbook('ETH/USD')['asks'][0:11]
        book_info.write(f'bids, {bids}\n')
        book_info.write(f'asks, {asks}\n')
