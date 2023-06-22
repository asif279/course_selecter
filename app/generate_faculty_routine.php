<?php
// Database connection setup
$dbuser = "root";
$dbpass = "";
$host = "localhost";
$db = "project";
$conn = new mysqli($host, $dbuser, $dbpass, $db);
if (mysqli_connect_errno()) {
    die("Database connection failed: " . mysqli_connect_error());
}

// Retrieve faculty-wise routine from the database
$query = "SELECT f.ID AS FacultyID, f.Name AS FacultyName, c.CourseCode, cl.CourseTitle, c.Section, c.Day, c.StartTime, c.EndTime, c.Room
          FROM course_allocation ca
          INNER JOIN faculty_members f ON ca.FacultyID = f.ID
          INNER JOIN courses c ON ca.CourseCode = c.CourseCode AND ca.Section = c.Section
          INNER JOIN course_list cl ON c.CourseCode = cl.CourseCode
          ORDER BY f.ID";
$result = mysqli_query($conn, $query);

// Generate HTML table rows
$rows = "";
while ($row = mysqli_fetch_assoc($result)) {
    $rows .= "<tr>
                <td>{$row['FacultyID']}</td>
                <td>{$row['FacultyName']}</td>
                <td>{$row['CourseCode']}</td>
                <td>{$row['CourseTitle']}</td>
                <td>{$row['Section']}</td>
                <td>{$row['Day']}</td>
                <td>{$row['StartTime']}</td>
                <td>{$row['EndTime']}</td>
                <td>{$row['Room']}</td>
              </tr>";
}

// Close the database connection
mysqli_close($conn);

// Return the HTML table rows as the response
echo $rows;
?>
