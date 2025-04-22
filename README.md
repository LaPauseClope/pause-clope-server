La Pause clope Rest API
A simple Spring Boot application that simulates a Cookie Clicker game. It features:

JWT-based authentication

RESTful API endpoints

PostgreSQL database integration

🚀 Features
User Authentication: Secure user registration and login using JWT.

Cookie Management: Increment cookies, view stats, and purchase upgrades.

REST API: Clean and organized endpoints for game interactions.

Database Integration: Persistent data storage with PostgreSQL.

🛠️ Built With
Spring Boot

Spring Security TODO

Spring Data JPA TODO

PostgreSQL TODO

JSON Web Tokens (JWT) TODO

📦 Installation
Clone the repository:

bash
Copy
Edit
git clone https://github.com/LaPauseClope/pause-clope-server.git
cd pause-clone-server
Configure the database:

Create a PostgreSQL database and update the application.properties file located in src/main/resources/:

properties
Copy
Edit
spring.datasource.url=jdbc:postgresql://localhost:5432/your_database
spring.datasource.username=your_username
spring.datasource.password=your_password
spring.jpa.hibernate.ddl-auto=update
Build and run the application:

bash
Copy
Edit
mvn clean install
mvn spring-boot:run
The application will start on http://localhost:8080.

🔐 Authentication TODO
Register: POST /api/auth/register

Login: POST /api/auth/login

Upon successful login, a JWT token will be returned. Include this token in the Authorization header for protected endpoints:

makefile
Copy
Edit
Authorization: Bearer your_jwt_token
📖 API Endpoints
Increment Cookies: POST /api/game/click

View Stats: GET /api/game/stats

Purchase Upgrade: POST /api/game/upgrade

🧪 Testing
To run tests:

bash
Copy
Edit
mvn test
📄 License
This project is licensed under the MIT License - see the LICENSE file for details.

📫 Contact
For any inquiries or feedback, please contact your.email@example.com.
