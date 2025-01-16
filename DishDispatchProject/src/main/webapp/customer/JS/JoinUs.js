const signIn = document.getElementById('js-signin');
signIn.addEventListener('click', () => {
    document.querySelector('.signup-form').classList.add('js-signup-form');
    document.querySelector('.signin-form').classList.add('js-signin-form');
})

const signUp = document.getElementById('js-signup');
signUp.addEventListener('click', () => {
    document.querySelector('.signin-form').classList.remove('js-signin-form');
    document.querySelector('.signup-form').classList.remove('js-signup-form');
    document.querySelector('.signup-form').classList.add('signup-form');
})
