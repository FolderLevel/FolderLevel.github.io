#############################################################################
# Generated by PAGE version 7.6
#  in conjunction with Tcl version 8.6
#  Jan 26, 2023 04:35:25 PM CST  platform: Windows NT
set vTcl(timestamp) ""
if {![info exists vTcl(borrow)]} {
    ::vTcl::MessageBox -title Error -message  "You must open project files from within PAGE."
    exit}


set image_list { 
}
vTcl:create_project_images $image_list   ;# In image.tcl

if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_font_dft_desc)  TkDefaultFont
set vTcl(actual_gui_font_dft_name)  TkDefaultFont
set vTcl(actual_gui_font_text_desc)  TkTextFont
set vTcl(actual_gui_font_text_name)  TkTextFont
set vTcl(actual_gui_font_fixed_desc)  TkFixedFont
set vTcl(actual_gui_font_fixed_name)  TkFixedFont
set vTcl(actual_gui_font_menu_desc)  TkMenuFont
set vTcl(actual_gui_font_menu_name)  TkMenuFont
set vTcl(actual_gui_font_tooltip_desc)  TkDefaultFont
set vTcl(actual_gui_font_tooltip_name)  TkDefaultFont
set vTcl(actual_gui_font_treeview_desc)  TkDefaultFont
set vTcl(actual_gui_font_treeview_name)  TkDefaultFont
########################################### 
set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) gray40
set vTcl(analog_color_p) #c3c3c3
set vTcl(analog_color_m) beige
set vTcl(tabfg1) black
set vTcl(tabfg2) black
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(actual_gui_menu_active_fg)  #000000
########################################### 
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 1
set vTcl(mode) Relative
}




proc vTclWindow.top1 {base} {
    global vTcl
    if {$base == ""} {
        set base .top1
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    set target $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -background $vTcl(actual_gui_bg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 600x450+143+185
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1924 1061
    wm minsize $top 120 1
    wm overrideredirect $top 0
    wm resizable $top 0 0
    wm deiconify $top
    set toptitle "AlogAnalyze"
    wm title $top $toptitle
    namespace eval ::widgets::${top}::ClassOption {}
    set ::widgets::${top}::ClassOption(-toptitle) $toptitle
    vTcl:DefineAlias "$top" "mainPanel" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    button "$top.but47" \
        -activebackground $vTcl(analog_color_m) -activeforeground black \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text "Data" 
    vTcl:DefineAlias "$top.but47" "dataButton" vTcl:WidgetProc "mainPanel" 1
### SPOT dump_widget_opt A
    button "$top.but48" \
        -activebackground $vTcl(analog_color_m) -activeforeground black \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text "Show" 
    vTcl:DefineAlias "$top.but48" "showButton" vTcl:WidgetProc "mainPanel" 1
### SPOT dump_widget_opt A
    button "$top.but49" \
        -activebackground $vTcl(analog_color_m) -activeforeground black \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text "Quit" 
    vTcl:DefineAlias "$top.but49" "quitButton" vTcl:WidgetProc "mainPanel" 1
### SPOT dump_widget_opt A
    label "$top.lab50" \
        -activebackground #f9f9f9 -activeforeground SystemButtonText \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text "File Path:" 
    vTcl:DefineAlias "$top.lab50" "filePathLabel" vTcl:WidgetProc "mainPanel" 1
### SPOT dump_widget_opt A
    text "$top.tex51" \
        -background white -font "TkTextFont" -foreground black -height 22 \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -insertbackground black -selectbackground #c4c4c4 \
        -selectforeground black -width 474 -wrap word 
    $top.tex51 configure -font "TkTextFont"
    $top.tex51 insert end text
    vTcl:DefineAlias "$top.tex51" "filePathText" vTcl:WidgetProc "mainPanel" 1
### SPOT dump_widget_opt A
    label "$top.lab53" \
        -activebackground #f9f9f9 -activeforeground SystemButtonText \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text "Regex:" 
    vTcl:DefineAlias "$top.lab53" "regexLabel" vTcl:WidgetProc "mainPanel" 1
### SPOT dump_widget_opt A
    vTcl::widgets::ttk::scrolledtext::CreateCmd "$top.scr54" \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 75 -highlightbackground $vTcl(actual_gui_bg) \
        -highlightcolor black -width 125 
    vTcl:DefineAlias "$top.scr54" "regexText" vTcl:WidgetProc "mainPanel" 1
### SPOT dump_widget_opt A

    $top.scr54.01 configure -background white \
        -font TkTextFont \
        -foreground black \
        -height 3 \
        -highlightbackground #d9d9d9 \
        -highlightcolor black \
        -insertbackground black \
        -insertborderwidth 3 \
        -selectbackground #c4c4c4 \
        -selectforeground black \
        -width 10 \
        -wrap none
    label "$top.lab55" \
        -activebackground #f9f9f9 -activeforeground SystemButtonText \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text "Data Index: " 
    vTcl:DefineAlias "$top.lab55" "dataIndexLabel" vTcl:WidgetProc "mainPanel" 1
### SPOT dump_widget_opt A
    text "$top.tex56" \
        -background white -font "TkTextFont" -foreground black -height 22 \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -insertbackground black -selectbackground #c4c4c4 \
        -selectforeground black -width 474 -wrap word 
    $top.tex56 configure -font "TkTextFont"
    $top.tex56 insert end text
    vTcl:DefineAlias "$top.tex56" "dataIndexText" vTcl:WidgetProc "mainPanel" 1
### SPOT dump_widget_opt A
    label "$top.lab57" \
        -activebackground #f9f9f9 -activeforeground SystemButtonText \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text "Data Type:" 
    vTcl:DefineAlias "$top.lab57" "dataTypeLabel" vTcl:WidgetProc "mainPanel" 1
### SPOT dump_widget_opt A
    text "$top.tex58" \
        -background white -font "TkTextFont" -foreground black -height 22 \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -insertbackground black -selectbackground #c4c4c4 \
        -selectforeground black -width 474 -wrap word 
    $top.tex58 configure -font "TkTextFont"
    $top.tex58 insert end text
    vTcl:DefineAlias "$top.tex58" "dataTypeText" vTcl:WidgetProc "mainPanel" 1
### SPOT dump_widget_opt A
    label "$top.lab59" \
        -activebackground #f9f9f9 -activeforeground SystemButtonText \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text "Info:" 
    vTcl:DefineAlias "$top.lab59" "infoLabel" vTcl:WidgetProc "mainPanel" 1
### SPOT dump_widget_opt A
    vTcl::widgets::ttk::scrolledtext::CreateCmd "$top.scr60" \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 75 -highlightbackground $vTcl(actual_gui_bg) \
        -highlightcolor black -width 125 
    vTcl:DefineAlias "$top.scr60" "infoText" vTcl:WidgetProc "mainPanel" 1
### SPOT dump_widget_opt A

    $top.scr60.01 configure -background white \
        -font TkTextFont \
        -foreground black \
        -height 3 \
        -highlightbackground #d9d9d9 \
        -highlightcolor black \
        -insertbackground black \
        -insertborderwidth 3 \
        -selectbackground #c4c4c4 \
        -selectforeground black \
        -width 10 \
        -wrap none
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.but47 \
        -in $top -x 0 -relx 0.283 -y 0 -rely 0.911 -width 49 -relwidth 0 \
        -height 28 -relheight 0 -anchor nw -bordermode ignore 
    place $top.but48 \
        -in $top -x 0 -relx 0.583 -y 0 -rely 0.911 -width 49 -relwidth 0 \
        -height 28 -relheight 0 -anchor nw -bordermode ignore 
    place $top.but49 \
        -in $top -x 0 -relx 0.833 -y 0 -rely 0.911 -width 49 -relwidth 0 \
        -height 28 -relheight 0 -anchor nw -bordermode ignore 
    place $top.lab50 \
        -in $top -x 0 -relx 0.05 -y 0 -rely 0.044 -width 0 -relwidth 0.095 \
        -height 0 -relheight 0.051 -anchor nw -bordermode ignore 
    place $top.tex51 \
        -in $top -x 0 -relx 0.183 -y 0 -rely 0.044 -width 0 -relwidth 0.79 \
        -height 0 -relheight 0.049 -anchor nw -bordermode ignore 
    place $top.lab53 \
        -in $top -x 0 -relx 0.05 -y 0 -rely 0.111 -width 0 -relwidth 0.112 \
        -height 0 -relheight 0.051 -anchor nw -bordermode ignore 
    place $top.scr54 \
        -in $top -x 0 -relx 0.183 -y 0 -rely 0.111 -width 0 -relwidth 0.792 \
        -height 0 -relheight 0.287 -anchor nw -bordermode ignore 
    place $top.lab55 \
        -in $top -x 0 -relx 0.05 -y 0 -rely 0.422 -width 0 -relwidth 0.128 \
        -height 0 -relheight 0.051 -anchor nw -bordermode ignore 
    place $top.tex56 \
        -in $top -x 0 -relx 0.183 -y 0 -rely 0.422 -width 0 -relwidth 0.79 \
        -height 0 -relheight 0.049 -anchor nw -bordermode ignore 
    place $top.lab57 \
        -in $top -x 0 -relx 0.05 -y 0 -rely 0.489 -width 0 -relwidth 0.128 \
        -height 0 -relheight 0.051 -anchor nw -bordermode ignore 
    place $top.tex58 \
        -in $top -x 0 -relx 0.183 -y 0 -rely 0.489 -width 0 -relwidth 0.79 \
        -height 0 -relheight 0.049 -anchor nw -bordermode ignore 
    place $top.lab59 \
        -in $top -x 0 -relx 0.05 -y 0 -rely 0.556 -width 0 -relwidth 0.095 \
        -height 0 -relheight 0.051 -anchor nw -bordermode ignore 
    place $top.scr60 \
        -in $top -x 0 -relx 0.183 -y 0 -rely 0.556 -width 0 -relwidth 0.792 \
        -height 0 -relheight 0.331 -anchor nw -bordermode ignore 

    vTcl:FireEvent $base <<Ready>>
}

proc 36 {args} {return 1}


Window show .
set btop1 ""
if {$vTcl(borrow)} {
    set btop1 .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop1 $vTcl(tops)] != -1} {
        set btop1 .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop1
Window show .top1 $btop1
if {$vTcl(borrow)} {
    $btop1 configure -background plum
}

