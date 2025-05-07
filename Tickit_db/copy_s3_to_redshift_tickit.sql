
-- Codigo para cargar datos desde S3 a Redshift, en el primer caso users es el nombre de la tabla a la que voy a cargar los datos que ya debe estar creada en Redshift
-- En la carpeta anterior de create tables estan los ejemplos para copiar y pegar y crear una tabla en Redshift
-- Luego debo reemplazar la ruta del bucket y los nombres de los archivos con la ruta completa
-- Finalmente reemplazar con mi rol y region y cambiar el delimitador si es necesario
copy users from 's3://<Reemplazar_con_la_ruta_del_bucket>/tickit/allusers_pipe.txt' 
credentials 'aws_iam_role=<Reemplazar_con_tu_iam_role_arn>' 
delimiter '|' region '<Reemplazar_con_tu_aws_region>';

copy venue from 's3://<Reemplazar_con_la_ruta_del_bucket>/tickit/venue_pipe.txt' 
credentials 'aws_iam_role=<Reemplazar_con_tu_iam_role_arn>' 
delimiter '|' region '<Reemplazar_con_tu_aws_region>';

copy category from 's3://<Reemplazar_con_la_ruta_del_bucket>/tickit/category_pipe.txt' 
credentials 'aws_iam_role=<Reemplazar_con_tu_iam_role_arn>' 
delimiter '|' region '<Reemplazar_con_tu_aws_region>';

copy date from 's3://<Reemplazar_con_la_ruta_del_bucket>/tickit/date2008_pipe.txt' 
credentials 'aws_iam_role=<Reemplazar_con_tu_iam_role_arn>' 
delimiter '|' region '<Reemplazar_con_tu_aws_region>';

copy event from 's3://<Reemplazar_con_la_ruta_del_bucket>/tickit/allevents_pipe.txt' 
credentials 'aws_iam_role=<Reemplazar_con_tu_iam_role_arn>' 
delimiter '|' timeformat 'YYYY-MM-DD HH:MI:SS' region '<Reemplazar_con_tu_aws_region>';

copy listing from 's3://<Reemplazar_con_la_ruta_del_bucket>/tickit/listings_pipe.txt' 
credentials 'aws_iam_role=<Reemplazar_con_tu_iam_role_arn>' 
delimiter '|' region '<Reemplazar_con_tu_aws_region>';

copy sales from 's3://<Reemplazar_con_la_ruta_del_bucket>/tickit/sales_tab.txt'
credentials 'aws_iam_role=<Reemplazar_con_tu_iam_role_arn>'
delimiter '\t' timeformat 'MM/DD/YYYY HH:MI:SS' region '<Reemplazar_con_tu_aws_region>';
