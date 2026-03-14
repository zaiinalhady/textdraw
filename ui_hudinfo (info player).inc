#include <YSI_Coding\y_hooks>

new Text: STATSINFO[46];
new PlayerText: KANTONG[MAX_PLAYERS];
new PlayerText: SERVERTIME[MAX_PLAYERS];
new PlayerText: NAMAIC[MAX_PLAYERS];
new PlayerText: JOBPLAYER[MAX_PLAYERS];
new PlayerText: STATUSPLAYER[MAX_PLAYERS];
new PlayerText: UANGBANK[MAX_PLAYERS];
new TextdrawUpdateTimer[MAX_PLAYERS];

hook OnPlayerConnect(playerid)
{
    CreateTdPlayerInfo(playerid);
    return 1;
}

hook OnGameModeInit()
{
    CreateTdInfo(); 
    return 1;
}

hook OnPlayerSpawn(playerid)
{
    showinfo(playerid);
    SetTimerEx("_returnSetStringTimerPlayers", 100, true, "d", playerid);         
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    if (TextdrawUpdateTimer[playerid])
    {
        KillTimer(TextdrawUpdateTimer[playerid]);
        TextdrawUpdateTimer[playerid] = 0;
    }
    return 1;
}

CreateTdInfo()
{
    STATSINFO[0] = TextDrawCreate(503.000, 132.000, "LD_BEAT:chit");
    TextDrawTextSize(STATSINFO[0], 23.000, 27.000);
    TextDrawAlignment(STATSINFO[0], 1);
    TextDrawColor(STATSINFO[0], 255);
    TextDrawSetShadow(STATSINFO[0], 0);
    TextDrawSetOutline(STATSINFO[0], 0);
    TextDrawBackgroundColor(STATSINFO[0], 255);
    TextDrawFont(STATSINFO[0], 4);
    TextDrawSetProportional(STATSINFO[0], 1);

    STATSINFO[1] = TextDrawCreate(575.000, 108.000, "LD_BEAT:chit");
    TextDrawTextSize(STATSINFO[1], 24.000, 27.000);
    TextDrawAlignment(STATSINFO[1], 1);
    TextDrawColor(STATSINFO[1], 255);
    TextDrawSetShadow(STATSINFO[1], 0);
    TextDrawSetOutline(STATSINFO[1], 0);
    TextDrawBackgroundColor(STATSINFO[1], 255);
    TextDrawFont(STATSINFO[1], 4);
    TextDrawSetProportional(STATSINFO[1], 1);

    STATSINFO[2] = TextDrawCreate(514.000, 156.000, "LD_BEAT:chit");
    TextDrawTextSize(STATSINFO[2], 23.000, 27.000);
    TextDrawAlignment(STATSINFO[2], 1);
    TextDrawColor(STATSINFO[2], 255);
    TextDrawSetShadow(STATSINFO[2], 0);
    TextDrawSetOutline(STATSINFO[2], 0);
    TextDrawBackgroundColor(STATSINFO[2], 255);
    TextDrawFont(STATSINFO[2], 4);
    TextDrawSetProportional(STATSINFO[2], 1);

    STATSINFO[3] = TextDrawCreate(575.000, 156.000, "LD_BEAT:chit");
    TextDrawTextSize(STATSINFO[3], 23.000, 27.000);
    TextDrawAlignment(STATSINFO[3], 1);
    TextDrawColor(STATSINFO[3], 255);
    TextDrawSetShadow(STATSINFO[3], 0);
    TextDrawSetOutline(STATSINFO[3], 0);
    TextDrawBackgroundColor(STATSINFO[3], 255);
    TextDrawFont(STATSINFO[3], 4);
    TextDrawSetProportional(STATSINFO[3], 1);

    STATSINFO[4] = TextDrawCreate(575.000, 131.000, "LD_BEAT:chit");
    TextDrawTextSize(STATSINFO[4], 23.000, 27.000);
    TextDrawAlignment(STATSINFO[4], 1);
    TextDrawColor(STATSINFO[4], 255);
    TextDrawSetShadow(STATSINFO[4], 0);
    TextDrawSetOutline(STATSINFO[4], 0);
    TextDrawBackgroundColor(STATSINFO[4], 255);
    TextDrawFont(STATSINFO[4], 4);
    TextDrawSetProportional(STATSINFO[4], 1);

    STATSINFO[5] = TextDrawCreate(513.000, 107.000, "LD_BEAT:chit");
    TextDrawTextSize(STATSINFO[5], 25.000, 29.000);
    TextDrawAlignment(STATSINFO[5], 1);
    TextDrawColor(STATSINFO[5], 255);
    TextDrawSetShadow(STATSINFO[5], 0);
    TextDrawSetOutline(STATSINFO[5], 0);
    TextDrawBackgroundColor(STATSINFO[5], 255);
    TextDrawFont(STATSINFO[5], 4);
    TextDrawSetProportional(STATSINFO[5], 1);

    STATSINFO[6] = TextDrawCreate(518.000, 120.000, "LD_BEAT:chit");
    TextDrawTextSize(STATSINFO[6], 8.000, 6.000);
    TextDrawAlignment(STATSINFO[6], 1);
    TextDrawColor(STATSINFO[6], 16777215);
    TextDrawSetShadow(STATSINFO[6], 0);
    TextDrawSetOutline(STATSINFO[6], 0);
    TextDrawBackgroundColor(STATSINFO[6], 255);
    TextDrawFont(STATSINFO[6], 4);
    TextDrawSetProportional(STATSINFO[6], 1);

    STATSINFO[7] = TextDrawCreate(541.000, 113.000, "Player ID");
    TextDrawLetterSize(STATSINFO[7], 0.194, 0.799);
    TextDrawAlignment(STATSINFO[7], 1);
    TextDrawColor(STATSINFO[7], -421070081);
    TextDrawSetShadow(STATSINFO[7], 0);
    TextDrawSetOutline(STATSINFO[7], 0);
    TextDrawBackgroundColor(STATSINFO[7], 150);
    TextDrawFont(STATSINFO[7], 1);
    TextDrawSetProportional(STATSINFO[7], 1);

    STATSINFO[8] = TextDrawCreate(540.000, 160.000, "Status");
    TextDrawLetterSize(STATSINFO[8], 0.224, 0.796);
    TextDrawAlignment(STATSINFO[8], 1);
    TextDrawColor(STATSINFO[8], -421070081);
    TextDrawSetShadow(STATSINFO[8], 0);
    TextDrawSetOutline(STATSINFO[8], 0);
    TextDrawBackgroundColor(STATSINFO[8], 150);
    TextDrawFont(STATSINFO[8], 1);
    TextDrawSetProportional(STATSINFO[8], 1);

    STATSINFO[9] = TextDrawCreate(598.000, 135.000, "Pekerjaan");
    TextDrawLetterSize(STATSINFO[9], 0.194, 0.898);
    TextDrawAlignment(STATSINFO[9], 1);
    TextDrawColor(STATSINFO[9], -421070081);
    TextDrawSetShadow(STATSINFO[9], 0);
    TextDrawSetOutline(STATSINFO[9], 0);
    TextDrawBackgroundColor(STATSINFO[9], 150);
    TextDrawFont(STATSINFO[9], 1);
    TextDrawSetProportional(STATSINFO[9], 1);

    STATSINFO[10] = TextDrawCreate(528.000, 135.000, "Nama Lengkap");
    TextDrawLetterSize(STATSINFO[10], 0.165, 0.898);
    TextDrawAlignment(STATSINFO[10], 1);
    TextDrawColor(STATSINFO[10], -421070081);
    TextDrawSetShadow(STATSINFO[10], 0);
    TextDrawSetOutline(STATSINFO[10], 0);
    TextDrawBackgroundColor(STATSINFO[10], 150);
    TextDrawFont(STATSINFO[10], 1);
    TextDrawSetProportional(STATSINFO[10], 1);

    STATSINFO[11] = TextDrawCreate(599.000, 160.000, "Uang Bank");
    TextDrawLetterSize(STATSINFO[11], 0.186, 0.697);
    TextDrawAlignment(STATSINFO[11], 1);
    TextDrawColor(STATSINFO[11], -421070081);
    TextDrawSetShadow(STATSINFO[11], 0);
    TextDrawSetOutline(STATSINFO[11], 0);
    TextDrawBackgroundColor(STATSINFO[11], 150);
    TextDrawFont(STATSINFO[11], 1);
    TextDrawSetProportional(STATSINFO[11], 1);

    STATSINFO[12] = TextDrawCreate(598.000, 112.000, "Server Time"); 
    TextDrawLetterSize(STATSINFO[12], 0.172, 0.898);
    TextDrawAlignment(STATSINFO[12], 1);
    TextDrawColor(STATSINFO[12], -421070081);
    TextDrawSetShadow(STATSINFO[12], 0);
    TextDrawSetOutline(STATSINFO[12], 0);
    TextDrawBackgroundColor(STATSINFO[12], 150);
    TextDrawFont(STATSINFO[12], 1);
    TextDrawSetProportional(STATSINFO[12], 1);

    STATSINFO[13] = TextDrawCreate(589.000, 140.000, "LD_SPAC:white");
    TextDrawTextSize(STATSINFO[13], 1.000, 5.000);
    TextDrawAlignment(STATSINFO[13], 1);
    TextDrawColor(STATSINFO[13], 16777215);
    TextDrawSetShadow(STATSINFO[13], 0);
    TextDrawSetOutline(STATSINFO[13], 0);
    TextDrawBackgroundColor(STATSINFO[13], 255);
    TextDrawFont(STATSINFO[13], 4);
    TextDrawSetProportional(STATSINFO[13], 1);

    STATSINFO[14] = TextDrawCreate(525.000, 166.000, "LD_SPAC:white");
    TextDrawTextSize(STATSINFO[14], 1.000, 1.000);
    TextDrawAlignment(STATSINFO[14], 1);
    TextDrawColor(STATSINFO[14], 255);
    TextDrawSetShadow(STATSINFO[14], 0);
    TextDrawSetOutline(STATSINFO[14], 0);
    TextDrawBackgroundColor(STATSINFO[14], 255);
    TextDrawFont(STATSINFO[14], 4);
    TextDrawSetProportional(STATSINFO[14], 1);

    STATSINFO[15] = TextDrawCreate(522.000, 168.000, "/");
    TextDrawLetterSize(STATSINFO[15], 0.250, 0.796);
    TextDrawAlignment(STATSINFO[15], 1);
    TextDrawColor(STATSINFO[15], 16777215);
    TextDrawSetShadow(STATSINFO[15], 0);
    TextDrawSetOutline(STATSINFO[15], 0);
    TextDrawBackgroundColor(STATSINFO[15], 150);
    TextDrawFont(STATSINFO[15], 1);
    TextDrawSetProportional(STATSINFO[15], 1);

    STATSINFO[16] = TextDrawCreate(519.000, 115.000, "LD_BEAT:chit");
    TextDrawTextSize(STATSINFO[16], 5.000, 6.000);
    TextDrawAlignment(STATSINFO[16], 1);
    TextDrawColor(STATSINFO[16], 16777215);
    TextDrawSetShadow(STATSINFO[16], 0);
    TextDrawSetOutline(STATSINFO[16], 0);
    TextDrawBackgroundColor(STATSINFO[16], 255);
    TextDrawFont(STATSINFO[16], 4);
    TextDrawSetProportional(STATSINFO[16], 1);

    STATSINFO[17] = TextDrawCreate(583.000, 140.000, "LD_SPAC:white");
    TextDrawTextSize(STATSINFO[17], 1.000, 6.000);
    TextDrawAlignment(STATSINFO[17], 1);
    TextDrawColor(STATSINFO[17], 16777215);
    TextDrawSetShadow(STATSINFO[17], 0);
    TextDrawSetOutline(STATSINFO[17], 0);
    TextDrawBackgroundColor(STATSINFO[17], 255);
    TextDrawFont(STATSINFO[17], 4);
    TextDrawSetProportional(STATSINFO[17], 1);

    STATSINFO[18] = TextDrawCreate(584.000, 140.000, "LD_SPAC:white");
    TextDrawTextSize(STATSINFO[18], 5.000, 1.000);
    TextDrawAlignment(STATSINFO[18], 1);
    TextDrawColor(STATSINFO[18], 16777215);
    TextDrawSetShadow(STATSINFO[18], 0);
    TextDrawSetOutline(STATSINFO[18], 0);
    TextDrawBackgroundColor(STATSINFO[18], 255);
    TextDrawFont(STATSINFO[18], 4);
    TextDrawSetProportional(STATSINFO[18], 1);

    STATSINFO[19] = TextDrawCreate(582.000, 143.000, "LD_SPAC:white");
    TextDrawTextSize(STATSINFO[19], 9.000, 6.000);
    TextDrawAlignment(STATSINFO[19], 1);
    TextDrawColor(STATSINFO[19], 16777215);
    TextDrawSetShadow(STATSINFO[19], 0);
    TextDrawSetOutline(STATSINFO[19], 0);
    TextDrawBackgroundColor(STATSINFO[19], 255);
    TextDrawFont(STATSINFO[19], 4);
    TextDrawSetProportional(STATSINFO[19], 1);

    STATSINFO[20] = TextDrawCreate(529.000, 168.000, "/");
    TextDrawLetterSize(STATSINFO[20], -0.238, 0.796);
    TextDrawAlignment(STATSINFO[20], 1);
    TextDrawColor(STATSINFO[20], 16777215);
    TextDrawSetShadow(STATSINFO[20], 0);
    TextDrawSetOutline(STATSINFO[20], 0);
    TextDrawBackgroundColor(STATSINFO[20], 150);
    TextDrawFont(STATSINFO[20], 1);
    TextDrawSetProportional(STATSINFO[20], 1);

    STATSINFO[21] = TextDrawCreate(521.000, 161.000, "LD_BEAT:chit");
    TextDrawTextSize(STATSINFO[21], 9.000, 11.000);
    TextDrawAlignment(STATSINFO[21], 1);
    TextDrawColor(STATSINFO[21], 16777215);
    TextDrawSetShadow(STATSINFO[21], 0);
    TextDrawSetOutline(STATSINFO[21], 0);
    TextDrawBackgroundColor(STATSINFO[21], 255);
    TextDrawFont(STATSINFO[21], 4);
    TextDrawSetProportional(STATSINFO[21], 1);

    STATSINFO[22] = TextDrawCreate(581.000, 166.000, "LD_SPAC:white");
    TextDrawTextSize(STATSINFO[22], 10.000, 7.000);
    TextDrawAlignment(STATSINFO[22], 1);
    TextDrawColor(STATSINFO[22], 16777215);
    TextDrawSetShadow(STATSINFO[22], 0);
    TextDrawSetOutline(STATSINFO[22], 0);
    TextDrawBackgroundColor(STATSINFO[22], 255);
    TextDrawFont(STATSINFO[22], 4);
    TextDrawSetProportional(STATSINFO[22], 1);

    STATSINFO[23] = TextDrawCreate(578.000, 111.000, "LD_BEAT:chit");
    TextDrawTextSize(STATSINFO[23], 18.000, 21.000);
    TextDrawAlignment(STATSINFO[23], 1);
    TextDrawColor(STATSINFO[23], 16777215);
    TextDrawSetShadow(STATSINFO[23], 0);
    TextDrawSetOutline(STATSINFO[23], 0);
    TextDrawBackgroundColor(STATSINFO[23], 255);
    TextDrawFont(STATSINFO[23], 4);
    TextDrawSetProportional(STATSINFO[23], 1);

    STATSINFO[24] = TextDrawCreate(580.000, 113.000, "LD_BEAT:chit");
    TextDrawTextSize(STATSINFO[24], 14.000, 17.000);
    TextDrawAlignment(STATSINFO[24], 1);
    TextDrawColor(STATSINFO[24], 255);
    TextDrawSetShadow(STATSINFO[24], 0);
    TextDrawSetOutline(STATSINFO[24], 0);
    TextDrawBackgroundColor(STATSINFO[24], 255);
    TextDrawFont(STATSINFO[24], 4);
    TextDrawSetProportional(STATSINFO[24], 1);

    STATSINFO[25] = TextDrawCreate(526.000, 117.000, "LD_BEAT:chit");
    TextDrawTextSize(STATSINFO[25], 5.000, 6.000);
    TextDrawAlignment(STATSINFO[25], 1);
    TextDrawColor(STATSINFO[25], 16777215);
    TextDrawSetShadow(STATSINFO[25], 0);
    TextDrawSetOutline(STATSINFO[25], 0);
    TextDrawBackgroundColor(STATSINFO[25], 255);
    TextDrawFont(STATSINFO[25], 4);
    TextDrawSetProportional(STATSINFO[25], 1);

    STATSINFO[26] = TextDrawCreate(511.000, 138.000, "LD_BEAT:chit");
    TextDrawTextSize(STATSINFO[26], 7.000, 8.000);
    TextDrawAlignment(STATSINFO[26], 1);
    TextDrawColor(STATSINFO[26], 16777215);
    TextDrawSetShadow(STATSINFO[26], 0);
    TextDrawSetOutline(STATSINFO[26], 0);
    TextDrawBackgroundColor(STATSINFO[26], 255);
    TextDrawFont(STATSINFO[26], 4);
    TextDrawSetProportional(STATSINFO[26], 1);

    STATSINFO[27] = TextDrawCreate(581.000, 114.000, "LD_BEAT:chit");
    TextDrawTextSize(STATSINFO[27], 12.000, 15.000);
    TextDrawAlignment(STATSINFO[27], 1);
    TextDrawColor(STATSINFO[27], 16777215);
    TextDrawSetShadow(STATSINFO[27], 0);
    TextDrawSetOutline(STATSINFO[27], 0);
    TextDrawBackgroundColor(STATSINFO[27], 255);
    TextDrawFont(STATSINFO[27], 4);
    TextDrawSetProportional(STATSINFO[27], 1);

    STATSINFO[28] = TextDrawCreate(524.000, 122.000, "LD_BEAT:chit");
    TextDrawTextSize(STATSINFO[28], 8.000, 6.000);
    TextDrawAlignment(STATSINFO[28], 1);
    TextDrawColor(STATSINFO[28], 16777215);
    TextDrawSetShadow(STATSINFO[28], 0);
    TextDrawSetOutline(STATSINFO[28], 0);
    TextDrawBackgroundColor(STATSINFO[28], 255);
    TextDrawFont(STATSINFO[28], 4);
    TextDrawSetProportional(STATSINFO[28], 1);

    STATSINFO[29] = TextDrawCreate(522.000, 163.000, "LD_BEAT:chit");
    TextDrawTextSize(STATSINFO[29], 7.000, 7.000);
    TextDrawAlignment(STATSINFO[29], 1);
    TextDrawColor(STATSINFO[29], 255);
    TextDrawSetShadow(STATSINFO[29], 0);
    TextDrawSetOutline(STATSINFO[29], 0);
    TextDrawBackgroundColor(STATSINFO[29], 255);
    TextDrawFont(STATSINFO[29], 4);
    TextDrawSetProportional(STATSINFO[29], 1);

    STATSINFO[30] = TextDrawCreate(509.000, 144.000, "LD_BEAT:chit");
    TextDrawTextSize(STATSINFO[30], 11.000, 9.000);
    TextDrawAlignment(STATSINFO[30], 1);
    TextDrawColor(STATSINFO[30], 16777215);
    TextDrawSetShadow(STATSINFO[30], 0);
    TextDrawSetOutline(STATSINFO[30], 0);
    TextDrawBackgroundColor(STATSINFO[30], 255);
    TextDrawFont(STATSINFO[30], 4);
    TextDrawSetProportional(STATSINFO[30], 1);

    STATSINFO[31] = TextDrawCreate(523.000, 166.000, "LD_SPAC:white");
    TextDrawTextSize(STATSINFO[31], 5.000, 1.000);
    TextDrawAlignment(STATSINFO[31], 1);
    TextDrawColor(STATSINFO[31], 16777215);
    TextDrawSetShadow(STATSINFO[31], 0);
    TextDrawSetOutline(STATSINFO[31], 0);
    TextDrawBackgroundColor(STATSINFO[31], 255);
    TextDrawFont(STATSINFO[31], 4);
    TextDrawSetProportional(STATSINFO[31], 1);

    STATSINFO[32] = TextDrawCreate(585.000, 123.000, "/");
    TextDrawLetterSize(STATSINFO[32], 0.246, -0.503);
    TextDrawAlignment(STATSINFO[32], 1);
    TextDrawColor(STATSINFO[32], 255);
    TextDrawSetShadow(STATSINFO[32], 0);
    TextDrawSetOutline(STATSINFO[32], 0);
    TextDrawBackgroundColor(STATSINFO[32], 150);
    TextDrawFont(STATSINFO[32], 1);
    TextDrawSetProportional(STATSINFO[32], 1);

    STATSINFO[33] = TextDrawCreate(585.000, 120.000, "/");
    TextDrawLetterSize(STATSINFO[33], 0.229, 0.495);
    TextDrawAlignment(STATSINFO[33], 1);
    TextDrawColor(STATSINFO[33], 255);
    TextDrawSetShadow(STATSINFO[33], 0);
    TextDrawSetOutline(STATSINFO[33], 0);
    TextDrawBackgroundColor(STATSINFO[33], 150);
    TextDrawFont(STATSINFO[33], 1);
    TextDrawSetProportional(STATSINFO[33], 1);

    STATSINFO[34] = TextDrawCreate(582.000, 145.000, "LD_SPAC:white");
    TextDrawTextSize(STATSINFO[34], 4.000, 1.000);
    TextDrawAlignment(STATSINFO[34], 1);
    TextDrawColor(STATSINFO[34], 255);
    TextDrawSetShadow(STATSINFO[34], 0);
    TextDrawSetOutline(STATSINFO[34], 0);
    TextDrawBackgroundColor(STATSINFO[34], 255);
    TextDrawFont(STATSINFO[34], 4);
    TextDrawSetProportional(STATSINFO[34], 1);

    STATSINFO[35] = TextDrawCreate(587.000, 145.000, "LD_SPAC:white");
    TextDrawTextSize(STATSINFO[35], 4.000, 1.000);
    TextDrawAlignment(STATSINFO[35], 1);
    TextDrawColor(STATSINFO[35], 255);
    TextDrawSetShadow(STATSINFO[35], 0);
    TextDrawSetOutline(STATSINFO[35], 0);
    TextDrawBackgroundColor(STATSINFO[35], 255);
    TextDrawFont(STATSINFO[35], 4);
    TextDrawSetProportional(STATSINFO[35], 1);

    STATSINFO[36] = TextDrawCreate(581.000, 168.000, "LD_SPAC:white");
    TextDrawTextSize(STATSINFO[36], 10.000, 1.000);
    TextDrawAlignment(STATSINFO[36], 1);
    TextDrawColor(STATSINFO[36], 255);
    TextDrawSetShadow(STATSINFO[36], 0);
    TextDrawSetOutline(STATSINFO[36], 0);
    TextDrawBackgroundColor(STATSINFO[36], 255);
    TextDrawFont(STATSINFO[36], 4);
    TextDrawSetProportional(STATSINFO[36], 1);

    STATSINFO[37] = TextDrawCreate(577.000, 158.000, "LD_SPAC:white");
    TextDrawTextSize(STATSINFO[37], 59.000, 22.000);
    TextDrawAlignment(STATSINFO[37], 1);
    TextDrawColor(STATSINFO[37], 16579634);
    TextDrawSetShadow(STATSINFO[37], 0);
    TextDrawSetOutline(STATSINFO[37], 0);
    TextDrawBackgroundColor(STATSINFO[37], 255);
    TextDrawFont(STATSINFO[37], 4);
    TextDrawSetProportional(STATSINFO[37], 1);

    STATSINFO[38] = TextDrawCreate(577.000, 134.000, "LD_SPAC:white");
    TextDrawTextSize(STATSINFO[38], 59.000, 22.000);
    TextDrawAlignment(STATSINFO[38], 1);
    TextDrawColor(STATSINFO[38], 16579634);
    TextDrawSetShadow(STATSINFO[38], 0);
    TextDrawSetOutline(STATSINFO[38], 0);
    TextDrawBackgroundColor(STATSINFO[38], 255);
    TextDrawFont(STATSINFO[38], 4);
    TextDrawSetProportional(STATSINFO[38], 1);

    STATSINFO[39] = TextDrawCreate(577.000, 110.000, "LD_SPAC:white");
    TextDrawTextSize(STATSINFO[39], 59.000, 22.000);
    TextDrawAlignment(STATSINFO[39], 1);
    TextDrawColor(STATSINFO[39], 16579634);
    TextDrawSetShadow(STATSINFO[39], 0);
    TextDrawSetOutline(STATSINFO[39], 0);
    TextDrawBackgroundColor(STATSINFO[39], 255);
    TextDrawFont(STATSINFO[39], 4);
    TextDrawSetProportional(STATSINFO[39], 1);

    STATSINFO[40] = TextDrawCreate(513.000, 110.000, "LD_SPAC:white");
    TextDrawTextSize(STATSINFO[40], 62.000, 22.000);
    TextDrawAlignment(STATSINFO[40], 1);
    TextDrawColor(STATSINFO[40], 16579634);
    TextDrawSetShadow(STATSINFO[40], 0);
    TextDrawSetOutline(STATSINFO[40], 0);
    TextDrawBackgroundColor(STATSINFO[40], 255);
    TextDrawFont(STATSINFO[40], 4);
    TextDrawSetProportional(STATSINFO[40], 1);

    STATSINFO[41] = TextDrawCreate(513.000, 158.000, "LD_SPAC:white");
    TextDrawTextSize(STATSINFO[41], 62.000, 22.000);
    TextDrawAlignment(STATSINFO[41], 1);
    TextDrawColor(STATSINFO[41], 16579634);
    TextDrawSetShadow(STATSINFO[41], 0);
    TextDrawSetOutline(STATSINFO[41], 0);
    TextDrawBackgroundColor(STATSINFO[41], 255);
    TextDrawFont(STATSINFO[41], 4);
    TextDrawSetProportional(STATSINFO[41], 1);

    STATSINFO[42] = TextDrawCreate(503.000, 134.000, "LD_SPAC:white");
    TextDrawTextSize(STATSINFO[42], 72.000, 22.000);
    TextDrawAlignment(STATSINFO[42], 1);
    TextDrawColor(STATSINFO[42], 16645170);
    TextDrawSetShadow(STATSINFO[42], 0);
    TextDrawSetOutline(STATSINFO[42], 0);
    TextDrawBackgroundColor(STATSINFO[42], 255);
    TextDrawFont(STATSINFO[42], 4);
    TextDrawSetProportional(STATSINFO[42], 1);

    STATSINFO[43] = TextDrawCreate(506.000, 153.000, "LD_BEAT:chit");
    TextDrawTextSize(STATSINFO[43], 13.000, 32.000);
    TextDrawAlignment(STATSINFO[43], 1);
    TextDrawColor(STATSINFO[43], 16645426);
    TextDrawSetShadow(STATSINFO[43], 0);
    TextDrawSetOutline(STATSINFO[43], 0);
    TextDrawBackgroundColor(STATSINFO[43], 255);
    TextDrawFont(STATSINFO[43], 4);
    TextDrawSetProportional(STATSINFO[43], 1);

    STATSINFO[44] = TextDrawCreate(506.000, 105.000, "LD_BEAT:chit");
    TextDrawTextSize(STATSINFO[44], 13.000, 32.000);
    TextDrawAlignment(STATSINFO[44], 1);
    TextDrawColor(STATSINFO[44], 16645426);
    TextDrawSetShadow(STATSINFO[44], 0);
    TextDrawSetOutline(STATSINFO[44], 0);
    TextDrawBackgroundColor(STATSINFO[44], 255);
    TextDrawFont(STATSINFO[44], 4);
    TextDrawSetProportional(STATSINFO[44], 1);

    STATSINFO[45] = TextDrawCreate(496.000, 129.000, "LD_BEAT:chit");
    TextDrawTextSize(STATSINFO[45], 13.000, 32.000);
    TextDrawAlignment(STATSINFO[45], 1);
    TextDrawColor(STATSINFO[45], 16645426);
    TextDrawSetShadow(STATSINFO[45], 0);
    TextDrawSetOutline(STATSINFO[45], 0);
    TextDrawBackgroundColor(STATSINFO[45], 255);
    TextDrawFont(STATSINFO[45], 4);
    TextDrawSetProportional(STATSINFO[45], 1);  
    return 1; 
}

CreateTdPlayerInfo(playerid)
{
    KANTONG[playerid] = CreatePlayerTextDraw(playerid, 546.000, 122.000, "187");
    PlayerTextDrawLetterSize(playerid, KANTONG[playerid], 0.250, 0.796);
    PlayerTextDrawAlignment(playerid, KANTONG[playerid], 1);
    PlayerTextDrawColor(playerid, KANTONG[playerid], -1);
    PlayerTextDrawSetShadow(playerid, KANTONG[playerid], 0);
    PlayerTextDrawSetOutline(playerid, KANTONG[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, KANTONG[playerid], 150);
    PlayerTextDrawFont(playerid, KANTONG[playerid], 1);
    PlayerTextDrawSetProportional(playerid, KANTONG[playerid], 1);

    SERVERTIME[playerid] = CreatePlayerTextDraw(playerid, 599.000, 121.000, "11:30:00");
    PlayerTextDrawLetterSize(playerid, SERVERTIME[playerid], 0.228, 0.799);
    PlayerTextDrawAlignment(playerid, SERVERTIME[playerid], 1);
    PlayerTextDrawColor(playerid, SERVERTIME[playerid], -1);
    PlayerTextDrawSetShadow(playerid, SERVERTIME[playerid], 0);
    PlayerTextDrawSetOutline(playerid, SERVERTIME[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, SERVERTIME[playerid], 150);
    PlayerTextDrawFont(playerid, SERVERTIME[playerid], 1);
    PlayerTextDrawSetProportional(playerid, SERVERTIME[playerid], 1);

    NAMAIC[playerid] = CreatePlayerTextDraw(playerid, 526.000, 144.000, "Kota BARUNA RAYA");
    PlayerTextDrawLetterSize(playerid, NAMAIC[playerid], 0.165, 0.898);
    PlayerTextDrawAlignment(playerid, NAMAIC[playerid], 1);
    PlayerTextDrawColor(playerid, NAMAIC[playerid], -1);
    PlayerTextDrawSetShadow(playerid, NAMAIC[playerid], 0);
    PlayerTextDrawSetOutline(playerid, NAMAIC[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, NAMAIC[playerid], 150);
    PlayerTextDrawFont(playerid, NAMAIC[playerid], 1);
    PlayerTextDrawSetProportional(playerid, NAMAIC[playerid], 1);

    JOBPLAYER[playerid] = CreatePlayerTextDraw(playerid, 597.000, 144.000, "Supir Angkot");
    PlayerTextDrawLetterSize(playerid, JOBPLAYER[playerid], 0.178, 0.898);
    PlayerTextDrawAlignment(playerid, JOBPLAYER[playerid], 1);
    PlayerTextDrawColor(playerid, JOBPLAYER[playerid], -1);
    PlayerTextDrawSetShadow(playerid, JOBPLAYER[playerid], 0);
    PlayerTextDrawSetOutline(playerid, JOBPLAYER[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, JOBPLAYER[playerid], 150);
    PlayerTextDrawFont(playerid, JOBPLAYER[playerid], 1);
    PlayerTextDrawSetProportional(playerid, JOBPLAYER[playerid], 1);

    STATUSPLAYER[playerid] = CreatePlayerTextDraw(playerid, 536.000, 168.000, "Kepolisian");
    PlayerTextDrawLetterSize(playerid, STATUSPLAYER[playerid], 0.209, 0.898);
    PlayerTextDrawAlignment(playerid, STATUSPLAYER[playerid], 1);
    PlayerTextDrawColor(playerid, STATUSPLAYER[playerid], -1);
    PlayerTextDrawSetShadow(playerid, STATUSPLAYER[playerid], 0);
    PlayerTextDrawSetOutline(playerid, STATUSPLAYER[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, STATUSPLAYER[playerid], 150);
    PlayerTextDrawFont(playerid, STATUSPLAYER[playerid], 1);
    PlayerTextDrawSetProportional(playerid, STATUSPLAYER[playerid], 1);

    UANGBANK[playerid] = CreatePlayerTextDraw(playerid, 597.000, 168.000, "$11.506.987");
    PlayerTextDrawLetterSize(playerid, UANGBANK[playerid], 0.187, 0.898);
    PlayerTextDrawAlignment(playerid, UANGBANK[playerid], 1);
    PlayerTextDrawColor(playerid, UANGBANK[playerid], 16711935);
    PlayerTextDrawSetShadow(playerid, UANGBANK[playerid], 0);
    PlayerTextDrawSetOutline(playerid, UANGBANK[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, UANGBANK[playerid], 150);
    PlayerTextDrawFont(playerid, UANGBANK[playerid], 1);
    PlayerTextDrawSetProportional(playerid, UANGBANK[playerid], 1);
    return 1;
}

showinfo(playerid)
{
    for(new i = 0; i < 46; i++)  
    {
        TextDrawShowForPlayer(playerid, STATSINFO[i]);
    }
    PlayerTextDrawShow(playerid, JOBPLAYER[playerid]);
    PlayerTextDrawShow(playerid, NAMAIC[playerid]);
    PlayerTextDrawShow(playerid, KANTONG[playerid]);
    PlayerTextDrawShow(playerid, STATUSPLAYER[playerid]);
    PlayerTextDrawShow(playerid, SERVERTIME[playerid]);
    PlayerTextDrawShow(playerid, UANGBANK[playerid]);
    TextdrawUpdateTimer[playerid] = SetTimerEx("LoopTextdrawUpdate", 1000, true, "d", playerid);
    return 1;
}

hideinfo(playerid)
{
    for(new i = 0; i < 46; i++) 
    {
        TextDrawHideForPlayer(playerid, STATSINFO[i]);
    }
    PlayerTextDrawHide(playerid, JOBPLAYER[playerid]);
    PlayerTextDrawHide(playerid, NAMAIC[playerid]);
    PlayerTextDrawHide(playerid, KANTONG[playerid]);
    PlayerTextDrawHide(playerid, STATUSPLAYER[playerid]);
    PlayerTextDrawHide(playerid, SERVERTIME[playerid]);
    PlayerTextDrawHide(playerid, UANGBANK[playerid]);
    return 1;
}

// Fungsi Update Player Info
stock UpdatePlayerHUD(playerid)
{
    if (!IsPlayerConnected(playerid)) return;

    // JOBPLAYER
    PlayerTextDrawSetString(playerid, JOBPLAYER[playerid], sprintf("%s", GetPlayerJobName(playerid))); 
    // NAMAIC Player
    PlayerTextDrawSetString(playerid, NAMAIC[playerid], sprintf("%s", AccountData[playerid][pName])); 
    // UANG BANK Money
    PlayerTextDrawSetString(playerid, UANGBANK[playerid], sprintf("%s", FormatMoney(AccountData[playerid][pBankMoney])));
    // Faction Player
    PlayerTextDrawSetString(playerid, STATUSPLAYER[playerid], sprintf("%s", GetFactName(playerid))); 
    // ID Player
    PlayerTextDrawSetString(playerid, KANTONG[playerid], sprintf("%d", playerid));
} 

// Timer loop setiap detik
forward LoopTextdrawUpdate(playerid);
public LoopTextdrawUpdate(playerid)
{
    UpdatePlayerHUD(playerid);
    return 1;
}

// Update server time
forward _returnSetStringTimerPlayers(playerid);
public _returnSetStringTimerPlayers(playerid) {
    new hh, mm, ss;
    gettime(hh, mm, ss);
    PlayerTextDrawSetString(playerid, SERVERTIME[playerid], sprintf("%02d:%02d:%02d", hh, mm, ss)); 
    return 1;
}

// Command buka tutup textdraw
CMD:hideinfo(playerid, params[])
{
    hideinfo(playerid);
    return 1;
}

CMD:showinfo(playerid, params[])
{
    showinfo(playerid);
    return 1;
}
