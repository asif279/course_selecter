<?php
// allocate.php

// Database connection details
$servername = 'localhost';
$username = 'root';
$password = '';
$dbname = 'project';

// Retrieve form data
$courseCode = $_POST['courseCode'];
$section = $_POST['section'];
$facultyID = $_POST['facultyID'];

// Perform database operations
try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Check if faculty already has 11 credits
    $query = "SELECT SUM(Credits) AS total_credits
              FROM course_list
              INNER JOIN course_allocation ON course_list.CourseCode = course_allocation.CourseCode
              WHERE course_allocation.FacultyID = :facultyID";
    $stmt = $conn->prepare($query);
    $stmt->bindParam(':facultyID', $facultyID, PDO::PARAM_INT);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    $totalCredits = $result['total_credits'];

    if ($totalCredits + getCreditsForCourse($courseCode) > 11) {
        echo 'Error: Cannot assign more than 11 credits to a faculty member.';
        exit;
    }

    // Check if the faculty has already been assigned another class in the same slot
    $query = "SELECT 1
              FROM course_allocation
              WHERE FacultyID = :facultyID
                AND EXISTS (
                  SELECT 1
                  FROM courses
                  WHERE CourseCode = :courseCode
                    AND Section = :section
                    AND Day = courses.Day
                    AND (
                      (StartTime >= courses.StartTime AND StartTime < courses.EndTime)
                      OR (EndTime > courses.StartTime AND EndTime <= courses.EndTime)
                    )
                )";
    $stmt = $conn->prepare($query);
    $stmt->bindParam(':facultyID', $facultyID, PDO::PARAM_INT);
    $stmt->bindParam(':courseCode', $courseCode, PDO::PARAM_STR);
    $stmt->bindParam(':section', $section, PDO::PARAM_INT);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($result) {
        echo 'Error: Cannot assign multiple classes in the same slot for a faculty member.';
        exit;
    }

    // Insert the course allocation into the database
    $query = "INSERT INTO course_allocation (CourseCode, Section, FacultyID, Day, StartTime, EndTime, Room)
              SELECT courses.CourseCode, courses.Section, :facultyID, courses.Day, courses.StartTime, courses.EndTime, courses.Room
              FROM courses
              WHERE courses.CourseCode = :courseCode
                AND courses.Section = :section";
    $stmt = $conn->prepare($query);
    $stmt->bindParam(':facultyID', $facultyID, PDO::PARAM_INT);
    $stmt->bindParam(':courseCode', $courseCode, PDO::PARAM_STR);
    $stmt->bindParam(':section', $section, PDO::PARAM_INT);
    $stmt->execute();

    echo 'Course allocation successful.';
} catch (PDOException $e) {
    echo 'Error: ' . $e->getMessage();
}

// Function to retrieve credits for a given course
function getCreditsForCourse($courseCode)
{
    global $conn;

    $query = "SELECT Credits FROM course_list WHERE CourseCode = :courseCode";
    $stmt = $conn->prepare($query);
    $stmt->bindParam(':courseCode', $courseCode, PDO::PARAM_STR);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($result) {
        return $result['Credits'];
    } else {
        return 0; 
    }
}
?>
