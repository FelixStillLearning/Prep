// kali ini membahas operator

let age = 25;

// unary operation
typeof age;

//binary operator

5 + 4 ;

10/2 ;

age = 30;

// ternary operator (conditional operator)

(age < 18) ? 'youre too young ' : 'Welcome Obnboard' ;

//digunakan untuk menginisialisasi nilai
const name = 'felix';
let location = 'bandung';

location =  'jakarta'

6 + 5;
8 - 1;
8 * 5;
10 / 3;
10 % 2;

2 * (8+2);

const a = 10;
const b =  12;

console.log(a >5);
console.log(b<10)


console.log(true && true);
console.log(false && true);
console.log(true && false);
console.log(false && false);
console.log(5 === 5) && (3<5);


console.log(true || true);
console.log(false || true);
console.log(true || false);
console.log(false || false);
console.log(5 === 5) || (3>5);


console.log(!true)
console.log(!false)

const first = 'bekerja';
const second = 'sama';
const merged = first  + second;

console.log(merged)
const umur = 21;
const nama = 'felix';

console.log('nama saya $(nama), umur saya $(umur)')

//Bermain dengan Function

const celcius = 38;
const farenheit = 9/5 * celcius + 32 ;

console.log('hasil konversi = ', farenheit);

//membuat function di dalam javascript 

function greatWorld() {
    console.log("HELLOBANGGG")
}

greatWorld()

function ubahtemperature(temperature) {
    const ubah = 9/ 5 * temperature + 32;
    console.log('hasil konvcersi = ' ,ubah);
}

ubahtemperature(200);

function penjumlahan(angka1,angka2) {
    jumlah = angka1 + angka2;
    return jumlah
}
let Hasil = penjumlahan(10,20)

console.log('hasil penjumlahan = ',Hasil)

