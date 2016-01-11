csv = require 'fast-csv'
fs = require 'fs'
list = []
stream = fs.createReadStream "C:/Users/Kozitski/Downloads/9d3dfb739fc3-list+of+urls.csv"
csvStream = csv().on('data',(data)->
  list.push data
  populateArray data
  return
  ).on('end',->

    return
    )
stream.pipe csvStream
readFile=()->
  console.log list
  return
populateArray = (temp)->
  list.push temp
  return
