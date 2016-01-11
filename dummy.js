var fs = require ('fs')
var stream = fs.createReadStream("C:/Users/Kozitski/Downloads/9d3dfb739fc3-list+of+urls.csv");


var csvStream = csv
    .parse()
    .on("data", function(data){
         console.log(data);
    })
    .on("end", function(){
         console.log("done");
    });

stream.pipe(csvStream);
