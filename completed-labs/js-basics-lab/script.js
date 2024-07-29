console.log("console log - hello world"); // log in developer tools
var globalX = 100; // global scope

function hello() { // function definition
    alert("alert - hello world!"); // popup window    
}

function add() { // function definition
    var x = 3;
    var y = 5;
    var sum = x + y;
    alert("Sum is " + sum);
}

function subtract() {
    var a = 1000;
    var b = 100;
    var diff = a - b;
    alert("Difference is " + diff);
}

function increment() {
    var y = 10; // local scope - resets y every time function is called
    globalX = globalX + 10; // can add any number to itself
    y += 10; // same as y = y + 10;
    alert("x=" + globalX + " y=" + y);
}

function compare() {
    var charlie = 120;
    var john = 120;

    // conditional if statement
    if (charlie > john) {
        alert("Charlie is taller");
    } else if (charlie == john) { // "=" is assignment; "==" is comparison
        alert("Charlie and John are of the same height");
    } else {
        alert("John is taller");
    }
}

// New functions for the buttons

function multiply() {
    var result = 25 * 42;
    alert("The answer is " + result);
}

function divide() {
    var result = 48 / 12;
    alert("Each child gets " + result + " pencils");
}

function calculateMean() {
    var numbers = [25, 47, 98, 46, 52];
    var sum = numbers.reduce((a, b) => a + b, 0);
    var mean = sum / numbers.length;
    alert("The mean is " + mean);
}

function compareNumbers() {
    var result = 100 > 1000 ? "Yes" : "No";
    alert("Is 100 greater than 1000? " + result);
}

function compareMultiplication() {
    var result = (5 * 4) > 20 ? "Yes" : "No";
    alert("Is 5 times 4 greater than 20? " + result);
}
