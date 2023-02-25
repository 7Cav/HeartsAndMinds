
/* ----------------------------------------------------------------------------
Function: btc_fnc_arsenal_data

Description:
    Add virtual weapons to an object (e.g., ammo box) with restriction. Virtual items can be selected in the BIS/ACE3 Arsenal.

Parameters:
    _box - Object to which items will be added. [Object]
    _arsenalType - _arsenalType < 3 add BIS Arsenal, _arsenalType > 0 add ACE3 Arsenal. [Number]
    _arsenalRestrict - 1 to add to Arsenal _arsenalData, other to restrict Arsenal with _arsenalData. [Number]
    _arsenalData - Array of weapons, magazines and items. [Array]

Returns:

Examples:
    (begin example)
        [btc_gear_object, btc_p_arsenal_Type, btc_p_arsenal_Restrict, btc_custom_arsenal] call btc_fnc_arsenal_data;
    (end)

Author:
    1kuemmel1

---------------------------------------------------------------------------- */

params [
    ["_box", objNull, [objNull]],
    ["_arsenalType", 0, [0]],
    ["_arsenalRestrict", 0, [0]],
    ["_arsenalData", [], [[]]]
];
_arsenalData params [["_weapons", [], [[]]], ["_magazines", [], [[]]], ["_items", [], [[]]], ["_backpacks", [], [[]]]];

//BIS Arsenal
if (_arsenalType < 3) then {
    if (_arsenalRestrict isEqualTo 1) then {
        //add
        [_box, _weapons, false, false] call BIS_fnc_addVirtualWeaponCargo;
        [_box, _magazines, false, false] call BIS_fnc_addVirtualMagazineCargo;
        [_box, _items, false, false] call BIS_fnc_addVirtualItemCargo;
        [_box, _backpacks, false, false] call BIS_fnc_addVirtualBackpackCargo;
    };

    // DO NOT WORK FOR BIS ARSENAL
    if (_arsenalRestrict in [2, 3]) then {
        //remove
        [_box, _weapons, false] call BIS_fnc_removeVirtualWeaponCargo;
        [_box, _magazines, false] call BIS_fnc_removeVirtualMagazineCargo;
        [_box, _items, false] call BIS_fnc_removeVirtualItemCargo;
        [_box, _backpacks, false] call BIS_fnc_removeVirtualBackpackCargo;
    };
};

//ACE Arsenal
if (_arsenalType > 0) then {
    //add
    if (_arsenalRestrict isEqualTo 1) then {
        private _aceAdd = [];
        {_aceAdd append _x;} forEach [_weapons, _magazines, _items, _backpacks];
        [_box, _aceAdd] call ace_arsenal_fnc_addVirtualItems;
    };

    //remove
    if (_arsenalRestrict in [2, 3]) then {
        private _aceRemove = [];
        {_aceRemove append _x;} forEach [_weapons, _magazines, _items, _backpacks];
        [_box, _aceRemove] call ace_arsenal_fnc_removeVirtualItems;
    };
};

// Gather RUGBY List
_cavBlacklistItems = [];   
_blacklistCFGS = "true" configClasses (configfile >> "CfgWeapons");   
  
{   
    _itemName = _x call BIS_fnc_displayName;   
    _configName = configName _x;  
 
    if ((["RUGBY",_itemName] call BIS_fnc_inString)) then { 

                _cavBlacklistItems PushBack _configName; 

        };   
} forEach _blacklistCFGS; 

// Remove Items from Default Arsenal
[btc_gear_object,_cavBlacklistItems,false] call ace_arsenal_fnc_removeVirtualItems;