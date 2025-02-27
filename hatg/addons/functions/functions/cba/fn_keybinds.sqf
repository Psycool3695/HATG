#include "..\..\script_component.hpp"
#include "\a3\ui_f\hpp\defineDIKCodes.inc"

#define KEYBIND_HEADER Hide Among The Grass
#define KEYBIND_HEADER_QUOTE QUOTE(KEYBIND_HEADER)

// Not used anymore

[KEYBIND_HEADER_QUOTE, "hatg_keybind_refresh", ["$STR_HATG_Keybind_Refresh", "$STR_HATG_Keybind_Refresh_Info"], {
    call HATG_fnc_createDisplay;

    private _width = ["hatg_setting_ui_x", 0.45] call HATG_fnc_getVariable;
    private _height = ["hatg_setting_ui_y", 1.7] call HATG_fnc_getVariable;
    [_width, _height] call HATG_fnc_handleDisplayPosition;

    [player] call HATG_fnc_handleDisplayText;
}, {}, [-1, [false, false, false]]] call CBA_fnc_addKeybind;

[KEYBIND_HEADER_QUOTE, "hatg_keybind_toggle", ["$STR_HATG_Keybind_Toggle", "$STR_HATG_Keybind_Toggle_Info"], {
    call HATG_fnc_toggleUI;
}, {}, [-1, [false, false, false]]] call CBA_fnc_addKeybind;