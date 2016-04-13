### For AAA ###

### Set Layer ###
## Diff/Poly/CA ##
RX = "1/0"
PC = "2/0"
CA = "3/0"

## Metal/Via ##
M1 = "11/0"; V1 = "21/0";
M2 = "12/0"; V2 = "22/0";
M3 = "13/0"; V3 = "23/0";
M4 = "14/0"; V4 = "24/0";
M5 = "15/0";

### Function ###
def Toggle_Layer(layer_name):
    visible = Lv.getLayerStyle(layer_name, "visible")
    if visible == True:
        Lv.setLayerStyle(layer_name, visible=False)
    else:
        Lv.setLayerStyle(layer_name, visible=True)
    Lv.redrawView()

def Layer_ALL_On():
    Lv.setLayerStyle("*", visible=True)
    Lv.redrawView()

def Layer_ALL_Off():
    Lv.setLayerStyle("*", visible=False)
    Lv.redrawView()

### Assign key ###
## Diff/Poly/CA ##
Lv.assignKey("-", "Toggle_Layer(RX)", "view")
Lv.assignKey("^", "Toggle_Layer(PC)", "view")
Lv.assignKey("\\", "Toggle_Layer(CA)", "view")

## Metal ##
Lv.assignKey("1", "Toggle_Layer(M1)", "view")
Lv.assignKey("2", "Toggle_Layer(M2)", "view")
Lv.assignKey("3", "Toggle_Layer(M3)", "view")
Lv.assignKey("4", "Toggle_Layer(M4)", "view")
Lv.assignKey("5", "Toggle_Layer(M5)", "view")

## Via ##
Lv.assignKey("Alt+1", "Toggle_Layer(V1)", "view")
Lv.assignKey("Alt+2", "Toggle_Layer(V2)", "view")
Lv.assignKey("Alt+3", "Toggle_Layer(V3)", "view")
Lv.assignKey("Alt+4", "Toggle_Layer(V4)", "view")

## All Layer ##
Lv.assignKey("9", Layer_ALL_On, "view")
Lv.assignKey("0", Layer_ALL_Off, "view")
