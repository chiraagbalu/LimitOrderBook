# LimitOrderBook
Implementation of a Limit Order Book in C++

## Big Picture

### Core Operations

Volume at Limit: get volume at limit price

Inside of Book: return best bid, best ask

Direct Update/Initialize: place volumes at specified limit prices

Add: places a bid or ask into a list of orders at a specified price level with a specified size

Cancel: cancels a bid or ask anywhere in the orderbook

Execute: removes the oldest bid or ask from the highest bid price or lowest sell price (Price-Time Priority) 


### Parameters
ticksize: distance between book levels (integers? 0.25? 0.1?)


## Implementation Assumptions
Prices are not sparse: will be used for relatively liquid instruments such as futures contracts

If we had sparse prices, say for an orderbook used for US equities, we may want to consider a different data structure for storing information (balancing binary search trees)


Add/Cancels outpace executions:

Anecdotally, most of the information coming into a book is about the different adds and cancels of liquidity. 

Executions still happen, but its better to optimize for the more frequent activity


Reasonable Volatility:

It seems reasonable to assume that, in a given day, we can expect price to stay within certain % bands of when the day begins. 

This means we don't need to support frequent change of size of amount of levels


Useful Queries: 

It tends to usually be useful to know what the liquidity is at any given price, so this might be something to optimize for. 

Additionally, the current best bid and best ask are useful to know, as that's where executions will take place. 


Price/Time/Qty: 

For the initial implementation we assume that we don't care about specifically which order's liquidity is being removed - so we can just store volume at each price in an array

If we care about price/time priority , we'll want to use a data structure that can preserve order based on time (queue/doubly linked list)


Data Feed Considerations: 

TOOD

## Liquid Orderbook Architecture

pre-allocate vectors of limit objects sorted by price, based on likely range of price movement over some period

we'll store an vector for bids, and an vector for asks

each limit object will just be a float containing the amount of volume, assuming price time priority unimportant

the limit object will also be entered into a map of limit prices to start

for the purposes of price time priority, we'll instead want the limit object to be a doubly linked list of order objects



## Sparce Prices Architecture

bidLimits/askLimits: 

    binary tree sorted by price

    each node in the tree is a Limit object

    Limit objects store Order objects in a doubly-linked list

    separate trees allow for easy query of inside of book, regardless of loss of liquidity at price levels

    the end of the bidLimits tree (highest price) and the start of the askLimits (lowest price) are the inside of the book to be executed from

order: 

    orders are stored in an orderMap, with key being an orderID

    this will allow for constant lookup, add and delete (execute or cancel)

limits:

    limits are stored in a map, with key being limitprice

    this is so we can easily look up the volume at a level

    every limit has a parent

    this allows the query of the inside of the book to remain constant time even when a limit's liquidity gets consumed/deleted

    
    