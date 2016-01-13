csv = require 'fast-csv'
fs = require 'fs'
cheerio = require 'cheerio'
request = require 'request'
list = []
stream = fs.createReadStream "C:/Users/ekozi/Downloads/9d3dfb739fc3-list+of+urls.csv"
csvStream = csv().on('data',(data,err)->
  if err
    throw err
  else
    list.push data

  return
  ).on('end',->
    readFile(list);
    return
    )
stream.pipe csvStream
readFile=(list)->
  list.forEach (data)->
    request data[0], (err,response,html)->
      if err 
        console.log data[0]
      else
        $ = cheerio.load html
        console.log this


