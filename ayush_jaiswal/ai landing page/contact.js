function submitForm(event) {
    event.preventDefault();

    document.querySelector('.loader').style.display = 'block';

    setTimeout(function () {

        document.querySelector('.loader').style.display = 'none';

        document.querySelector('.confirmation').style.display = 'block';

  
        document.getElementById('contactForm').reset();
    }, 2000); 
}
