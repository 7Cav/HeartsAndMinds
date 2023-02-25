
/* ----------------------------------------------------------------------------
Function: btc_fnc_arsenal_data

Description:
    Making this function work without having to update every set of parameters for the missions since 2023. Patent Pending.

---------------------------------------------------------------------------- */


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