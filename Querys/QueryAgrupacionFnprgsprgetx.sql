Select a.sec_ejec,a.sec_ejec+' '+b.nombre as nombre,  sum(a.Pim) as pim, 
A.FUNCION+' '+A.FUNCION_NOMBRE AS FUNCION_NOMBRE,
A.PROGRAMA+' '+A.PROGRAMA_NOMBRE AS PROGRAMA_NOMBRE,/*PROGRAMA FUNCIONAL*/
A.SUB_PROGRAMA+' '+SUB_PROGRAMA_NOMBRE AS SUB_PROGRAMA_NOMBRE,/*SB PROGRAMA FUNCIONAL*/
A.PROGRAMA_PPTO+' '+A.PROGRAMA_PPTO_NOMBRE, /*PROGRAMA*/
A.ACT_PROY+' '+A.ACT_PROY_NOMBRE AS ACT_PROY_NOMBRE, 
A.COMPONENTE+' '+A.COMPONENTE_NOMBRE AS COMPONENTE_NOMBRE,
sum(comprometido_anual) as certificado,
SUM(CASE WHEN FASE='C' THEN A.EJECUCION ELSE 0 END) EJECUCION_COMPROMISO,
SUM(CASE WHEN FASE='D' THEN A.EJECUCION ELSE 0 END) EJECUCION_DEVENGADO,
SUM(CASE WHEN FASE='G' THEN A.EJECUCION ELSE 0 END) EJECUCION_GIRADO
from 
dbo.inforeg_ejecucion_2009 a,
dbo.ejecutora b
where a.sec_ejec=b.sec_ejec
and a.ano_eje='2012'
group by a.sec_ejec, b.nombre
,A.FUNCION, A.FUNCION_NOMBRE
,A.PROGRAMA, A.PROGRAMA_NOMBRE
,A.SUB_PROGRAMA, A.SUB_PROGRAMA_NOMBRE
,A.PROGRAMA_PPTO,A.PROGRAMA_PPTO_NOMBRE
,A.ACT_PROY, A.ACT_PROY_NOMBRE
,A.COMPONENTE, A.COMPONENTE_NOMBRE



SELECT * FROM 
( SELECT *, ROW_NUMBER() OVER (ORDER BY ano_eje) as row FROM dbo.inforeg_ejecucion_2009 ) a WHERE row > 1001 and row <= 2000