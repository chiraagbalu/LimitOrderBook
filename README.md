# LimitOrderBook
Implementation of a Limit Order Book in C++

## Core Operations
Add: places a bid or offer into a list of orders at a specified price level with a specified size
Cancel: cancels a bid or offer anywhere in the orderbook
Execute: removes a bid or offer from the highest bid price or lowest sell price - removes the oldest order (Price-Time Priority)

## Other Operations
NBBO?: get best bid and offer, as well as sizes
vol_btwn(A,B): get total volume between prices A and B
orderpos(id): get orderid in book

