const strnumber = "123"
const strflaot = "3.15"
const booleann = true 

const numFromString = Number(strnumber);
const flaotFromString = Number(strflaot);
const numFromBoolean = Number(booleann);

console.log(numFromBoolean);
console.log(flaotFromString);
console.log(numFromString);

//parseint 

const cm = '20cm';
const px = '64px';

const intfromCM = parseInt(cm);
const intfromPX = parseInt(px);

console.log (intfromCM, intfromPX);

//parseFloat

const pi = '3.14 cm';
const jari = '17.313 px'

const floatfromCM = parseFloat(pi);
const floatfromPX = parseFloat(jari);

console.log(floatfromCM, floatfromPX)

//Mengubah ke Boolean
const num = 123;
const float = 3.14;
const string = 'felix';

const boolfromnum = Boolean(num);
const boolfromfloat = Boolean(float); 
const boolfromstring = Boolean(string)

console.log( boolfromfloat, boolfromnum, boolfromstring)

//konversi emplisit 
const age = 20;
const message = 'Umurku: ' + age;

console.log(message);

const strNumber123 = '120'
const result = strNumber123 * 2;

console.log(result);

const stringuh = true;
const result1= 1 + stringuh;

console.log(result1)

