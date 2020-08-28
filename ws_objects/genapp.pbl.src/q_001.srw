$PBExportHeader$q_001.srw
forward
global type q_001 from window
end type
type cb_1 from commandbutton within q_001
end type
end forward

global type q_001 from window
integer width = 3566
integer height = 1648
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_1 cb_1
end type
global q_001 q_001

on q_001.create
this.cb_1=create cb_1
this.Control[]={this.cb_1}
end on

on q_001.destroy
destroy(this.cb_1)
end on

type cb_1 from commandbutton within q_001
integer x = 823
integer y = 604
integer width = 457
integer height = 132
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

