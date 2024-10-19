Travel Agency Management System

Project Overview

The Travel Agency Management System is a web-based application that allows users to explore and book travel packages, including domestic and international tours. The platform enables users to select travel destinations, view package details, and make bookings for travel via bus, train, or airplane. This project aims to simplify the process of travel planning, providing a user-friendly interface for booking and exploring travel services from the comfort of their home.

Features

User Dashboard: Allows users to view available tour packages and make bookings.

Admin Dashboard: Enables administrators to add and manage travel packages, manage customer queries, and provide updates.

Booking System: Users can book tickets for various modes of transportation, including buses, trains, and flights.

Customer Support: Customers can directly send their requirements or queries to the admin.

Centralized Data Management: Maintains a centralized repository of tour packages, customer details, and bookings.

Technology Stack

Frontend: ASP.NET & C#

Backend: SQL Server

IDE: MS Visual Studio 2019

Database Design

ER Diagram: Shows the relationship between tables, including Admin_Mstr, User_Mstr, Tour_Details, Tour_Itinerary, Hotel_Details, and others.

Data Flow Diagrams (DFD): Visualizes data flow at different levels (context-level, level 0, level 1).

Tables:

Admin_Mstr: Stores admin details.

Tour_Details: Contains details about various tour packages.

Hotel_Details: Information about hotel accommodations.

User_Mstr: Stores user credentials and contact information.

Passport and Visa Country: Manages travel documentation requirements.

Advantages

Convenience: Users can view all travel packages, visa details, and book tickets online without visiting a travel agency.


Cost-Effective: Online listings for travel packages are more affordable than printed advertisements.

Direct Communication: Users can send specific requirements to the travel agent directly through the platform.

Disadvantages

Loading Time: With an increase in the number of tour packages, the website may take longer to load, especially with slow internet connections.

Future Scope

Expand the system to include more international travel options and integrate with third-party travel APIs.

Improve loading times and user experience for slower internet speeds.

Enhance user interface to include more interactive elements and real-time chat support.

Installation

Clone the repository:

bash
Copy code

git clone https://github.com/username/travel-agency.git

Open the solution in MS Visual Studio 2019.

Set up the SQL Server database and update the connection strings.

Run the project to start the application.

Contribution

Feel free to fork this repository and submit pull requests. Contributions to improve the system are welcome.
