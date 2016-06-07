### Function ###
def set_display_cell_name():
    value = Lv.ViewAttr.getAttr("cell:show-name")
    if value == "True":
        Lv.ViewAttr.setAttrs({"cell:show-name":False})
        Lv.ViewAttr.setAttrs({"cell:show-frame":False})
#       Lv.ViewAttr.setAttrs({"cell:show-origin-mark":False})
    else:
        Lv.ViewAttr.setAttrs({"cell:show-name":True})
        Lv.ViewAttr.setAttrs({"cell:show-frame":True})
#       Lv.ViewAttr.setAttrs({"cell:show-origin-mark":True})
    value = Lv.ViewAttr.getAttr("drawing:cell-depth-end")
    if value == "0":
        Lv.ViewAttr.setAttrs({"drawing:cell-depth-end":1})

    Lv.redrawView()

### Assign key ###
Lv.assignKey("Shift+f", set_display_cell_name, "view")
