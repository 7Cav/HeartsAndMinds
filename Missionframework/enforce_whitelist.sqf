scriptName "Enforce Whitelist";

[] call compileFinal preprocessFileLineNumbers "whitelist.sqf";

waitUntil {alive player};
sleep 1;

// add check for mission controller
if (str(player) isEqualTo "missioncontroller" && !(serverCommandAvailable "#kick")) then {

    private _match = false;

    [] call {
        if ((getPlayerUID player) in zeus_whitelist) exitWith {_match = true;};
    };

    if (!_match) then {
        sleep 1;
        endMission "END3";
    };
};

if (str(player) isEqualTo "missioncontroller1" && !(serverCommandAvailable "#kick")) then {

    private _match = false;

    [] call {
        if ((getPlayerUID player) in zeus_whitelist) exitWith {_match = true;};
    };

    if (!_match) then {
        sleep 1;
        endMission "END3";
    };
};
// add check for MP's
if (str(player) isEqualTo "militarypolice" && !(serverCommandAvailable "#kick")) then {

    private _match = false;

    [] call {
        if ((getPlayerUID player) in zeus_whitelist) exitWith {_match = true;};
    };

    if (!_match) then {
        sleep 1;
        endMission "END2";
    };
};

if (str(player) isEqualTo "militarypolice1" && !(serverCommandAvailable "#kick")) then {

    private _match = false;

    [] call {
        if ((getPlayerUID player) in zeus_whitelist) exitWith {_match = true;};
    };

    if (!_match) then {
        sleep 1;
        endMission "END2";
    };
};