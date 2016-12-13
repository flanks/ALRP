waitUntil {!isNull player && player isEqualTo player};
if (player diarySubjectExists "controls") exitWith {};

player createDiarySubject ["credits","Credits"];
player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","General Rules"];
player createDiarySubject ["policerules","Police Procedures/Rules"];
player createDiarySubject ["safezones","Safe Zones (No Killing)"];
//player createDiarySubject ["civrules","Civilian Rules"];
player createDiarySubject ["illegalitems","Illegal Activity"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controls","Controls"];

/*  Example
    player createDiaryRecord ["", //Container
        [
            "", //Subsection
                "
TEXT HERE<br/><br/>
                "
        ]
    ];
*/

    player createDiaryRecord ["credits",
        [
            "SecretOne Altis Life",
                "
Hope you enjoy SecretOne's Altis Life server<br/><br/>
                "
        ]
    ];

    player createDiaryRecord["changelog",
        [
            "SecretOne Changelog",
                "
You can find our changelog at secretone.net forums.<br/><br/>
                "
        ]
    ];
        player createDiaryRecord ["serverrules",
        [
            "Exploits",
                "
                You can read our rules on the SecretOne forums. <br/><br/>
                "
        ]
    ];

    player createDiaryRecord["safezones",
        [
            "Safe Zones",
                "
If bombing (bombing can be intentionally exploding a vehicle), robbing, or killing occurs around these or in these areas it is punishable by ban.<br/><br/>
Any vehicle spawn (shop or garage)<br/>
Any ATM<br/>
Any weapon shop<br/>
All Police HQs<br/>
                "
        ]
    ];

// Controls Section

    player createDiaryRecord ["controls",
        [
            "Police and medic controls",
                "
F: Vehicle siren.<br/>
L: Speed radar (police only and weapon is P07 Suppressed).<br/>
Left Shift + L: Activates siren lights.<br/>
Left Shift + R: Restrain (police only).<br/><br/>
                "
        ]
    ];
    player createDiaryRecord ["controls",
        [
            "Civilian controls",
                "
Left Shift + G: Knock out / stun (Weapon required. Used for robbing).<br/>
Spacebar: Place storage container.<br/><br/>
                "
        ]
    ];
    player createDiaryRecord ["controls",
        [
            "General controls",
                "
Y: Open Player Menu.<br/>
U: Lock and unlock vehicles and houses.<br/>
T: Vehicle trunk and house virtual item storage.<br/>
Left Shift + B: Surrender (hands on head).<br/>
Left Windows: Main interaction key. Used for interacting with objects like vehicles, houses, ATMs, and restrained players. Can be rebound to a single key like H by pressing ESC->Configure->Controls->Custom->Use Action 10.<br/>
Left Shift + H: Holsters the weapon in your hands.<br/>
Left Ctrl + H: Revert holster action.<br/>
Shift + Spacebar: Jump.<br/>
Left Shift + O: (un)fade sound (ear plugs).<br/><br/>
              "
        ]
    ];
