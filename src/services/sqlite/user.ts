import sqlite3 from 'sqlite3';
const db = new sqlite3.Database('./src/services/sqlite/ucrp.db');

export function createUser(username, email, password) {
    console.error(username, email, password)
    const userExists = existUser(username);
    if (userExists) {
        console.log('El usuario ya existe.');
        return;
    }
    db.run(`INSERT INTO Accounts (Name, Email, Password) VALUES(?, ?, ?)`, [username, email, password], function (err) {
        if (err) return console.error('Error al crear el usuario:', err);
        console.log('Usuario creado con éxito');
    });
}

function existUser(username) {
    return new Promise((resolve, reject) => {
        db.get(`SELECT * FROM Accounts WHERE Name=?`, [username], (err, row) => {
            if (err) {
                console.error(err.message);
                reject(err);
            }
            if (row) {
                console.log('Usuario encontrado:', row);
                resolve(true);
            } else {
                resolve(false);
            }
        });
    });
}

function loginUser() {
    // Implementa la lógica de inicio de sesión aquí
}
