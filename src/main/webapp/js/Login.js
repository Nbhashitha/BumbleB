/**
 * 
 */

const signupBtn = document.getElementById('signup-btn');

signupBtn.addEventListener('click', signUp);


function signUp(event) {
	event.preventDefault();
	// Navigate to Sign Up Page
	window.location.href = "http://localhost:8080/InventoryManagementSystem/jsp/RegistrationPage.jsp";
}


