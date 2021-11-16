enableSaving [false, false];

[] call compile preprocessFileLineNumbers "core\def\mission.sqf";
[] call compile preprocessFileLineNumbers "define_mod.sqf";


if (isServer) then {
    [] call compile preprocessFileLineNumbers "core\init_server.sqf";

    _save_handle = [
        {
            [] call btc_fnc_db_save;
        }, 300, []
    
    ] call CBA_fnc_addPerFrameHandler;

};

[] call compile preprocessFileLineNumbers "core\init_common.sqf";

if (!isDedicated && hasInterface) then {
    [] call compile preprocessFileLineNumbers "core\init_player.sqf";
};

if (!isDedicated && !hasInterface) then {
    [] call compile preprocessFileLineNumbers "core\init_headless.sqf";
};

[] call KPPLM_fnc_postInit;