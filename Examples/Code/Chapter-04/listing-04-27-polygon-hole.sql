-- Listing 4-27-bis. Compound Line String Example
-- https://docs.oracle.com/cd/E11882_01/appdev.112/e11830/sdo_objrelschema.htm#SPATL520
INSERT INTO geometry_examples VALUES
(
  'POLYGON WITH VOID',
  '2-D Compound Polygon with Inner Void',
  SDO_GEOMETRY
  (
    2007,       -- SDO_GTYPE: D00T. Set to 2002 as it is a 2-dimensional Line String
    32774,      -- SDO_SRID
    NULL,       -- SDO_POINT_TYPE is null
    SDO_ELEM_INFO_ARRAY -- SDO_ELEM_INFO attribute (see Table 4-2 for values)
    (
      1, 1003, 1,  -- Triplet for first subelement 
      19, 2003, 1   -- Triplet for second subelement 
    ),
    SDO_ORDINATE_ARRAY -- SDO_ORDINATES attribute
    (
      2,4, 4,3, 10,3, 13,5, 13,9, 11,13, 5,13, 2,11, 2,4,
        7,5, 7,10, 10,10, 10,5, 7,5
    )
  )
);
