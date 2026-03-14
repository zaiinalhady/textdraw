/*
	#inc <TaxxxQwert>
	#dc  <https://discord.gg/3B4TDC5DMb>
	#pub <TaxxxQwerty>
*/

#include <a_samp>

new HudUiActive[MAX_PLAYERS];
new OnlinePlayers;
new Text:HUDSTATE[29];
new PlayerText:HUDSTATETD[MAX_PLAYERS][5];

public OnGameModeInit()
{
	HUDSTATE[0] = TextDrawCreate(540.500000, 146.000000, "ld_dual:white");
	TextDrawFont(HUDSTATE[0], 4);
	TextDrawLetterSize(HUDSTATE[0], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[0], 101.500000, 33.000000);
	TextDrawSetOutline(HUDSTATE[0], 1);
	TextDrawSetShadow(HUDSTATE[0], 0);
	TextDrawAlignment(HUDSTATE[0], 1);
	TextDrawColor(HUDSTATE[0], 1097458175);
	TextDrawBackgroundColor(HUDSTATE[0], 255);
	TextDrawBoxColor(HUDSTATE[0], 50);
	TextDrawUseBox(HUDSTATE[0], 1);
	TextDrawSetProportional(HUDSTATE[0], 1);
	TextDrawSetSelectable(HUDSTATE[0], 0);

	HUDSTATE[1] = TextDrawCreate(537.000000, 136.000000, "ld_beat:chit");
	TextDrawFont(HUDSTATE[1], 4);
	TextDrawLetterSize(HUDSTATE[1], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[1], 21.000000, 23.500000);
	TextDrawSetOutline(HUDSTATE[1], 1);
	TextDrawSetShadow(HUDSTATE[1], 0);
	TextDrawAlignment(HUDSTATE[1], 1);
	TextDrawColor(HUDSTATE[1], 1097458175);
	TextDrawBackgroundColor(HUDSTATE[1], 255);
	TextDrawBoxColor(HUDSTATE[1], 50);
	TextDrawUseBox(HUDSTATE[1], 1);
	TextDrawSetProportional(HUDSTATE[1], 1);
	TextDrawSetSelectable(HUDSTATE[1], 0);

	HUDSTATE[2] = TextDrawCreate(537.000000, 165.000000, "ld_beat:chit");
	TextDrawFont(HUDSTATE[2], 4);
	TextDrawLetterSize(HUDSTATE[2], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[2], 21.000000, 23.500000);
	TextDrawSetOutline(HUDSTATE[2], 1);
	TextDrawSetShadow(HUDSTATE[2], 0);
	TextDrawAlignment(HUDSTATE[2], 1);
	TextDrawColor(HUDSTATE[2], 1097458175);
	TextDrawBackgroundColor(HUDSTATE[2], 255);
	TextDrawBoxColor(HUDSTATE[2], 50);
	TextDrawUseBox(HUDSTATE[2], 1);
	TextDrawSetProportional(HUDSTATE[2], 1);
	TextDrawSetSelectable(HUDSTATE[2], 0);

	HUDSTATE[3] = TextDrawCreate(548.500000, 140.000000, "ld_dual:white");
	TextDrawFont(HUDSTATE[3], 4);
	TextDrawLetterSize(HUDSTATE[3], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[3], 101.500000, 44.500000);
	TextDrawSetOutline(HUDSTATE[3], 1);
	TextDrawSetShadow(HUDSTATE[3], 0);
	TextDrawAlignment(HUDSTATE[3], 1);
	TextDrawColor(HUDSTATE[3], 1097458175);
	TextDrawBackgroundColor(HUDSTATE[3], 255);
	TextDrawBoxColor(HUDSTATE[3], 50);
	TextDrawUseBox(HUDSTATE[3], 1);
	TextDrawSetProportional(HUDSTATE[3], 1);
	TextDrawSetSelectable(HUDSTATE[3], 0);

	HUDSTATE[4] = TextDrawCreate(537.000000, 184.000000, "ld_beat:chit");
	TextDrawFont(HUDSTATE[4], 4);
	TextDrawLetterSize(HUDSTATE[4], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[4], 22.000000, 26.500000);
	TextDrawSetOutline(HUDSTATE[4], 1);
	TextDrawSetShadow(HUDSTATE[4], 0);
	TextDrawAlignment(HUDSTATE[4], 1);
	TextDrawColor(HUDSTATE[4], 1097458175);
	TextDrawBackgroundColor(HUDSTATE[4], 255);
	TextDrawBoxColor(HUDSTATE[4], 50);
	TextDrawUseBox(HUDSTATE[4], 1);
	TextDrawSetProportional(HUDSTATE[4], 1);
	TextDrawSetSelectable(HUDSTATE[4], 0);

	HUDSTATE[5] = TextDrawCreate(548.500000, 188.000000, "ld_dual:white");
	TextDrawFont(HUDSTATE[5], 4);
	TextDrawLetterSize(HUDSTATE[5], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[5], 101.500000, 18.000000);
	TextDrawSetOutline(HUDSTATE[5], 1);
	TextDrawSetShadow(HUDSTATE[5], 0);
	TextDrawAlignment(HUDSTATE[5], 1);
	TextDrawColor(HUDSTATE[5], 1097458175);
	TextDrawBackgroundColor(HUDSTATE[5], 255);
	TextDrawBoxColor(HUDSTATE[5], 50);
	TextDrawUseBox(HUDSTATE[5], 1);
	TextDrawSetProportional(HUDSTATE[5], 1);
	TextDrawSetSelectable(HUDSTATE[5], 0);

	HUDSTATE[6] = TextDrawCreate(544.000000, 114.000000, "ld_beat:chit");
	TextDrawFont(HUDSTATE[6], 4);
	TextDrawLetterSize(HUDSTATE[6], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[6], 22.000000, 26.500000);
	TextDrawSetOutline(HUDSTATE[6], 1);
	TextDrawSetShadow(HUDSTATE[6], 0);
	TextDrawAlignment(HUDSTATE[6], 1);
	TextDrawColor(HUDSTATE[6], 1097458175);
	TextDrawBackgroundColor(HUDSTATE[6], 255);
	TextDrawBoxColor(HUDSTATE[6], 50);
	TextDrawUseBox(HUDSTATE[6], 1);
	TextDrawSetProportional(HUDSTATE[6], 1);
	TextDrawSetSelectable(HUDSTATE[6], 0);

	HUDSTATE[7] = TextDrawCreate(555.599975, 118.000000, "ld_dual:white");
	TextDrawFont(HUDSTATE[7], 4);
	TextDrawLetterSize(HUDSTATE[7], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[7], 101.500000, 18.200000);
	TextDrawSetOutline(HUDSTATE[7], 1);
	TextDrawSetShadow(HUDSTATE[7], 0);
	TextDrawAlignment(HUDSTATE[7], 1);
	TextDrawColor(HUDSTATE[7], 1097458175);
	TextDrawBackgroundColor(HUDSTATE[7], 255);
	TextDrawBoxColor(HUDSTATE[7], 50);
	TextDrawUseBox(HUDSTATE[7], 1);
	TextDrawSetProportional(HUDSTATE[7], 1);
	TextDrawSetSelectable(HUDSTATE[7], 0);

	HUDSTATE[8] = TextDrawCreate(553.000000, 120.000000, "ld_beat:chit");
	TextDrawFont(HUDSTATE[8], 4);
	TextDrawLetterSize(HUDSTATE[8], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[8], 7.500000, 8.500000);
	TextDrawSetOutline(HUDSTATE[8], 1);
	TextDrawSetShadow(HUDSTATE[8], 0);
	TextDrawAlignment(HUDSTATE[8], 1);
	TextDrawColor(HUDSTATE[8], -1);
	TextDrawBackgroundColor(HUDSTATE[8], 255);
	TextDrawBoxColor(HUDSTATE[8], 50);
	TextDrawUseBox(HUDSTATE[8], 1);
	TextDrawSetProportional(HUDSTATE[8], 1);
	TextDrawSetSelectable(HUDSTATE[8], 0);

	HUDSTATE[9] = TextDrawCreate(551.000000, 126.000000, "ld_beat:chit");
	TextDrawFont(HUDSTATE[9], 4);
	TextDrawLetterSize(HUDSTATE[9], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[9], 12.500000, 8.500000);
	TextDrawSetOutline(HUDSTATE[9], 1);
	TextDrawSetShadow(HUDSTATE[9], 0);
	TextDrawAlignment(HUDSTATE[9], 1);
	TextDrawColor(HUDSTATE[9], -1);
	TextDrawBackgroundColor(HUDSTATE[9], 255);
	TextDrawBoxColor(HUDSTATE[9], 50);
	TextDrawUseBox(HUDSTATE[9], 1);
	TextDrawSetProportional(HUDSTATE[9], 1);
	TextDrawSetSelectable(HUDSTATE[9], 0);

	HUDSTATE[10] = TextDrawCreate(562.000000, 154.000000, "Pekerjaan");
	TextDrawFont(HUDSTATE[10], 2);
	TextDrawLetterSize(HUDSTATE[10], 0.125000, 1.000000);
	TextDrawTextSize(HUDSTATE[10], 645.500000, 17.000000);
	TextDrawSetOutline(HUDSTATE[10], 0);
	TextDrawSetShadow(HUDSTATE[10], 0);
	TextDrawAlignment(HUDSTATE[10], 1);
	TextDrawColor(HUDSTATE[10], -2016478465);
	TextDrawBackgroundColor(HUDSTATE[10], 255);
	TextDrawBoxColor(HUDSTATE[10], 50);
	TextDrawUseBox(HUDSTATE[10], 0);
	TextDrawSetProportional(HUDSTATE[10], 1);
	TextDrawSetSelectable(HUDSTATE[10], 0);

	HUDSTATE[11] = TextDrawCreate(607.000000, 154.000000, "NAME");
	TextDrawFont(HUDSTATE[11], 2);
	TextDrawLetterSize(HUDSTATE[11], 0.125000, 1.000000);
	TextDrawTextSize(HUDSTATE[11], 645.500000, 17.000000);
	TextDrawSetOutline(HUDSTATE[11], 0);
	TextDrawSetShadow(HUDSTATE[11], 0);
	TextDrawAlignment(HUDSTATE[11], 1);
	TextDrawColor(HUDSTATE[11], -2016478465);
	TextDrawBackgroundColor(HUDSTATE[11], 255);
	TextDrawBoxColor(HUDSTATE[11], 50);
	TextDrawUseBox(HUDSTATE[11], 0);
	TextDrawSetProportional(HUDSTATE[11], 1);
	TextDrawSetSelectable(HUDSTATE[11], 0);

	HUDSTATE[12] = TextDrawCreate(559.000000, 123.000000, "ld_beat:chit");
	TextDrawFont(HUDSTATE[12], 4);
	TextDrawLetterSize(HUDSTATE[12], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[12], 4.500000, 5.500000);
	TextDrawSetOutline(HUDSTATE[12], 1);
	TextDrawSetShadow(HUDSTATE[12], 0);
	TextDrawAlignment(HUDSTATE[12], 1);
	TextDrawColor(HUDSTATE[12], -1);
	TextDrawBackgroundColor(HUDSTATE[12], 255);
	TextDrawBoxColor(HUDSTATE[12], 50);
	TextDrawUseBox(HUDSTATE[12], 1);
	TextDrawSetProportional(HUDSTATE[12], 1);
	TextDrawSetSelectable(HUDSTATE[12], 0);

	HUDSTATE[13] = TextDrawCreate(559.000000, 126.000000, "ld_beat:chit");
	TextDrawFont(HUDSTATE[13], 4);
	TextDrawLetterSize(HUDSTATE[13], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[13], 6.000000, 5.500000);
	TextDrawSetOutline(HUDSTATE[13], 1);
	TextDrawSetShadow(HUDSTATE[13], 0);
	TextDrawAlignment(HUDSTATE[13], 1);
	TextDrawColor(HUDSTATE[13], -1);
	TextDrawBackgroundColor(HUDSTATE[13], 255);
	TextDrawBoxColor(HUDSTATE[13], 50);
	TextDrawUseBox(HUDSTATE[13], 1);
	TextDrawSetProportional(HUDSTATE[13], 1);
	TextDrawSetSelectable(HUDSTATE[13], 0);

	HUDSTATE[14] = TextDrawCreate(546.500000, 162.000000, "ld_dual:white");
	TextDrawFont(HUDSTATE[14], 4);
	TextDrawLetterSize(HUDSTATE[14], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[14], 14.000000, 10.000000);
	TextDrawSetOutline(HUDSTATE[14], 1);
	TextDrawSetShadow(HUDSTATE[14], 0);
	TextDrawAlignment(HUDSTATE[14], 1);
	TextDrawColor(HUDSTATE[14], 421075455);
	TextDrawBackgroundColor(HUDSTATE[14], 255);
	TextDrawBoxColor(HUDSTATE[14], 50);
	TextDrawUseBox(HUDSTATE[14], 1);
	TextDrawSetProportional(HUDSTATE[14], 1);
	TextDrawSetSelectable(HUDSTATE[14], 0);

	HUDSTATE[15] = TextDrawCreate(548.500000, 157.000000, "ld_dual:white");
	TextDrawFont(HUDSTATE[15], 4);
	TextDrawLetterSize(HUDSTATE[15], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[15], 10.000000, 10.000000);
	TextDrawSetOutline(HUDSTATE[15], 1);
	TextDrawSetShadow(HUDSTATE[15], 0);
	TextDrawAlignment(HUDSTATE[15], 1);
	TextDrawColor(HUDSTATE[15], 421075455);
	TextDrawBackgroundColor(HUDSTATE[15], 255);
	TextDrawBoxColor(HUDSTATE[15], 50);
	TextDrawUseBox(HUDSTATE[15], 1);
	TextDrawSetProportional(HUDSTATE[15], 1);
	TextDrawSetSelectable(HUDSTATE[15], 0);

	HUDSTATE[16] = TextDrawCreate(549.500000, 158.000000, "ld_dual:white");
	TextDrawFont(HUDSTATE[16], 4);
	TextDrawLetterSize(HUDSTATE[16], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[16], 8.500000, 3.500000);
	TextDrawSetOutline(HUDSTATE[16], 1);
	TextDrawSetShadow(HUDSTATE[16], 0);
	TextDrawAlignment(HUDSTATE[16], 1);
	TextDrawColor(HUDSTATE[16], 1097458175);
	TextDrawBackgroundColor(HUDSTATE[16], 255);
	TextDrawBoxColor(HUDSTATE[16], 50);
	TextDrawUseBox(HUDSTATE[16], 1);
	TextDrawSetProportional(HUDSTATE[16], 1);
	TextDrawSetSelectable(HUDSTATE[16], 0);

	HUDSTATE[17] = TextDrawCreate(592.000000, 152.000000, "ld_beat:chit");
	TextDrawFont(HUDSTATE[17], 4);
	TextDrawLetterSize(HUDSTATE[17], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[17], 12.500000, 13.500000);
	TextDrawSetOutline(HUDSTATE[17], 1);
	TextDrawSetShadow(HUDSTATE[17], 0);
	TextDrawAlignment(HUDSTATE[17], 1);
	TextDrawColor(HUDSTATE[17], -1);
	TextDrawBackgroundColor(HUDSTATE[17], 255);
	TextDrawBoxColor(HUDSTATE[17], 50);
	TextDrawUseBox(HUDSTATE[17], 1);
	TextDrawSetProportional(HUDSTATE[17], 1);
	TextDrawSetSelectable(HUDSTATE[17], 0);

	HUDSTATE[18] = TextDrawCreate(588.000000, 162.000000, "ld_beat:chit");
	TextDrawFont(HUDSTATE[18], 4);
	TextDrawLetterSize(HUDSTATE[18], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[18], 21.500000, 13.500000);
	TextDrawSetOutline(HUDSTATE[18], 1);
	TextDrawSetShadow(HUDSTATE[18], 0);
	TextDrawAlignment(HUDSTATE[18], 1);
	TextDrawColor(HUDSTATE[18], -1);
	TextDrawBackgroundColor(HUDSTATE[18], 255);
	TextDrawBoxColor(HUDSTATE[18], 50);
	TextDrawUseBox(HUDSTATE[18], 1);
	TextDrawSetProportional(HUDSTATE[18], 1);
	TextDrawSetSelectable(HUDSTATE[18], 0);

	HUDSTATE[19] = TextDrawCreate(549.500000, 192.000000, "ld_dual:white");
	TextDrawFont(HUDSTATE[19], 4);
	TextDrawLetterSize(HUDSTATE[19], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[19], 7.000000, 1.500000);
	TextDrawSetOutline(HUDSTATE[19], 1);
	TextDrawSetShadow(HUDSTATE[19], 0);
	TextDrawAlignment(HUDSTATE[19], 1);
	TextDrawColor(HUDSTATE[19], -1);
	TextDrawBackgroundColor(HUDSTATE[19], 255);
	TextDrawBoxColor(HUDSTATE[19], 50);
	TextDrawUseBox(HUDSTATE[19], 1);
	TextDrawSetProportional(HUDSTATE[19], 1);
	TextDrawSetSelectable(HUDSTATE[19], 0);

	HUDSTATE[20] = TextDrawCreate(549.500000, 196.500000, "ld_dual:white");
	TextDrawFont(HUDSTATE[20], 4);
	TextDrawLetterSize(HUDSTATE[20], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[20], 7.000000, 1.500000);
	TextDrawSetOutline(HUDSTATE[20], 1);
	TextDrawSetShadow(HUDSTATE[20], 0);
	TextDrawAlignment(HUDSTATE[20], 1);
	TextDrawColor(HUDSTATE[20], -1);
	TextDrawBackgroundColor(HUDSTATE[20], 255);
	TextDrawBoxColor(HUDSTATE[20], 50);
	TextDrawUseBox(HUDSTATE[20], 1);
	TextDrawSetProportional(HUDSTATE[20], 1);
	TextDrawSetSelectable(HUDSTATE[20], 0);

	HUDSTATE[21] = TextDrawCreate(549.500000, 201.000000, "ld_dual:white");
	TextDrawFont(HUDSTATE[21], 4);
	TextDrawLetterSize(HUDSTATE[21], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[21], 7.000000, 1.500000);
	TextDrawSetOutline(HUDSTATE[21], 1);
	TextDrawSetShadow(HUDSTATE[21], 0);
	TextDrawAlignment(HUDSTATE[21], 1);
	TextDrawColor(HUDSTATE[21], -1);
	TextDrawBackgroundColor(HUDSTATE[21], 255);
	TextDrawBoxColor(HUDSTATE[21], 50);
	TextDrawUseBox(HUDSTATE[21], 1);
	TextDrawSetProportional(HUDSTATE[21], 1);
	TextDrawSetSelectable(HUDSTATE[21], 0);

	HUDSTATE[22] = TextDrawCreate(549.500000, 192.000000, "ld_dual:white");
	TextDrawFont(HUDSTATE[22], 4);
	TextDrawLetterSize(HUDSTATE[22], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[22], 1.500000, 4.500000);
	TextDrawSetOutline(HUDSTATE[22], 1);
	TextDrawSetShadow(HUDSTATE[22], 0);
	TextDrawAlignment(HUDSTATE[22], 1);
	TextDrawColor(HUDSTATE[22], -1);
	TextDrawBackgroundColor(HUDSTATE[22], 255);
	TextDrawBoxColor(HUDSTATE[22], 50);
	TextDrawUseBox(HUDSTATE[22], 1);
	TextDrawSetProportional(HUDSTATE[22], 1);
	TextDrawSetSelectable(HUDSTATE[22], 0);

	HUDSTATE[23] = TextDrawCreate(555.500000, 197.000000, "ld_dual:white");
	TextDrawFont(HUDSTATE[23], 4);
	TextDrawLetterSize(HUDSTATE[23], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[23], 1.500000, 5.500000);
	TextDrawSetOutline(HUDSTATE[23], 1);
	TextDrawSetShadow(HUDSTATE[23], 0);
	TextDrawAlignment(HUDSTATE[23], 1);
	TextDrawColor(HUDSTATE[23], -1);
	TextDrawBackgroundColor(HUDSTATE[23], 255);
	TextDrawBoxColor(HUDSTATE[23], 50);
	TextDrawUseBox(HUDSTATE[23], 1);
	TextDrawSetProportional(HUDSTATE[23], 1);
	TextDrawSetSelectable(HUDSTATE[23], 0);

	HUDSTATE[24] = TextDrawCreate(552.500000, 190.000000, "ld_dual:white");
	TextDrawFont(HUDSTATE[24], 4);
	TextDrawLetterSize(HUDSTATE[24], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[24], 1.500000, 14.500000);
	TextDrawSetOutline(HUDSTATE[24], 1);
	TextDrawSetShadow(HUDSTATE[24], 0);
	TextDrawAlignment(HUDSTATE[24], 1);
	TextDrawColor(HUDSTATE[24], -1);
	TextDrawBackgroundColor(HUDSTATE[24], 255);
	TextDrawBoxColor(HUDSTATE[24], 50);
	TextDrawUseBox(HUDSTATE[24], 1);
	TextDrawSetProportional(HUDSTATE[24], 1);
	TextDrawSetSelectable(HUDSTATE[24], 0);

	HUDSTATE[25] = TextDrawCreate(592.500000, 190.000000, "ld_dual:white");
	TextDrawFont(HUDSTATE[25], 4);
	TextDrawLetterSize(HUDSTATE[25], 0.600000, 2.000000);
	TextDrawTextSize(HUDSTATE[25], 0.800000, 14.500000);
	TextDrawSetOutline(HUDSTATE[25], 1);
	TextDrawSetShadow(HUDSTATE[25], 0);
	TextDrawAlignment(HUDSTATE[25], 1);
	TextDrawColor(HUDSTATE[25], -1);
	TextDrawBackgroundColor(HUDSTATE[25], 255);
	TextDrawBoxColor(HUDSTATE[25], 50);
	TextDrawUseBox(HUDSTATE[25], 1);
	TextDrawSetProportional(HUDSTATE[25], 1);
	TextDrawSetSelectable(HUDSTATE[25], 0);

	HUDSTATE[26] = TextDrawCreate(566.000000, 120.000000, "Player Aktif");
	TextDrawFont(HUDSTATE[26], 2);
	TextDrawLetterSize(HUDSTATE[26], 0.125000, 1.000000);
	TextDrawTextSize(HUDSTATE[26], 645.500000, 17.000000);
	TextDrawSetOutline(HUDSTATE[26], 0);
	TextDrawSetShadow(HUDSTATE[26], 0);
	TextDrawAlignment(HUDSTATE[26], 1);
	TextDrawColor(HUDSTATE[26], -2016478465);
	TextDrawBackgroundColor(HUDSTATE[26], 255);
	TextDrawBoxColor(HUDSTATE[26], 50);
	TextDrawUseBox(HUDSTATE[26], 0);
	TextDrawSetProportional(HUDSTATE[26], 1);
	TextDrawSetSelectable(HUDSTATE[26], 0);

	HUDSTATE[27] = TextDrawCreate(559.000000, 188.000000, "UANG");
	TextDrawFont(HUDSTATE[27], 2);
	TextDrawLetterSize(HUDSTATE[27], 0.125000, 1.000000);
	TextDrawTextSize(HUDSTATE[27], 645.500000, 17.000000);
	TextDrawSetOutline(HUDSTATE[27], 0);
	TextDrawSetShadow(HUDSTATE[27], 0);
	TextDrawAlignment(HUDSTATE[27], 1);
	TextDrawColor(HUDSTATE[27], -2016478465);
	TextDrawBackgroundColor(HUDSTATE[27], 255);
	TextDrawBoxColor(HUDSTATE[27], 50);
	TextDrawUseBox(HUDSTATE[27], 0);
	TextDrawSetProportional(HUDSTATE[27], 1);
	TextDrawSetSelectable(HUDSTATE[27], 0);

	HUDSTATE[28] = TextDrawCreate(595.000000, 188.000000, "BANK");
	TextDrawFont(HUDSTATE[28], 2);
	TextDrawLetterSize(HUDSTATE[28], 0.125000, 1.000000);
	TextDrawTextSize(HUDSTATE[28], 645.500000, 17.000000);
	TextDrawSetOutline(HUDSTATE[28], 0);
	TextDrawSetShadow(HUDSTATE[28], 0);
	TextDrawAlignment(HUDSTATE[28], 1);
	TextDrawColor(HUDSTATE[28], -2016478465);
	TextDrawBackgroundColor(HUDSTATE[28], 255);
	TextDrawBoxColor(HUDSTATE[28], 50);
	TextDrawUseBox(HUDSTATE[28], 0);
	TextDrawSetProportional(HUDSTATE[28], 1);
	TextDrawSetSelectable(HUDSTATE[28], 0);

	return 1;
}

public OnGameModeExit()
{
	TextDrawDestroy(HUDSTATE[0]);
	TextDrawDestroy(HUDSTATE[1]);
	TextDrawDestroy(HUDSTATE[2]);
	TextDrawDestroy(HUDSTATE[3]);
	TextDrawDestroy(HUDSTATE[4]);
	TextDrawDestroy(HUDSTATE[5]);
	TextDrawDestroy(HUDSTATE[6]);
	TextDrawDestroy(HUDSTATE[7]);
	TextDrawDestroy(HUDSTATE[8]);
	TextDrawDestroy(HUDSTATE[9]);
	TextDrawDestroy(HUDSTATE[10]);
	TextDrawDestroy(HUDSTATE[11]);
	TextDrawDestroy(HUDSTATE[12]);
	TextDrawDestroy(HUDSTATE[13]);
	TextDrawDestroy(HUDSTATE[14]);
	TextDrawDestroy(HUDSTATE[15]);
	TextDrawDestroy(HUDSTATE[16]);
	TextDrawDestroy(HUDSTATE[17]);
	TextDrawDestroy(HUDSTATE[18]);
	TextDrawDestroy(HUDSTATE[19]);
	TextDrawDestroy(HUDSTATE[20]);
	TextDrawDestroy(HUDSTATE[21]);
	TextDrawDestroy(HUDSTATE[22]);
	TextDrawDestroy(HUDSTATE[23]);
	TextDrawDestroy(HUDSTATE[24]);
	TextDrawDestroy(HUDSTATE[25]);
	TextDrawDestroy(HUDSTATE[26]);
	TextDrawDestroy(HUDSTATE[27]);
	TextDrawDestroy(HUDSTATE[28]);
	return 1;
}

public OnPlayerConnect(playerid)
{
	OnlinePlayers++;
	HUDSTATETD[playerid][0] = CreatePlayerTextDraw(playerid, 566.000000, 128.000000, "100 Online");
	PlayerTextDrawFont(playerid, HUDSTATETD[playerid][0], 2);
	PlayerTextDrawLetterSize(playerid, HUDSTATETD[playerid][0], 0.129166, 0.699998);
	PlayerTextDrawTextSize(playerid, HUDSTATETD[playerid][0], 645.500000, 17.000000);
	PlayerTextDrawSetOutline(playerid, HUDSTATETD[playerid][0], 0);
	PlayerTextDrawSetShadow(playerid, HUDSTATETD[playerid][0], 0);
	PlayerTextDrawAlignment(playerid, HUDSTATETD[playerid][0], 1);
	PlayerTextDrawColor(playerid, HUDSTATETD[playerid][0], -1);
	PlayerTextDrawBackgroundColor(playerid, HUDSTATETD[playerid][0], 255);
	PlayerTextDrawBoxColor(playerid, HUDSTATETD[playerid][0], 50);
	PlayerTextDrawUseBox(playerid, HUDSTATETD[playerid][0], 0);
	PlayerTextDrawSetProportional(playerid, HUDSTATETD[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, HUDSTATETD[playerid][0], 0);

	HUDSTATETD[playerid][1] = CreatePlayerTextDraw(playerid, 562.000000, 162.000000, "Pengangguran");
	PlayerTextDrawFont(playerid, HUDSTATETD[playerid][1], 1);
	PlayerTextDrawLetterSize(playerid, HUDSTATETD[playerid][1], 0.125000, 1.000000);
	PlayerTextDrawTextSize(playerid, HUDSTATETD[playerid][1], 590.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, HUDSTATETD[playerid][1], 0);
	PlayerTextDrawSetShadow(playerid, HUDSTATETD[playerid][1], 0);
	PlayerTextDrawAlignment(playerid, HUDSTATETD[playerid][1], 1);
	PlayerTextDrawColor(playerid, HUDSTATETD[playerid][1], -1);
	PlayerTextDrawBackgroundColor(playerid, HUDSTATETD[playerid][1], 255);
	PlayerTextDrawBoxColor(playerid, HUDSTATETD[playerid][1], 50);
	PlayerTextDrawUseBox(playerid, HUDSTATETD[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid, HUDSTATETD[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, HUDSTATETD[playerid][1], 0);

	HUDSTATETD[playerid][2] = CreatePlayerTextDraw(playerid, 607.000000, 162.000000, "Taxxx_Extream");
	PlayerTextDrawFont(playerid, HUDSTATETD[playerid][2], 1);
	PlayerTextDrawLetterSize(playerid, HUDSTATETD[playerid][2], 0.112498, 1.049998);
	PlayerTextDrawTextSize(playerid, HUDSTATETD[playerid][2], 637.500000, 17.000000);
	PlayerTextDrawSetOutline(playerid, HUDSTATETD[playerid][2], 0);
	PlayerTextDrawSetShadow(playerid, HUDSTATETD[playerid][2], 0);
	PlayerTextDrawAlignment(playerid, HUDSTATETD[playerid][2], 1);
	PlayerTextDrawColor(playerid, HUDSTATETD[playerid][2], -1);
	PlayerTextDrawBackgroundColor(playerid, HUDSTATETD[playerid][2], 255);
	PlayerTextDrawBoxColor(playerid, HUDSTATETD[playerid][2], 50);
	PlayerTextDrawUseBox(playerid, HUDSTATETD[playerid][2], 0);
	PlayerTextDrawSetProportional(playerid, HUDSTATETD[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, HUDSTATETD[playerid][2], 0);

	HUDSTATETD[playerid][3] = CreatePlayerTextDraw(playerid, 559.000000, 197.000000, "$1.000.000");
	PlayerTextDrawFont(playerid, HUDSTATETD[playerid][3], 1);
	PlayerTextDrawLetterSize(playerid, HUDSTATETD[playerid][3], 0.125000, 0.800000);
	PlayerTextDrawTextSize(playerid, HUDSTATETD[playerid][3], 590.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, HUDSTATETD[playerid][3], 0);
	PlayerTextDrawSetShadow(playerid, HUDSTATETD[playerid][3], 0);
	PlayerTextDrawAlignment(playerid, HUDSTATETD[playerid][3], 1);
	PlayerTextDrawColor(playerid, HUDSTATETD[playerid][3], 852308735);
	PlayerTextDrawBackgroundColor(playerid, HUDSTATETD[playerid][3], 255);
	PlayerTextDrawBoxColor(playerid, HUDSTATETD[playerid][3], 50);
	PlayerTextDrawUseBox(playerid, HUDSTATETD[playerid][3], 0);
	PlayerTextDrawSetProportional(playerid, HUDSTATETD[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, HUDSTATETD[playerid][3], 0);

	HUDSTATETD[playerid][4] = CreatePlayerTextDraw(playerid, 595.000000, 197.000000, "$2.000.000.000");
	PlayerTextDrawFont(playerid, HUDSTATETD[playerid][4], 1);
	PlayerTextDrawLetterSize(playerid, HUDSTATETD[playerid][4], 0.125000, 0.800000);
	PlayerTextDrawTextSize(playerid, HUDSTATETD[playerid][4], 590.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, HUDSTATETD[playerid][4], 0);
	PlayerTextDrawSetShadow(playerid, HUDSTATETD[playerid][4], 0);
	PlayerTextDrawAlignment(playerid, HUDSTATETD[playerid][4], 1);
	PlayerTextDrawColor(playerid, HUDSTATETD[playerid][4], 16777215);
	PlayerTextDrawBackgroundColor(playerid, HUDSTATETD[playerid][4], 255);
	PlayerTextDrawBoxColor(playerid, HUDSTATETD[playerid][4], 50);
	PlayerTextDrawUseBox(playerid, HUDSTATETD[playerid][4], 0);
	PlayerTextDrawSetProportional(playerid, HUDSTATETD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, HUDSTATETD[playerid][4], 0);

	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	OnlinePlayers--;
	PlayerTextDrawDestroy(playerid, HUDSTATETD[playerid][0]);
	PlayerTextDrawDestroy(playerid, HUDSTATETD[playerid][1]);
	PlayerTextDrawDestroy(playerid, HUDSTATETD[playerid][2]);
	PlayerTextDrawDestroy(playerid, HUDSTATETD[playerid][3]);
	PlayerTextDrawDestroy(playerid, HUDSTATETD[playerid][4]);
	return 1;
}

public OnPlayerUpdate(playerid)
{
    if(HudUiActive[playerid] == 0)
    {
        new infofrac[32], string[64];
        if(PlayerInfo[playerid][pMember] == 0) infofrac = "Gak Kerja";
        else format(infofrac, sizeof(infofrac), "%s", FracInfo[PlayerInfo[playerid][pMember]][fName]);

        format(string, sizeof(string), "%d Online", OnlinePlayers);
        PlayerTextDrawSetString(playerid, HUDSTATETD[playerid][0], string);

        format(string, sizeof(string), "%s", infofrac);
        PlayerTextDrawSetString(playerid, HUDSTATETD[playerid][1], string);

        format(string, sizeof(string), "%s", GetName(playerid));
        PlayerTextDrawSetString(playerid, HUDSTATETD[playerid][2], string);

        format(string, sizeof(string), "$%s", FormatMoney(PlayerInfo[playerid][pCash]));
        PlayerTextDrawSetString(playerid, HUDSTATETD[playerid][3], string);

        format(string, sizeof(string), "$%s", FormatMoney(PlayerInfo[playerid][pBank]));
        PlayerTextDrawSetString(playerid, HUDSTATETD[playerid][4], string);
    }
    else if(HudUiActive[playerid] == 1)
    {
        // disable feature
    }
	return 1;
}

public OnPlayerSpawn(playerid)
{
	if(HudUiActive[playerid] == 0)
    {
        for(new i = 0; i < 29; i++)
        {
            TextDrawShowForPlayer(playerid, HUDSTATE[i]);
        }
        for(new i = 0; i < 5; i++)
        {
            PlayerTextDrawShow(playerid, HUDSTATETD[playerid][i]);
        }
    }
    else if(HudUiActive[playerid] == 1)
    {
        for(new i = 0; i < 29; i++)
        {
            TextDrawHideForPlayer(playerid, HUDSTATE[i]);
        }
        for(new i = 0; i < 5; i++)
        {
            PlayerTextDrawHide(playerid, HUDSTATETD[playerid][i]);
        }
    }
    return 1;
}

CMD:uimode(playerid)
{
    if(HudUiActive[playerid] == 0)
    {
        for(new i = 0; i < 29; i++)
        {
            TextDrawHideForPlayer(playerid, HUDSTATE[i]);
        }
        for(new i = 0; i < 5; i++)
        {
            PlayerTextDrawHide(playerid, HUDSTATETD[playerid][i]);
        }
        HudUiActive[playerid] = 1;
        ShowInfo(playerid, "UI MODE : berhasil di hilangkan");
    }
    else if(HudUiActive[playerid] == 1)
    {
        for(new i = 0; i < 29; i++)
        {
            TextDrawShowForPlayer(playerid, HUDSTATE[i]);
        }
        for(new i = 0; i < 5; i++)
        {
            PlayerTextDrawShow(playerid, HUDSTATETD[playerid][i]);
        }
        HudUiActive[playerid] = 0;
        ShowInfo(playerid, "UI MODE : berhasil di munculkan");
    }
    return 1;
}
