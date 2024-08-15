import {pool} from './database.js';

class LibrosController{

    async getAll(req, res) {
        const [result] = await pool.query('SELECT * FROM libros')
        res.json(result);
    }

    async add(req, res){
        const libro = req.body;
        const [result] = await pool.query(`INSERT INTO Libros(nombre, autor, categoria, año, ISBN) VALUES (?, ?, ?, ?, ?)`, [libro.nombre, libro.autor, libro.categoria, libro.año, libro.ISBN]);
        res.json({"Id insertado": result.insertId});
    }

    async delete(req, res){
        const libro = req.body;
        const [result] = await pool.query(`DELETE FROM Libros WHERE ISBN=(?)`, [libro.ISBN]);
        res.json({"Registros eliminados": result.affectedRows});
    }

    async update(req, res){
        const libro = req.body;
        const [result] = await pool.query(`UPDATE Libros SET nombre=(?), autor=(?), categoria=(?), año=(?), ISBN=(?) WHERE id=(?)`, [libro.nombre, libro.autor, libro.categoria, libro.año, libro.isbn, libro.id]);
        res.json({"Registros actualizados": result.changedRows});
    }

    async getOne(req, res){
        const libro = req.body;
        const [result] = await pool.query(`SELECT * FROM Libros WHERE id=(?)`, [libro.id]);

        if (result.lenght === 0){
            res.json({"Libro no encontrado": result.length === 0});
        } else {
        res.json(result);
        }
    }
}
export const libro = new LibrosController();