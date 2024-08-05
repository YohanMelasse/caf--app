
const client = require('./database');


const dataMapper = {
    getAll: async () => {
        try {
            const query = 'SELECT * FROM cafes;';
            const result = await client.query(query);
            return result.rows;
        } catch (error) {
            console.error(error);
            throw error;
        }
    },
    getOneProduct: async (id) => {
        try {
            const query = {
                text:
                    'SELECT * FROM cafes WHERE id = $1',
                values: [id]
            };
            const result = await client.query(query);
            return result.rows[0];

        } catch (error) {
            console.error(error);
            throw error;

        }
    },
    displayLastProducts: async () => {
        try {
            const query = {
                text: 'SELECT * FROM cafes ORDER BY id DESC LIMIT 3;'
            };
            const result = await client.query(query);
            return result.rows;
        } catch (error) {
            console.error(error);
            throw error;
        }
    },
    category: async () => {
        try {
            const query = {
                text: 'SELECT * FROM cafes WHERE caracteristique_principale = caracteristique_principale;'
            };
            const result = await client.query(query);
            return result.rows;
        } catch (error) {
            console.error(error);
            throw error;
        }
    }
};
//note ça pour les catégories faire du front, 
//ajouter un évèenement clique, utiliser soit un .filter créer un classe
//supprimer le dernier dataMapper;
module.exports = dataMapper;