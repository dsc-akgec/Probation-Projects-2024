
function validateForm() {
    let isValid = true;
    
    // Clear previous error messages
    document.getElementById('name-error').innerText = '';
    document.getElementById('email-error').innerText = '';
    document.getElementById('message-error').innerText = '';
    
    // Name validation
    const name = document.getElementById('name').value;
    if (name.trim() === '') {
        document.getElementById('name-error').innerText = 'Name is required.';
        isValid = false;
    }
    
    // Email validation
    const email = document.getElementById('email').value;
    const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
    if (!emailPattern.test(email)) {
        document.getElementById('email-error').innerText = 'Invalid email address.';
        isValid = false;
    }
    
    // Message validation
    const message = document.getElementById('message').value;
    if (message.trim() === '') {
        document.getElementById('message-error').innerText = 'Message is required.';
        isValid = false;
    }
    
    // If the form is valid, show the confirmation message
    if (isValid) {
        document.getElementById('confirmation-message').style.display = 'block';
    }
    
    return isValid;
}
