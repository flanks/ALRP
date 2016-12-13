[] spawn {   
     // Add a line in this array to add a message    
     _messages = [ "Our servers relies on community donations. Consider donating at www.secretone.net and get some in-game and teamspeak perks.", 
                   "Don't forget to register on our forum at secretone.net or log in to our teamspeak on ts.secretone.net to get the latest updates and stay in touch with us and other community members."
                 ]; 
     _refreshTime = 600; // Time between each message (in seconds)   
     _i = 0; 
     while {true} do { 
         _count = count _messages; 
         _message = _messages select _i; 
         hint parseText format["<t color='#ffffff' size='2'>SecretOne Life</t><br/><br/>%1", _message]; 
         sleep _refreshTime; 
         if (_i == (_count - 1)) then { 
             _i = 0; 
         } else { 
             _i = _i + 1; 
         }; 
     }; 
 };