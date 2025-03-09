# reserve
A group project created for MIS335 lecture

Project Title : Réservé

Team: Şevval Dere, M. Enes Döke, Ayşenur Sayar

I. INTRODUCTION

I.1 The System Environment
- System users: Students, Landlords (café or study owners), Admins.

- The nature of the system:
The problem’s main point is not being able to find a place to study. Especially near the universities or in libraries. Our system helps students to find accessible places near their locations while allowing landlords to enter the information of their properties to the system. Also, students are able to rate or comment the locations that they have visited earlier so that other students can be informed by their fellows.
The complexity of the system:
-	Accurate and up-to-date data collection, management, and analysis are crucial for the system’s effectiveness. This includes mapping study spots, categorizing them, and ensuring real-time availability updates, which adds layers of complexity.
-	Engaging with landlords to understand their needs, and with students to ensure the platform meets their expectations, involves managing relationships with multiple stakeholders, adding to the complexity.

- Entities and corresponding relationships in our system:

•	Entities are composed of student, landlord, and location, and the booking system.
•	Entity ‘student’ has student ID, name and surname, email, password.
•	Booking entity has booking ID, student ID, location ID, booking date, booking hours.
•	Landlord includes landlord ID, name and surname, password, location ID (which location he/she owns)  
•	Location contains location ID, landlord ID, total seats, number of seats available, average price level, photos of location, location facilities (Wi-Fi, number of sockets, accessibility, giveaways)
•	The relationship between the Landlord and Location should be drawn by the location ID, which is one-to-many where a landlord may own one or more property. 
•	The relationship between the Student and the Booking should be represented by the student ID, which is one-to-one where any student can book from zero to one location. 
•	The relationship between the Location and the Booking should be drawn by the location ID.
 

Bottlenecks:
•	Limited availability of study spots, especially near universities and in libraries, could significantly bottleneck our platform's utility and attractiveness to students.
•	Students should see instant information about places to study all the time. This will be based on information sharing between students and landlords. Therefore, the real struggles will be building trustworthy databases and controlling the data flow.
•	Lack of real-time updates on location availability and conditions may result in students wasting time traveling to locations that are fully occupied or not suitable for studying.
•	Attracting students and landlords to use the platform initially, especially before a significant user base is established, can be a bottleneck.
Constraints:
•	The focus on Istanbul, particularly near universities, may limit the platform’s reach and scalability to other regions.
•	Effective participation of landlords is crucial for listing a diverse range of study spots. Their reluctance or inability to list properties or update information could constrain the platform's offerings.
•	Monetizing the platform through paid features without alienating users or compromising on the main objectives could be a significant constraint.

•	Define the significance of the problem and the necessity of a database management system.

This problem can be solved via using a database system to store cafes or libraries’ features so that students can find trusted and beautiful study corners. Database is required so that we can create reservations throughout the app. Also, we need to identify places to study in the city and their owner’s information so that we can create a meaningful financial concept and trusted app. It all depends on the database system’s functionalities and trustworthiness. 

I.2 Mission of Project
The mission: Creating an efficient platform for students to find and reserve suitable study places, and landlords can list their properties effectively.
Main goals of this platform: 
•	The user convenience is simplified way of finding, viewing and booking study locations for students. 
•	Another goal of this platform is to make connections between new study places’ landlords and the students which will create a better environment for student-friendly cities.
To achieve these two main goals our sub-goals are:
•	First, we need to locate each study and cafe near to universities in İstanbul. We will use maps and students’ information to locate new places. 
•	Some studies have a subscriber fee or some of their main goal is to provide a more talkative environment. We will differ each café and study to clusters to create more valuable info.  
•	To understand what Landlord’s need, we will have appointments. They can see how they can increase their visibility and build new relationships to increase their financial status.
•	The next sub-goal is how we can attract students to use our platform. We will provide seeable features and paid features so that the platform will make money while maintaining our main goal and student will get used to with our app.




Objectives:
•	Creating a user-friendly platform that makes the process of finding a place to study more basic and to book for these places to ensure less anxious students in İstanbul.
•	To encourage connections between landlords offering new study places and students, thereby improving student-friendly and more sustainable environments in the city.
•	Facilitate connections between students and landlords of new study places to foster a more student-friendly urban environment.



 I.3 Scope of Project
This system will be structured around various entities and relationships to ensure seamless interaction between students, landlords, and the administrative staff with respect to the available study locations.

Included:
 
Entities: 
•	Users: Representing students looking for study places.
•	Admins: Responsible for managing the platform, editing location, user, and landlord info.
•	Landlords: Owners of properties listed as study places.
•	Locations: Properties listed on the platform for reservation.

Relationships:
•	Users can view the status and properties (e.g., number of seats, pricing, perks) of Locations.
•	Users can make single reservations/bookings at Locations.
•	Landlords and Admins can add new Locations to the platform.
•	Each Location is uniquely identified by a Location ID and can have multiple properties.
•	Each Landlord may be associated with many Locations.
•	Each User can have one active reservation at a Location at any given time.
•	Each Location can accommodate reservations from multiple Users.

Functionality:
•	The database will store, retrieve, and manage data related to Users, Admins, Landlords, and Locations.
•	Admins have the ability to edit information related to Locations, Users, and Landlords.
•	The platform will categorize and map Locations based on proximity to universities and other defined attributes.
•	The platform will provide features to attract students to use the application and make reservations.
