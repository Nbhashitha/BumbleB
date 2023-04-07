/**
 * 
 */

const signupBtn = document.getElementById('signup-btn');


signupBtn.addEventListener('click', signUp);


function signUp(event) {
	event.preventDefault();
	// Navigate to Sign Up Page
	window.location.href = "http://localhost:8084/InventoryManagementSystem/jsp/CustomerRegistrationPage.jsp";
}

// Get the button element
const changeTitleBtn = document.getElementById('signin-btn');

// Add a click event listener to the button
changeTitleBtn.addEventListener('click', function() {
	// Get the current page title
	const pageTitle = document.title;

	// Check if the page title is the default value
	if (pageTitle === 'My Page') {
		// Display an error message
		alert('Please change the page title before continuing.');
	} else {
		// Do something else
		console.log('Page title is not the default value.');
	}
});


