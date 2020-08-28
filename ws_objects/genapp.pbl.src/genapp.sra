$PBExportHeader$genapp.sra
$PBExportComments$Generated MDI Application Object
forward
global type genapp from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type genapp from application
string appname = "genapp"
string themepath = "C:\Program Files (x86)\Appeon\PowerBuilder 19.0\IDE\theme"
string themename = "Do Not Use Themes"
boolean nativepdfvalid = false
boolean nativepdfincludecustomfont = false
string nativepdfappname = ""
long richtextedittype = 2
long richtexteditversion = 1
string richtexteditkey = ""
string appicon = ""
end type
global genapp genapp

on genapp.create
appname="genapp"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on genapp.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;//*-----------------------------------------------------------------*/
//*    open:  Application Open Script:
//*            1) Instantiate a connection object
//*            2) Populate SQLCA and Connect to the database
//*            3) Open frame window
//*-----------------------------------------------------------------*/
n_genapp_connectservice lnv_connectserv

/*  This prevents double toolbar  */
this.ToolBarFrameTitle = "MDI Application Toolbar"
this.ToolBarSheetTitle = "MDI Application Toolbar"

lnv_connectserv = Create using "n_genapp_connectservice"

If lnv_connectserv.of_ConnectDB ( ) = 0 Then
	/*  Open MDI frame window  */
	Open ( w_genapp_frame )
End if

Destroy lnv_connectserv
//mmmm
end event

event close;//*-----------------------------------------------------------------*/
//*    close:  Application Close Script:
//*            1) Instantiate a connection object
//*            2) Disconnect from the database
//*-----------------------------------------------------------------*/
n_genapp_connectservice lnv_connectserv

lnv_connectserv = Create using "n_genapp_connectservice"

lnv_connectserv.of_DisconnectDB ( )

Destroy lnv_connectserv
end event

