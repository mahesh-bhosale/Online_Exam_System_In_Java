# Online Exam Management System

## Project Overview

The **Online Exam Management System** is an application designed to facilitate the creation, management, and evaluation of online exams. It allows students to register, take exams, and view their results. For admins, the system provides the ability to add and update questions, view results, and manage user access. The system is developed using **Java (JFrame)** for the user interface and **MySQL** for the database.

## Key Features

- **Student Module**:
  - User registration and login system
  - Ability to take quizzes/exams
  - View results after completing the exam

- **Admin Module**:
  - Admin login system
  - Ability to add, update, and delete exam questions
  - View student results and performance
  - Generate reports of student performance

- **Database**:
  - MySQL database for storing user, exam, and result data
  - Tables for storing questions, students, and results

- **User-Friendly Interface**:
  - Developed using Java Swing (JFrame) for a desktop application
  - Responsive and intuitive user interface

## Technologies Used

- **Java (JFrame)** for GUI development
- **MySQL** for database management
- **NetBeans IDE** for development
- **XAMPP** for running MySQL database server

## Installation

Follow these steps to set up the project on your local machine:

### 1. Clone the Repository

Start by cloning the repository to your local machine:

```bash
git clone https://github.com/mahesh-bhosale/Online_Exam_System_In_Java.git
```

Follow these steps to set up the project on your local machine:

### 2. Install MySQL

Ensure you have **MySQL** installed on your system. You can use **XAMPP** to install MySQL easily:

- Download **XAMPP** from [https://www.apachefriends.org](https://www.apachefriends.org).
- Install and launch **XAMPP**.
- Start the **MySQL** service from the **XAMPP control panel**.

### 3. Import Database

1. Open **phpMyAdmin** via the XAMPP control panel or directly via the browser at [http://localhost/phpmyadmin](http://localhost/phpmyadmin).

2. Create a new database for the application:

    ```sql
    CREATE DATABASE qems;
    ```

3. Import the provided `.sql` file into the `exam_system` database:
   - Go to the **Import** tab in phpMyAdmin.
   - Choose the `.sql` file located in the `database/` folder of this repository.
   - Click **Go** to execute the SQL file.

### 4. Configure Database Connection

1. Open the Java project in **NetBeans IDE**.

2. Navigate to the **ConnectionProvider.java** class (or the file where the database connection is set).

3. Update the following connection details with your MySQL credentials:
   - **Username**: `root` (or your MySQL username)
   - **Password**: `""` (default password is empty for XAMPP, or use your custom password)
   - **Database Name**: `qems`

4. Example of a typical database connection string in Java:

    ```java
    public static Connection getConnection() {
        try {
            String url = "jdbc:mysql://localhost:3306/exam_system";
            String user = "root";
            String password = "";
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    ```

### 5. Run the Application

After setting up the database connection, build and run the project in **NetBeans**.  
If you're running the application from **NetBeans**, select **Run Project** to launch the system.  
The application will open with the login screen where the admin or student can log in.

### 6. Admin Login Details

- **Username**: `qems`
- **Password**: `admin`

### 6. Verify Database Connection

Ensure that the application is correctly connected to the database by logging in as an admin and verifying that the questions and student data appear correctly.  
You can also check the **MySQL database** to ensure the data is being updated.


