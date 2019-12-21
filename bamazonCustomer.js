var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host:"localhost",
    port:3306,
    user:"root",
    password:"Gbaln1mysql!",
    database:"bamazon"
});

connection.connect(function(err){
    if(err) throw err;
    console.log("Connection Successful!");
    makeTable();
});

var makeTable = function(){
    connection.query("SELECT * FROM products", function(err,res){
        for(var i=0; i<res.length; i++){
            console.log(
            res[i].itemid+" || " +
            res[i].product_name+" || " +
            res[i].department_name+" || " +
            res[i].price+" || " +
            res[i].stock_quantity+"\n");
        };
    });
};