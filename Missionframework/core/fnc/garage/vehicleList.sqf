// vehicle is defined by
// [classname, cooldown (minutes), max # available at once, "message", "default spawn location (land/air)", {conditions}, {after create callback}]

GarageVehicles = [

    // MRZR 4
    ["rhsusf_mrzr4_d", 2, -1, "", "land", {}, {}],

    // Transport Truck
    ["B_Truck_01_transport_F", 2, -1, "", "land", {}, {}],

    // Flatbed Truck
    ["B_Truck_01_flatbed_F", 2, -1, "", "land", {}, {}],

    // POLARIS
    ["B_LSV_01_unarmed_F", 2, -1, "", "land", {}, {}],

    // HWWMV (SOCOM 240)
    ["rhsusf_m1165a1_gmv_m134d_m240_socom_d", 2, -1, "", "land", {}, {}],

    // HWWMV (SOCOM MK19)
    ["rhsusf_m1165a1_gmv_mk19_m240_socom_d", 2, -1, "", "land", {}, {}],

    // CROWS SOCOM
    ["rhsusf_m1245_m2crows_socom_d", 2, -1, "", "land", {}, {}],

    //Cool SOCOM Truck
    ["rhsusf_M1238A1_M2_socom_d", 2, -1, "", "land", {}, {}],

    // Plower Stryker
    ["rhsusf_stryker_m1132_m2_d", 2, -1, "", "land", {}, {}],

    // Stryker
    ["rhsusf_stryker_m1132_m2_np_d", 2, -1, "", "land", {}, {}],

    // Abruhms
    ["rhsusf_m1a2sep2d_usarmy", 2, -1, "", "land", {}, {}],

    // Bradley
    ["RHS_M2A3_BUSKIII", 2, -1, "", "land", {}, {}],

    // M1083A1 (M2 Flatbed)
    ["rhsusf_M1083A1P2_B_M2_D_flatbed_fmtv_usarmy", 5, -1, "", "land", {}, {}],

    // M977A4 (Ammo)
    ["rhsusf_M977A4_AMMO_usarmy_d", 5, -1, "", "land", {}, {}],

    // M977A4 (Repair)
    ["rhsusf_M977A4_REPAIR_usarmy_d", 5, -1, "", "land", {}, {}],

    // M1240 (M2 CROWS)
    ["rhsusf_m1240a1_m2crows_usarmy_d", 5, -1, "", "land", {}, {}],

    // M1240 (MK19 CROWS)
    ["rhsusf_m1240a1_mk19crows_usarmy_d", 5, -1, "", "land", {}, {}],

    // M1220 (M2 CROWS)
    ["rhsusf_M1220_M153_M2_usarmy_d", 5, -1, "", "land", {}, {}],

    // M1220 (MK19 CROWS)
    ["rhsusf_M1220_M153_MK19_usarmy_d", 5, -1, "", "land", {}, {}],

    // M1230A1 (MEDEVAC)
    ["rhsusf_M1230a1_usarmy_d", 5, -1, "", "land", {}, {}],

    // Namerra
    ["B_APC_Tracked_01_CRV_F", 5, -1, "", "land", {}, {}],

    // M113 (M2)
    ["rhsusf_m113d_usarmy", 5, -1, "", "land", {}, {}],

    // M113 (MEV)
    ["rhsusf_m113d_usarmy_medical", 5, -1, "Must be in Atlas 1/2 slot to drive", "land", {}, {(_this select 0) setvariable ["ace_medical_isMedicalFacility", true, true];}],
    
    // UGV Stomper
    ["B_UGV_01_F", 5, -1, "", "land", {}, {createVehicleCrew (_this select 0);}],

    // Apache
    ["JS_JC_FA18E", 5, -1, "", "air", {}, {}],

    // H-60 DAP
    ["vtx_MH60M_DAP", 5, -1, "", "air", {}, {}],

    // AH6M
    ["RHS_MELB_AH6M", 5, -1, "", "air", {}, {}],

    // MH6
    ["RHS_MELB_MH6M", 5, -1, "", "air", {}, {}],

    // H-60
    ["vtx_HH60", 5, -1, "", "air", {}, {}],

    // CH-47
    ["RHS_CH_47F_10", 5, -1, "", "air", {}, {}],

    // CH-47 Cargo
    ["RHS_CH_47F_10_cargo", 5, -1, "", "air", {}, {}],

    // A-10C
    ["USAF_A10", 5, -1, "", "air", {}, {}],

    // F-35
    ["USAF_F35A", 5, -1, "", "air", {}, {}],

    // Raptor
    ["USAF_F22_Heavy", 5, -1, "", "air", {}, {}],

    // AH64
    ["RHS_AH64D_wd", 5, -1, "", "air", {}, {}]

];