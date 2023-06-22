// script.js

// Function to handle form submission
function allocateCourse(event) {
    event.preventDefault();
    const form = document.getElementById('allocationForm');
    
    // Retrieve form data
    const courseCode = form.courseCode.value;
    const section = form.section.value;
    const facultyID = form.facultyID.value;

    // Perform validation if needed
    if (courseCode.trim() === '') {
        alert('Please enter a course code.');
        return;
    }

    if (section.trim() === '') {
        alert('Please enter a section.');
        return;
    }

    if (facultyID.trim() === '') {
        alert('Please enter a faculty ID.');
        return;
    }

    // Send the form data to the server using AJAX
    const xhr = new XMLHttpRequest();
    xhr.open('POST', 'allocate.php', true);
    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            // Handle the server response if needed
            console.log(xhr.responseText);
        }
    };
    const data = `courseCode=${courseCode}&section=${section}&facultyID=${facultyID}`;
    xhr.send(data);
}

// Function to generate faculty-wise report
function generateFacultyWiseReport() {
    const xhr = new XMLHttpRequest();
    xhr.open('GET', 'generate_faculty_routine.php', true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            const facultyRoutineTable = document.getElementById('facultyRoutine');
            const tbody = facultyRoutineTable.getElementsByTagName('tbody')[0];
            tbody.innerHTML = xhr.responseText;
        }
    };
    xhr.send();
}

// Function to generate course-wise report
function generateCourseWiseReport() {
    const xhr = new XMLHttpRequest();
    xhr.open('GET', 'generate_course_routine.php', true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            const courseRoutineTable = document.getElementById('courseRoutine');
            const tbody = courseRoutineTable.getElementsByTagName('tbody')[0];
            tbody.innerHTML = xhr.responseText;
        }
    };
    xhr.send();
}

// Function to generate room-wise report
function generateRoomWiseReport() {
    const xhr = new XMLHttpRequest();
    xhr.open('GET', 'generate_room_routine.php', true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            const roomRoutineTable = document.getElementById('roomRoutine');
            const tbody = roomRoutineTable.getElementsByTagName('tbody')[0];
            tbody.innerHTML = xhr.responseText;
        }
    };
    xhr.send();
}

document.querySelectorAll('.image-container img').forEach(image => {
    image.onclick = () => {
        document.querySelector('.pop-image').style.display = 'block';
        document.querySelector('.pop-image img').src = image.getAttribute('src');
    }
});

document.querySelector('.pop-image span').onclick = () => {
    document.querySelector('.pop-image').style.display = 'none';
}

// Attach event listener to the form submission when the window finishes loading
window.addEventListener('load', function () {
    const allocationForm = document.getElementById('allocationForm');
    allocationForm.addEventListener('submit', allocateCourse);
});
