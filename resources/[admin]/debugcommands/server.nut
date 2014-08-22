
// Adds some debug commands for testing

function OnWhoCommand(player, commandLine, command, arguments)
{
	Engine.OutputChatBox("Your name is: " + Engine.GetPlayerName(player),player);
}

Engine.AddCommandHandler("who",OnWhoCommand);

function OnOnlineCommand(player, commandLine, command, arguments)
{
	local players = Engine.GetPlayers();
	foreach (k,v in players)
	{
		Engine.OutputChatBox(Engine.GetPlayerName(v),player);
	}
}

Engine.AddCommandHandler("online",OnOnlineCommand);

function OnCountOnlineCommand(player, commandLine, command, arguments)
{
	local players = Engine.GetPlayers();
	Engine.OutputChatBox(players.len().tostring(),player);
}

Engine.AddCommandHandler("countonline",OnCountOnlineCommand);

function OnPosCommand(player, commandLine, command, arguments)
{
	local vecPos = Engine.GetPlayerPosition(player);
	Engine.OutputChatBox("Pos: " + vecPos[0].tostring() + ", " + vecPos[1].tostring() + ", " + vecPos[2].tostring(),player);
}

Engine.AddCommandHandler("pos",OnPosCommand);

local playerData = {}

function OnSaveCommand(player, commandLine, command, arguments)
{
	playerData[player] <- [Engine.GetPlayerRoom(player),Engine.GetPlayerPosition(player),Engine.GetPlayerRotation(player)];

	Engine.OutputChatBox("Saved you!",player);
}

Engine.AddCommandHandler("save",OnSaveCommand);

function OnLoadCommand(player, commandLine, command, arguments)
{
	local room = playerData[player][0];
	//Engine.SetPlayerRoom(player,room);

	local vecPos = playerData[player][1];
	//Engine.SetPlayerPosition(player,vecPos[0],vecPos[1],vecPos[2]);

	local rotation = playerData[player][2];
	//Engine.SetPlayerRotation(player,rotation);

	// respawn the player there
	Engine.SpawnPlayer(player,room,vecPos[0],vecPos[1],vecPos[2],rotation);

	Engine.OutputChatBox("Restored you!",player);
}

Engine.AddCommandHandler("load",OnLoadCommand);

function OnHealCommand(player, commandLine, command, arguments)
{
	Engine.SetPlayerHealth(player,1000);
}

Engine.AddCommandHandler("heal",OnHealCommand);

function OnRespawnCommand(player, commandLine, command, arguments)
{
	Engine.SpawnPlayer(player);
}

Engine.AddCommandHandler("respawn",OnRespawnCommand);
