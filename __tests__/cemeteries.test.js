const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
const request = require('supertest');
const app = require('../lib/app');

describe('backend-express-template routes', () => {
  beforeEach(() => {
    return setup(pool);
  });
  it('#GET /cemeteries should return a list of cemeteries', async() => {
    const res = await request(app).get('/cemeteries');
    expect(res.status).toBe(200);
    expect(res.body.length).toEqual(17);
    const rosehill = res.body.find((cemetery) => cemetery.id === '5');
    expect(rosehill).toHaveProperty('name', 'Rosehill Cemetery');
  });
  it('#GET /cemeteries/:id should return a single cemetery', async () => {
    const res = await request(app).get('/cemeteries/10');
    expect(res.status).toBe(200);
    expect(res.body).toEqual({
      id: '10',
      name: 'Hollywood Memorial Park and Cemetery',
      location: 'Union, New Jersey, United States',
      established: 1909,
    });
  });
  afterAll(() => {
    pool.end();
  });
});
