-- Listing E-18. Querying a TIN Object
CREATE TABLE qryres AS SELECT * FROM MDSYS.SDO_TIN_BLK_TABLE;
-- Query
DECLARE
inp SDO_TIN;
BEGIN
SELECT pc INTO inp FROM tin_tab WHERE rownum=1;
INSERT INTO qryres
SELECT * FROM
TABLE(SDO_TIN_PKG.CLIP_TIN
(
inp, -- Input TIN object
SDO_GEOMETRY(2003, 8307, NULL,
SDO_ELEM_INFO_ARRAY(1, 1003, 3),
SDO_ORDINATE_ARRAY(-74.1, -73.9, 39.99999,40.00001)
), -- QUERY
NULL, NULL));
END;
/
