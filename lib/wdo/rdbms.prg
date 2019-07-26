/*	---------------------------------------------------------
	File.......: wdo.prg
	Description: Base WDO. Conexión a Bases de Datos. 
	Author.....: Carles Aubia Floresvi
	Date:......: 26/07/2019
	--------------------------------------------------------- */
	
#define RDBMS_VERSION 		0.1	

CLASS RDBMS	

	DATA  cRdbms
	DATA  cServer
	DATA  cUsername
	DATA  cDatabase
	DATA  cPassword
	DATA  nPort
	DATA  hConnection 

	METHOD New() 						CONSTRUCTOR
	METHOD Connect() 					VIRTUAL				
	
	METHOD Version()					INLINE RDBMS_VERSION		

ENDCLASS

METHOD New() CLASS RDBMS

	AP_RPUTS( 'RDBMS New()' )

RETU SELF
