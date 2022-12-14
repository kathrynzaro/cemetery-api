const pool = require('../utils/pool');

class Cemetery {
  id;
  name;
  location;
  established;

  constructor(row) {
    this.id = row.id;
    this.name = row.name;
    this.location = row.location;
    this.established = row.established;
  }

  static async getAll() {
    const { rows } = await pool.query(
      'SELECT * from cemeteries'
    );
    return rows.map((row) => new Cemetery(row));
  }

  static async getById(id) {
    const { rows } = await pool.query(
      `SELECT * from cemeteries
      WHERE id = $1`,
      [id]
    );
    if (rows.length === 0) {
      return null;
    }
    return new Cemetery(rows[0]);
  }
}

module.exports = { Cemetery };
