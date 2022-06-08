1.Created a simple friends list website where each user can login  and store their friends information and perform actions like edit,delete,update his details.

*(tried to use carrierwave,minimagic gem for photo uploading and resising but was not working)

2.Used devise gem for user authenication setup and sqlite3 database 

3.using scaffold command for friends and associating friends and user tables by adding 'userid' column in friends table so that a foreignkey relation establishes between tables.


4.Now deploying it using Docker
  i)Install all dependcies
  ii)first copying gem files and then running bundle install
  iii)Opening the port 3000 for connections
 
 
 5.Now dockerfile is built so now image can be built by running command
 
 6.After image is built it can be run from our localhost,one thing is we have to bind localhost port to server port by mentioning -p 3000:3000 in docker run command
