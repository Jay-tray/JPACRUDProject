## JPACRUDProject
Week 9 Homework Project 
## Overview
The purpose of this project was to create a database that is deployed through MySQLWorkbench. The database is manipulated in an application using basic CRUD concpets. The user has the option to add, update, delete and search for a butterfly using several various fields. Upon accessing the page the user is introduced to the options availablie. 
<img width="1033" alt="Screen Shot 2022-12-18 at 4 50 09 PM" src="https://user-images.githubusercontent.com/113144309/208326011-64ca5fdc-1bc1-49b4-a958-11ebecd50fa8.png">

After selecting the desired option the user is vectored to .jsp pages that allow for information manipulation. In the event that the user requests an ID that is not in the database they are informed and then given the option to return to a home menu to start a new query. Only the ID, DATE, CITY and STATE are required for operation within the program. Additional fields are based on users choice. 
<img width="634" alt="Update Page" src="https://user-images.githubusercontent.com/113144309/208325980-bafd5bc0-491b-44f1-b6b5-07f5a544e6a1.png">

### Technologies Used
- GitHub
- SpringToolSuite
- Terminal
- MAMP 
- SQL
- MySQLWorkbench
- CSS
- Bootstrap
- HTML
- Gradle
- JUNIT testing

## Lessons Learned
- Understanding of the contoller class and how the relationship between jsps operates became much more clear to me through doing this project. Leaving behind the ModelAndView and using the String return method was significantly easier for me to digest as I was writing code. Further practice implementing .addAttribute and other features will help speed up future projects.
- Up until this projet I had very minimal interaction with CSS and Bootstrap. Getting to start using basic css detailing was very fun and I really felt like I was able to display the intent of my project.
- This was my first time also using JUNIT tests is a meaningful way. I am becoming more comfortable with writing them and understanding how they can assist in error control and time management.
- MySQLWorkbench proved to be a very valuable addition to the toolbox. I uploaded a .csv file with an inital database and played around with building out my table. Its functionality is great compared to simply using the terminal. Although I still returned to the terminal to confirm DB add, updates and deletes were successful. 

## How to Run
This program needs compliled to run it on localhost or EC2. Download the repository to a local directory. Open Spring Tool Suite or your IDE of choice and import the project. After it is compiled click run and follow prompts. 

## Future goals
- Displaying imageUrls that users have uploaded
- Interactive map using Lat/Longs to show patterns of movement 
