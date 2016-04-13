### Function ###
def set_display_grid_0p011um():
    Lv.ViewAttr.setAttrs({
        "grid:display-xy-separation":False,
        "grid:display-x":"0.011um",
        "grid:display-y":"0.011um",
        })
    Lv.redrawView()

def set_display_grid_0p022um():
    Lv.ViewAttr.setAttrs({
        "grid:display-xy-separation":False,
        "grid:display-x":"0.022um",
        "grid:display-y":"0.022um",
        })
    Lv.redrawView()

def set_display_grid_0p033um():
    Lv.ViewAttr.setAttrs({
        "grid:display-xy-separation":False,
        "grid:display-x":"0.033um",
        "grid:display-y":"0.033um",
        })
    Lv.redrawView()

def set_display_grid_0p001um():
    Lv.ViewAttr.setAttrs({
        "grid:display-xy-separation":False,
        "grid:display-x":"0.001um",
        "grid:display-y":"0.001um",
        })
    Lv.redrawView()

def set_display_grid_0p066um():
    Lv.ViewAttr.setAttrs({
        "grid:display-xy-separation":False,
        "grid:display-x":"0.066um",
        "grid:display-y":"0.066um",
        })
    Lv.redrawView()

### Assign key ###
Lv.assignKey("Shift+F1", set_display_grid_0p011um, "global")
Lv.assignKey("Shift+F2", set_display_grid_0p022um, "global")
Lv.assignKey("Shift+F3", set_display_grid_0p033um, "global")
Lv.assignKey("Shift+F4", set_display_grid_0p001um, "global")
Lv.assignKey("Shift+F6", set_display_grid_0p066um, "global")
