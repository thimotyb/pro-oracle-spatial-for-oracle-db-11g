REM https://docs.oracle.com/cd/E11882_01/appdev.112/e11830/sdo_shapefile_converter.htm#SPATL1427
java -cp ojdbc5.jar:sdoutl.jar:sdoapi.jar oracle.spatial.util.SampleShapefileToJGeomFeature -h db_host -p db_port -s db_sid -u db_username -d db_password -t db_table -f shapefile_name [-i table_id_column_name][-r srid][-g db_geometry_column][-x max_x,min_x][-y max_y,min_y][-o tolerance]
