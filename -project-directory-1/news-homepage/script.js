document.addEventListener('DOMContentLoaded', function () {
    // Toggle the visibility of the navigation menu when the menu button is clicked
    const menuButton = document.getElementById('menu-button');
    const navList = document.querySelector('#top-bar ul');
  
    menuButton.addEventListener('click', function () {
      navList.style.display = (navList.style.display === 'block') ? 'none' : 'block';
    });
  });
  