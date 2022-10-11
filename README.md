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


### Add/Cancels outpace executions:

Anecdotally, most of the information coming into a book is about the different adds and cancels of liquidity. 

Executions still happen, but its better to optimize for the more frequent activity


### Reasonable Volatility:

It seems reasonable to assume that, in a given day, we can expect price to stay within certain % bands of when the day begins. 

This means we don't need to support frequent change of size of amount of levels


### Useful Queries: 

It tends to usually be useful to know what the liquidity is at any given price, so this might be something to optimize for. 

Additionally, the current best bid and best ask are useful to know, as that's where executions will take place. 


### Price/Time/Qty: 

For the initial implementation we assume that we don't care about specifically which order's liquidity is being removed - so we can just store volume at each price in an array

If we care about price/time priority , we'll want to use a data structure that can preserve order based on time (queue/doubly linked list)


### Data Feed Considerations: 

TOOD

## Architecture

assuming a liquid book, we can pre-allocate vectors of limit objects sorted by price, based on likely range of price movement over some period

if we have a sparse book, we might instead want to use a binary tree sorted by price, with a balancing mechanism to maintain O(logM) operations

we'll store an vector for bids, and an vector for asks

each limit object will just be a float containing the amount of volume, assuming price time priority unimportant

the limit object will also be entered into a map of limit prices to start

in the case of the tree of limits, we'll want each limit to have a parent, such that we can quickly update the best bid/offer if a limit is deleted

for the purposes of price time priority, we'll instead want the limit object to be a doubly linked list of order objects

we'll also want to store orders in a order map, keyed by ID for easy canceling, etc