### Function ###
def set_display_depth_0():
    Lv.ViewAttr.setAttrs({
        "drawing:depth-begin":0,
        "drawing:depth-end":0,
        "drawing:cell-depth-separation":True,
        "drawing:cell-depth-begin":1,
        "drawing:cell-depth-end":1,
        "cell:show-name":True,
        "cell:show-origin-mark":False,
        "cell:show-frame":True,
        })
    Lv.redrawView()

def set_display_depth_1():
    Lv.ViewAttr.setAttrs({
        "drawing:depth-begin":0,
        "drawing:depth-end":1,
        "drawing:cell-depth-separation":True,
        "drawing:cell-depth-begin":2,
        "drawing:cell-depth-end":2,
        "cell:show-name":True,
        "cell:show-origin-mark":False,
        "cell:show-frame":True,
        })
    Lv.redrawView()

def set_display_depth_2():
    Lv.ViewAttr.setAttrs({
        "drawing:depth-begin":0,
        "drawing:depth-end":2,
        "drawing:cell-depth-separation":True,
        "drawing:cell-depth-begin":3,
        "drawing:cell-depth-end":3,
        "cell:show-name":True,
        "cell:show-origin-mark":False,
        "cell:show-frame":True,
        })
    Lv.redrawView()

def set_display_depth_3():
    Lv.ViewAttr.setAttrs({
        "drawing:depth-begin":0,
        "drawing:depth-end":3,
        "drawing:cell-depth-separation":True,
        "drawing:cell-depth-begin":4,
        "drawing:cell-depth-end":4,
        "cell:show-name":True,
        "cell:show-origin-mark":False,
        "cell:show-frame":True,
        })
    Lv.redrawView()

def set_display_depth_4():
    Lv.ViewAttr.setAttrs({
        "drawing:depth-begin":0,
        "drawing:depth-end":4,
        "drawing:cell-depth-separation":True,
        "drawing:cell-depth-begin":5,
        "drawing:cell-depth-end":5,
        "cell:show-name":True,
        "cell:show-origin-mark":False,
        "cell:show-frame":True,
        })
    Lv.redrawView()

def set_display_depth_5():
    Lv.ViewAttr.setAttrs({
        "drawing:depth-begin":0,
        "drawing:depth-end":5,
        "drawing:cell-depth-separation":True,
        "drawing:cell-depth-begin":6,
        "drawing:cell-depth-end":6,
        "cell:show-name":True,
        "cell:show-origin-mark":False,
        "cell:show-frame":True,
        })
    Lv.redrawView()

def set_display_depth_6():
    Lv.ViewAttr.setAttrs({
        "drawing:depth-begin":0,
        "drawing:depth-end":6,
        "drawing:cell-depth-separation":True,
        "drawing:cell-depth-begin":7,
        "drawing:cell-depth-end":7,
        "cell:show-name":True,
        "cell:show-origin-mark":False,
        "cell:show-frame":True,
        })
    Lv.redrawView()

def set_display_depth_7():
    Lv.ViewAttr.setAttrs({
        "drawing:depth-begin":0,
        "drawing:depth-end":7,
        "drawing:cell-depth-separation":True,
        "drawing:cell-depth-begin":8,
        "drawing:cell-depth-end":8,
        "cell:show-name":True,
        "cell:show-origin-mark":False,
        "cell:show-frame":True,
        })
    Lv.redrawView()

def set_display_depth_8():
    Lv.ViewAttr.setAttrs({
        "drawing:depth-begin":0,
        "drawing:depth-end":8,
        "drawing:cell-depth-separation":True,
        "drawing:cell-depth-begin":9,
        "drawing:cell-depth-end":9,
        "cell:show-name":True,
        "cell:show-origin-mark":False,
        "cell:show-frame":True,
        })
    Lv.redrawView()

def set_display_depth_100():
    Lv.ViewAttr.setAttrs({
        "drawing:depth-begin":0,
        "drawing:depth-end":100,
        "drawing:cell-depth-separation":True,
        "drawing:cell-depth-begin":0,
        "drawing:cell-depth-end":0,
        "cell:show-name":False,
        "cell:show-origin-mark":False,
        "cell:show-frame":False,
        })
    Lv.redrawView()

### Assign key ###
Lv.assignKey("Ctrl+0", set_display_depth_0, "view")
Lv.assignKey("Ctrl+1", set_display_depth_1, "view")
Lv.assignKey("Ctrl+2", set_display_depth_2, "view")
Lv.assignKey("Ctrl+3", set_display_depth_3, "view")
Lv.assignKey("Ctrl+4", set_display_depth_4, "view")
Lv.assignKey("Ctrl+5", set_display_depth_5, "view")
Lv.assignKey("Ctrl+6", set_display_depth_6, "view")
Lv.assignKey("Ctrl+7", set_display_depth_7, "view")
Lv.assignKey("Ctrl+8", set_display_depth_8, "view")
Lv.assignKey("Ctrl+9", set_display_depth_100, "view")
