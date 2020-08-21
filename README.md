# employeemanagement

1. Clone this repo
2. To load the dependencies,in this project's folder, run command- npm install
3. Import the SQL dump file(host - 'localhost',username - 'root',password-'') and setup the schema.
4. Then run the command - node app.js
5. Test the below APIs
5.a. Fetch all employees
  url - http://localhost:4001/api/v1/employees
  method - GET
5.b. Add employee
  url - http://localhost:4001/api/v1/employees/add
  method - POST
  body - 
  first_name:Poonam155
  last_name:Thakur
  designation:Software Engineer
  department:1
  email:p@t6.com
  contact_number:9191919191
  date_of_joining:2019-07-18
  dob:1991-03-11
5.c. Edit employee
  url - http://localhost:4001/api/v1/employees/edit
  method - POST
  body -
  id:2
  first_name:Poonam155
  last_name:Thakur
  designation:Software Engineer
  department:1
  email:p@t6.com
  contact_number:9191919191
  date_of_joining:2019-07-18
  dob:1991-03-11
5.d. http://localhost:4001/api/v1/employees/delete
  url - http://localhost:4001/api/v1/employees/delete
  method - POST
  body - 
  id:2
