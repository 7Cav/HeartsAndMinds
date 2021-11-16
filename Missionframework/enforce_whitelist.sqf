scriptName "Enforce Whitelist";

[] call compileFinal preprocessFileLineNumbers "whitelist.sqf";

waitUntil {alive player};
sleep 1;

// add check for mission controller
if (str(player) isEqualTo "missioncontroller") then {

    private _match = false;

    [] call {
        if ((getPlayerUID player) in cav_whitelisted_steamids) exitWith {_match = true;};
    };

    if (!_match) then {
        sleep 1;
        endMission "END3";
    };
};

if (str(player) isEqualTo "missioncontroller1") then {

    private _match = false;

    [] call {
        if ((getPlayerUID player) in cav_whitelisted_steamids) exitWith {_match = true;};
    };

    if (!_match) then {
        sleep 1;
        endMission "END3";
    };
};
// add check for MP's
if (str(player) isEqualTo "militarypolice") then {

    private _match = false;

    [] call {
        if ((getPlayerUID player) in MP_whitelisted_steamids) exitWith {_match = true;};
    };

    if (!_match) then {
        sleep 1;
        endMission "END2";
    };
};

if (str(player) isEqualTo "militarypolice1") then {

    private _match = false;

    [] call {
        if ((getPlayerUID player) in MP_whitelisted_steamids) exitWith {_match = true;};
    };

    if (!_match) then {
        sleep 1;
        endMission "END2";
    };
};