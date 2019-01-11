# Automatic-Question-Paper-Generator-App
![alt text](https://github.com/DEEZZU/Automatic-Question-Paper-Generator-App/blob/master/line.png "title")

### About the Project 

Education; being the most versatile and developing sector; it requires technological boom more than of the other sectors. Everyday new concepts and ideas are released in the market; the learners not only need to learn them but practice them as well. A system like AQPG allows the learner to apply the knowledge (s)he has gained so far. Our system divides users in three categories : 
1. Admin : the one with the ability to control and minpulate the whole system
2. Instructor :  the experts and the people with ability to generate paper
3. Learner : the people who want to take up practice


### Requirements

1. Adding​ ​and​ ​Deleting​ ​Users,​ ​Courses,​ ​Questions​ ​and​ ​related information​ ​into​ ​database
2. Modifying​ ​the​ ​same​ ​three​ ​entities​ ​by​ ​the​ ​Admin.
3. Generating​ ​Question​ ​Paper​ ​on​ ​a​ ​Click​ ​By​ ​Instructor.
4. Practice​ ​Sessions​ ​for​ ​Learner.
5. Viewing​ ​the​ ​profile​ ​and​ ​editing​ ​content​ ​by​ ​the​ ​three​ ​type​ ​of​ ​Users.
6. Verifying​ ​the​ ​user​ ​upon​ ​login​ ​password entry,​ ​etc.​ ​are​ ​there.

### A look

![alt text](https://github.com/DEEZZU/Automatic-Question-Paper-Generator-App/blob/master/cover.png "cover page")

## Using this Repo

Enviroment required :
1. JDK 8 or above
2. Tomcat or any other server. 
3. Netbeans or Eclipse 
4. MySQL

Run :
1. Make sure to setup your server and download the whole project. 
2. Make the change in Automatic-Question-Paper-Generator-App/PROJO/src/java/aqpg/Provider.java file and set the connection url, user name and password
3. Make tables accordingly //(details below)
4. Run the whole project using netbeans/eclipse. 

### Tables

The tables u will need in the sql for running the project.

##### USER_2

`login_name` | pass | type
--- | --- | ---
string | string | varchar(1)
foreign key + primary key | - | - 

##### USER_1

`login_name` | fname | sname | lname | address | cno | gender
--- | --- | --- | --- | --- | --- | --- 
string | string | string | string | string | string | varchar(1)
primary key | - | - | - | - | - | - 

##### QUES_2

`sno` | ques_stmt | ans | `c_sid` | level | option 1 | option 2 | option 3 | option 4 
--- | --- | --- | --- | --- | --- | --- | --- | --- 
string | string | varchar(1) |  string | integer | string | string | string | string 
primary key | - | - | foreign key | - |- |- |- |- 

##### COURSES

`c_sid` | cname
--- | --- 
string | string 
primary key | - 
