DO $$

BEGIN

  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'compactcar_feature') THEN

    CREATE TYPE compactcar_feature AS ENUM ('airconditioning','stereo','gps');

  END IF;

  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'limousine_feature') THEN

    CREATE TYPE limousine_feature AS ENUM ('airconditioning','stereo','gps','fridge','sofa');

  END IF;

  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'convertible_feature') THEN

    CREATE TYPE convertible_feature AS ENUM ('airconditioning','stereo');

  END IF;

  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'sedan_feature') THEN

    CREATE TYPE sedan_feature AS ENUM ('airconditioning','stereo','tv');

  END IF;

  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'stationwagon_feature') THEN

    CREATE TYPE stationwagon_feature AS ENUM ('airconditioning','stereo','bed');

  END IF;

  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'van_feature') THEN

    CREATE TYPE van_feature AS ENUM ('airconditioning','stereo','bed','bikeHolder');

  END IF;

END$$;

ALTER TABLE COMPACTCAR

  ALTER COLUMN EXTRAS TYPE compactcar_feature[]

  USING (ARRAY(SELECT x::compactcar_feature FROM UNNEST(EXTRAS) AS x));

ALTER TABLE COMPACTCAR

  ALTER COLUMN EXTRAS SET DEFAULT ARRAY[

    'airconditioning'::compactcar_feature,

    'stereo'::compactcar_feature,

    'gps'::compactcar_feature

  ];



ALTER TABLE LIMOUSINE

  ALTER COLUMN EXTRAS TYPE limousine_feature[]

  USING (ARRAY(SELECT x::limousine_feature FROM UNNEST(EXTRAS) AS x));

ALTER TABLE LIMOUSINE

  ALTER COLUMN EXTRAS SET DEFAULT ARRAY[

    'airconditioning'::limousine_feature,

    'stereo'::limousine_feature,

    'gps'::limousine_feature,

    'fridge'::limousine_feature,

    'sofa'::limousine_feature

  ];


ALTER TABLE CONVERTIBLE

  ALTER COLUMN EXTRAS TYPE convertible_feature[]

  USING (ARRAY(SELECT x::convertible_feature FROM UNNEST(EXTRAS) AS x));

ALTER TABLE CONVERTIBLE

  ALTER COLUMN EXTRAS SET DEFAULT ARRAY[

    'airconditioning'::convertible_feature,

    'stereo'::convertible_feature

  ];

ALTER TABLE SEDAN

  ALTER COLUMN EXTRAS TYPE sedan_feature[]

  USING (ARRAY(SELECT x::sedan_feature FROM UNNEST(EXTRAS) AS x));

ALTER TABLE SEDAN

  ALTER COLUMN EXTRAS SET DEFAULT ARRAY[

    'airconditioning'::sedan_feature,

    'stereo'::sedan_feature,

    'tv'::sedan_feature

  ];


ALTER TABLE STATIONWAGON

  ALTER COLUMN EXTRAS TYPE stationwagon_feature[]

  USING (ARRAY(SELECT x::stationwagon_feature FROM UNNEST(EXTRAS) AS x));

ALTER TABLE STATIONWAGON

  ALTER COLUMN EXTRAS SET DEFAULT ARRAY[

    'airconditioning'::stationwagon_feature,

    'stereo'::stationwagon_feature,

    'bed'::stationwagon_feature

  ];

ALTER TABLE VAN

  ALTER COLUMN EXTRAS TYPE van_feature[]

  USING (ARRAY(SELECT x::van_feature FROM UNNEST(EXTRAS) AS x));

ALTER TABLE VAN

  ALTER COLUMN EXTRAS SET DEFAULT ARRAY[

    'airconditioning'::van_feature,

    'stereo'::van_feature,

    'bed'::van_feature,

    'bikeHolder'::van_feature

  ];
