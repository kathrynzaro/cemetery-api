-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS cemeteries;

CREATE TABLE cemeteries (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR NOT NULL,
  location VARCHAR NOT NULL,
  established INT NOT NULL
);

INSERT INTO
  cemeteries (name, location, established)

VALUES
  (
    'Lone Fir Cemetery',
    'Portland, Oregon, United States',
    1855
  ),
  (
    'Mt. Calvary Catholic Cemetery',
    'Portland, Oregon, United States',
    1888
  ),
  (
    'River View Cemetery',
    'Portland, Oregon, United States',
    1882
  ),
  (
    'Greenwood Hills Cemetery',
    'Portland, Oregon, United States',
    1882
  ),
  (
    'Rosehill Cemetery',
    'Chicago, Illinois, United States',
    1859
  ),
  (
    'Oak Woods Cemetery',
    'Chicago, Illinois, United States',
    1853
  ),
  (
    'Graceland Cemetery',
    'Chicago, Illinois, United States',
    1860
  ),
  (
    'Delight Cemetery',
    'Lind, Washington, United States',
    1890
  ),
  (
    'Oysterville Cemetery',
    'Oysterville, Washington, United States',
    1858
  ),
  (
    'Hollywood Memorial Park and Cemetery',
    'Union, New Jersey, United States',
    1909
  ),
  (
    'Père Lachaise Cemetery',
    'Paris, France',
    1804
  ),
  (
    'Mountain View Cemetery',
    'Oregon City, Oregon, United States',
    1854
  ),
  (
    'Granary Burying Ground',
    'Boston, Massachusetts, United States',
    1660
  ),
  (
    'Copps Hill Burying Ground',
    'Boston, Massachusetts, United States',
    1659
  ),
  (
    'Forest Hills Cemetery',
    'Boston, Massachusetts, United States',
    1848
  ),
  (
    'Kings Chapel Burying Ground',
    'Boston, Massachusetts, United States',
    1630
  ),
  (
    'Central Burying Ground',
    'Boston, Massachusetts, United States',
    1756
  )
  ;