import re

### Set ###
userhome_dir = Lv.app.getHomeDir()
private_dir = Lv.app.getPrefDir()

### Function / Assign key ###
## Source startup script ##
def source_startup():
    print '#info# Source "%s/startup.py"' % private_dir
    Lv.execScript(private_dir + "/startup.py")
Lv.assignKey("F5", source_startup)

## Select Tool ##
def selectTool_measure():
    Lv.selectTool("measure", subtool_name="edge-vertex")
Lv.assignKey("Shift+r", selectTool_measure)

def selectTool_info():
    Lv.selectTool("info", subtool_name="element")
Lv.assignKey("Shift+c", selectTool_info)

## Synchronize ##
Lv.assignKey("Shift+s", Lv.syncAllViews)
Lv.assignKey("Shift+a", Lv.unsyncAllViews)

## Brightness ##
def Brightness_m2():
    Lv.setLayerBrightnessLevel(-2)
Lv.assignKey("F2", Brightness_m2)

def Brightness_0():
    Lv.setLayerBrightnessLevel(0)
Lv.assignKey("F3", Brightness_0)

### Source Script ###
Lv.execScript(private_dir + "/script/set_display_grid.py")
Lv.execScript(private_dir + "/script/set_display_depth.py")
Lv.execScript(private_dir + "/script/set_display_cell_name.py")

### Source Script (for product) ###
layerset_name = Lv.LayerSet.getCurrentLayerSet()
pattern = r".*(AAA|BBB).*"
matchOB = re.match(pattern, layerset_name)
if matchOB:
    if matchOB.group(1) == "AAA":
        Lv.execScript(private_dir + "/script/toggle_layer_AAA.py")
        print '#info# Source "%s/script/toggle_layer_AAA.py"' % private_dir
    elif matchOB.group(1) == "BBB":
        Lv.execScript(private_dir + "/script/toggle_layer_BBB.py")
        print '#info# Source "%s/script/toggle_layer_BBB.py"' % private_dir
