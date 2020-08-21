var express = require('express');
var router = express.Router();


/* GET users listing. */ 
router.get('/', function(req, res, next) {
	connection.query('SELECT e.id,p.first_name,p.last_name,e.designation,d.name as department,p.email,p.contact_number,DATE_FORMAT(e.date_of_joining,"%Y-%m-%d") as date_of_joining ,DATE_FORMAT(p.dob,"%Y-%m-%d") as dob from employees e join personal_details p on e.personal_details_id = p.id join departments d on e.department_id = d.id', function (error, results, fields) {
	  	if(error){
	  		res.send(JSON.stringify({"status": 500, "error": error, "response": null})); 
	  		//If there is error, we send the error in the error section with 500 status
	  	} else {
			  console.log(results);
  			res.send(results);
  			//If there is no error, all is good and response is 200OK.
	  	}
  	});
});

//TODO

router.post('/add', function(req, res, next) {
	
	var r = req.body;
	console.log(r);
	connection.query('insert into personal_details(first_name,last_name,email,contact_number,dob) values('
	+'"'+r.first_name+'",'
	+'"'+r.last_name+'",'
	+'"'+r.email+'",'
	+r.contact_number+','
	+'"'+r.dob+'"'
	+')', function (error, results, fields) {
	  	if(error){
	  		res.send(JSON.stringify({"status": 500, "error": error, "response": null})); 
	  		//If there is error, we send the error in the error section with 500 status
	  	} else {
			console.log(results);
			connection.query('insert into employees(personal_details_id,designation,department_id,date_of_joining) values('
			+results.insertId+','
			+'"'+r.designation+'",'
			+r.department+','
			+'"'+r.date_of_joining+'"'
			+')', function (error, results, fields) {
			if(error){
				res.send(JSON.stringify({"status": 500, "error": error, "response": null})); 
				//If there is error, we send the error in the error section with 500 status
			} else {
			  
  				res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
				//If there is no error, all is good and response is 200OK.
			}
		});
  			
	  	}
  	});
});

router.post('/delete', function(req, res, next) {
	
	var r = req.body;
	console.log(r);
	connection.query('delete from employees where id ='+
	r.id, function (error, results, fields) {
	  	if(error){
	  		res.send(JSON.stringify({"status": 500, "error": error, "response": null})); 
	  		//If there is error, we send the error in the error section with 500 status
	  	} else {
			res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
			
		  }
  	});
});

router.post('/edit', function(req, res, next) {
	var r = req.body;
	console.log(r);
	connection.query('update employees set '
			+'designation="'+r.designation+'",'
			+'department_id='+r.department+','
			+'date_of_joining=date("'+r.date_of_joining+'")'
			+' where id = '+r.id, function (error, results, fields) {
	
	  	if(error){
	  		res.send(JSON.stringify({"status": 500, "error": error, "response": null})); 
	  		//If there is error, we send the error in the error section with 500 status
	  	} else {
			console.log(results);
			connection.query('update personal_details '
	+'set first_name = "'+r.first_name+'",'
	+'last_name="'+r.last_name+'",'
	+'email="'+r.email+'",contact_number='
	+r.contact_number+',dob='
	+'date("'+r.dob+'")'
	+' where id=(select personal_details_id from employees where id = '+r.id+')', function (error, results, fields) {
			if(error){
				res.send(JSON.stringify({"status": 500, "error": error, "response": null})); 
				//If there is error, we send the error in the error section with 500 status
			} else {
			  
  				res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
				//If there is no error, all is good and response is 200OK.
			}
		});
  			
	  	}
  	});
});

module.exports = router;
