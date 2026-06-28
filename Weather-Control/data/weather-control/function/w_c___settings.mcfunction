### Start function for dialog window
### Preparing storage and call dialog window

## create temp object in data storage
data merge storage weather:values {temp:{}}

## Copy data from data storage to temp
data modify storage weather:values temp set from storage weather:values data

## Call function with storage temp
function weather-control:w_c__pages/p0 with storage weather:values temp

## Remove temp from data storage
data remove storage weather:values temp
