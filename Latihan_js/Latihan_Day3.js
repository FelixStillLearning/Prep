// menstruktur data dengan Object 
const products = { name: "sepatu", price: 23000};


const user1 = {
    name: 'felix',
    'lastName' : 'Angga Resky',
    age : 9
}

console.log(user1)
console.log(user1.name)
console.log(user1.lastName)

const {name, lastName} = user1;
console.log(name, lastName);

const user = { 
    id:24,
    email:'Felixangga077@gmail.com',
    alamat : 'Parongpong',
    nama_lengkap : 'Felix Angga Resky',
    age : 21,
    Kelamin : 'laki - laki'
}

console.log(user)
console.log(user.id, user.nama_lengkap)