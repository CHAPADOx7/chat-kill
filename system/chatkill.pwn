#include <a_samp>
#include <ZCMD>

new Text:chatkilltd[3];
main()
{
	print("\n----------------------------------");
    print("");
	print(" System ChatKill by .dox");
	print("");
	print("");
	print("");
	print("");
	print("");
	print("");
	print("DISCORD:CHAPADOx#9424");
	print("----------------------------------\n");
}

public OnGameModeInit()
{
	CreateChatKill();
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
    if(IsPlayerConnected(playerid))
	{
		if(IsPlayerConnected(killerid))
		{
		    new String[30];
		    PlayerPlaySound(killerid,1057,0.0,0.0,0.0);
		    ShowChatKill();
		    format(String, sizeof(String), "%s", Name(killerid));
		    TextDrawSetString(chatkilltd[0], String);
		    
		    TextDrawSetPreviewModel(chatkilltd[1], GetWeapon(killerid, reason));
		    TextDrawColor(chatkilltd[1], -1);
		    format(String, sizeof(String), "%s", Name(playerid));
		    TextDrawColor(chatkilltd[1], -1);
		    ShowChatKill();
		    TextDrawSetString(chatkilltd[2], String);
	     	SetTimer("function_chatkill", 2000, false);
		}
	}
	return 1;
}

CMD:weapon(playerid)
{
	GivePlayerWeapon(playerid, 31, 10000);
	GivePlayerWeapon(playerid, 30, 10000);
	GivePlayerWeapon(playerid, 34, 10000);
	GivePlayerWeapon(playerid, 22, 10000);
	GivePlayerWeapon(playerid, 23, 10000);
	GivePlayerWeapon(playerid, 24, 10000);
	GivePlayerWeapon(playerid, 25, 10000);
	GivePlayerWeapon(playerid, 29, 10000);
	GivePlayerWeapon(playerid, 4, 10000);
	GivePlayerWeapon(playerid, 33, 10000);
	return true;
}

stock ShowChatKill(){

    for(new i=0; i < 3; i++) TextDrawShowForAll(chatkilltd[i]);
    TextDrawColor(chatkilltd[1], -1);
	return true;
}

stock CreateChatKill(){

    chatkilltd[0] = TextDrawCreate(10.000000, 218.583312, "CHAPADOx_");
	TextDrawLetterSize(chatkilltd[0], 0.196875, 0.765833);
	TextDrawAlignment(chatkilltd[0], 1);
	TextDrawColor(chatkilltd[0], -1);
	TextDrawSetShadow(chatkilltd[0], 0);
	TextDrawBackgroundColor(chatkilltd[0], 255);
	TextDrawFont(chatkilltd[0], 1);
	TextDrawSetProportional(chatkilltd[0], 1);

	chatkilltd[1] = TextDrawCreate(81.250000, 205.166656, "");
	TextDrawTextSize(chatkilltd[1], -46.000000, 38.000000);
	TextDrawAlignment(chatkilltd[1], 1);
	TextDrawColor(chatkilltd[1], -1);
	TextDrawSetShadow(chatkilltd[1], 0);
	TextDrawFont(chatkilltd[1], 5);
	TextDrawBackgroundColor(chatkilltd[1], 0);
	TextDrawSetProportional(chatkilltd[1], 0);
	TextDrawSetPreviewModel(chatkilltd[1], 355);
	TextDrawSetPreviewRot(chatkilltd[1], 0.000000, 0.000000, 0.000000, 2.000000);

	chatkilltd[2] = TextDrawCreate(80.950012, 220.333312, "JUQUINHA");
	TextDrawLetterSize(chatkilltd[2], 0.196875, 0.765833);
	TextDrawAlignment(chatkilltd[2], 1);
	TextDrawColor(chatkilltd[2], -1);
	TextDrawSetShadow(chatkilltd[2], 0);
	TextDrawBackgroundColor(chatkilltd[2], 255);
	TextDrawFont(chatkilltd[2], 1);
	TextDrawSetProportional(chatkilltd[2], 1);

	return true;
}

stock GetWeapon(playerid, weapontype)
{
	weapontype = GetPlayerWeapon(playerid);
	switch(weapontype)
	{
	    case 0: weapontype = 331;
		case 1: weapontype = 331;
		case 2: weapontype = 333;
		case 3: weapontype = 334;
		case 4: weapontype = 335;
		case 5: weapontype = 336;
		case 6: weapontype = 337;
		case 7: weapontype = 338;
		case 8: weapontype = 339;
		case 9: weapontype = 341;
		case 10: weapontype = 321;
		case 11: weapontype = 322;
		case 12: weapontype = 323;
		case 13: weapontype = 324;
		case 14: weapontype = 325;
		case 15: weapontype = 326;
		case 16: weapontype = 342;
		case 17: weapontype = 343;
		case 18: weapontype = 344;
		case 22: weapontype = 346;
		case 23: weapontype = 347;
		case 24: weapontype = 348;
		case 25: weapontype = 349;
		case 26: weapontype = 350;
		case 27: weapontype = 351;
		case 28: weapontype = 352;
		case 29: weapontype = 353;
		case 30: weapontype = 355;
		case 31: weapontype = 356;
		case 32: weapontype = 372;
		case 33: weapontype = 357;
		case 34: weapontype = 358;
		case 35: weapontype = 359;
		case 36: weapontype = 360;
		case 37: weapontype = 361;
		case 38: weapontype = 362;
		case 39: weapontype = 363;
		case 40: weapontype = 364;
		case 41: weapontype = 365;
		case 42: weapontype = 366;
		case 43: weapontype = 367;
	}
	return weapontype;
}
forward function_chatkill();
public function_chatkill()
{
	for(new i=0; i < 3; i++) TextDrawHideForAll(chatkilltd[i]);
	return true;
}
stock Name(playerid)
{
	new Nome[MAX_PLAYER_NAME];
	GetPlayerName(playerid, Nome, MAX_PLAYER_NAME);
	return Nome;
}
