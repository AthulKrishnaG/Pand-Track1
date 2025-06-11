# PANDTRACK (Pandemic Tracking System)

**PANDTRACK** is a web-based application built with PHP, MySQL, HTML, CSS, JavaScript, and Bootstrap. It helps administrators, doctors, and patients track pandemic-related data (e.g., patient details, symptoms, contact lists, hotspot areas) in Kerala. The system is designed to simplify and automate day-to-day healthcare workflows and reporting.

---

## Table of Contents

1. [Features](#features)  
2. [Tech Stack](#tech-stack)  
3. [Prerequisites](#prerequisites)  
4. [Installation & Setup](#installation--setup)  
5. [Database Configuration](#database-configuration)  
6. [Project Structure](#project-structure)  
7. [Default Credentials](#default-credentials)  
8. [Usage](#usage)  
9. [Roles & Permissions](#roles--permissions)  
10. [License](#license)  

---

## Features

- **Admin**  
  - Approve/reject new doctor registrations  
  - Manage users (add, view, update, delete)  
  - Configure doctor types (add, edit, delete)  
  - Add/view hotspot areas  
  - Add/view primary contact lists  
  - View/update/delete any record in the system  

- **Doctor**  
  - Register, then wait for Admin approval  
  - Login and add/view patient details (symptoms, medicines, history)  
  - View list of doctors and consultation schedules  

- **Patient**  
  - Register and login  
  - View personal consultation history, medicine history, disease details  
  - Share disease details (symptoms, source, contact list)  

- **Other**  
  - Weekly reports of pandemic cases  
  - Role‐based access control: each user sees only what their role permits  

---

## Tech Stack

- **Language:** PHP, HTML, CSS, JavaScript  
- **Framework/Library:** Bootstrap  
- **Backend:** MySQL (using WAMP/XAMPP)  
- **IDE:** VS Code (or Notepad++)  

---

## Prerequisites

1. **Web Server:** WAMP Server (or XAMPP) installed on Windows.  
2. **PHP:** Version 7.x or above.  
3. **MySQL:** Version 5.7 or above (ensure the `mysqli` extension is enabled).  
4. **Browser:** Chrome, Firefox, or any modern browser.  

---

## Installation & Setup

1. **Clone or Download**  
   ```bash
   git clone https://github.com/YourUsername/PANDTRACK.git
Or download and extract the ZIP into your web server’s document root (e.g., C:\wamp64\www\).
2.Move Files
oEnsure the entire project folder (PANDTRACK/) is inside www/ (for WAMP) or htdocs/ (for XAMPP).
oThe final path should look like:


o C:\wamp64\www\PANDTRACK\  
o  ├─ css\  
o  ├─ fonts\  
o  ├─ HTML\  
o  ├─ images\  
o  ├─ includes\  
o  ├─ js\  
o  ├─ less\  
o  ├─ SSLA\  
o  ├─ SSLD\  
o  ├─ SSLP\  
o  ├─ dbconnection.php  
o  ├─ footer.php  
o  ├─ header.php  
o  ├─ header2.php  
o  ├─ index.php  
o  ├─ login.php  
o  ├─ phpcodes-Delete.php  
o  ├─ phpcodes-Insert.php  
o  ├─ phpcodes-Login.php  
o  ├─ phpcodes-Update.php  
o  ├─ register.php  
o  └─ success.php  
3.Start WAMP/XAMPP
   o  Launch the control panel.
   o  Start Apache and MySQL services.
4.Import Database
   o  Open phpMyAdmin (http://localhost/phpmyadmin).
   o  Create a new database named pantra.
   o  Click Import → Choose File → select pantra.sql (provided in the database/ folder) → Go.
   o  This will create all necessary tables and seed any default data.
5.Configure dbconnection.php
   o  Open dbconnection.php in VS Code.
   o  Update the MySQL credentials if necessary (default WAMP credentials):
   o  <?php
   o  // dbconnection.php
   o  $host     = "localhost";
   o  $username = "root";
   o  $password = "";         // default is empty for WAMP
   o  $database = "pantra";
   o
   o  $conn = new mysqli($host, $username, $password, $database);
   o  if ($conn->connect_error) {
   o    die("Connection failed: " . $conn->connect_error);
   o  }
   o  ?>
   o  Save and close.
6.Access the Application
oIn your browser, navigate to http://localhost/PANDTRACK/.
oYou should see the landing page 

Database Configuration
Database Name: pantra

Project Structure
PANDTRACK/
│
├─ .vscode/  
├─ ajax-load/  
├─ css/  
├─ fonts/  
├─ HTML/  
├─ images/  
├─ includes/  
├─ js/  
├─ less/  
├─ SSLA/  
├─ SSDL/  
├─ SSLP/  
│
├─ dbconnection.php  
├─ footer.php  
├─ header.php  
├─ header2.php  
├─ index.php  
├─ login.php  
├─ phpcodes-Delete.php  
├─ phpcodes-Insert.php  
├─ phpcodes-Login.php  
├─ phpcodes-Update.php  
├─ register.php  
└─ success.php  
css/: Stylesheets and Bootstrap overrides.
js/: JavaScript files (AJAX calls, form validation, etc.).
includes/: Reusable components (e.g., navigation menus, sidebars).
SSLA/, SSLD/, SSLP/: Submodules/pages for different user roles or modules.
dbconnection.php: Establishes a connection to MySQL.
phpcodes-*.php: CRUD operations for different user actions (Insert, Update, Delete, Login).
register.php: User registration form (doctor/patient).
login.php: Login form for all user roles.
index.php: Landing page/dashboard (role‐based redirect).
header.php, footer.php, header2.php: Common header/footer templates.

Default Credentials
Admin
oEmail: admin@gmail.com
oPassword: admin123
(After first login, Admin can create additional doctor or patient accounts.)

Usage
1.Admin Login
oGo to http://localhost/PANDTRACK/login.php
oEnter Admin credentials (admin@gmail.com / admin123).
oAfter logging in, the Admin dashboard shows options to manage users, hotspots, contacts, and doctor types.
2.Doctor Registration & Approval
oA new doctor visits http://localhost/PANDTRACK/login.php.
oAdmin can add doctors their number is password 
3.Patient Registration & Usage
oA new patient visits register.php, signs up, and logs in immediately (no approval needed).
oPatient dashboard allows viewing consultation history, medicine history, and adding source/contact details.
4.Adding Hotspot Areas & Contacts (Admin)
oNavigate to Hotspot Management → Add/Edit/Delete hotspot areas.
oNavigate to Primary Contacts → Add/Edit/Delete primary contact entries.
5.Doctor Dashboard
odoctors log in and are redirected to their dashboard.
oThey can add a new patient, update symptoms, assign medicines, and view history.
o“Doctor List” page displays all doctors, their departments, and consultation schedules.
6.Patient Dashboard
oAfter login, patients see their “Consultation History”, “Medicine History”, and “Disease Details”.
oThey can update personal profile and share any new symptoms or contact lists.

Roles & Permissions
1.Admin
oFull access: Manage users (doctors/patients), hotspots, contacts, doctor types.
oView or delete any record in the system.
2.Doctor
oAdd/view patient details, symptoms, medication history.
oView list of all doctors (including consultation schedules).
3.Patient
oView personal consultation/medicine history.
oShare disease/symptom details.
