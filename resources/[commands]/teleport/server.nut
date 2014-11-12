
function OnTeleportCommand(player, commandLine, command, arguments)
{
	local targetPlayer = null;
	local players = Engine.GetPlayers();
	foreach (k,v in players)
	{
		if (Engine.GetPlayerName(v).tolower() == arguments[0].tolower())
		{
			targetPlayer = v;
		}
	}

	Engine.SetPlayerRoom(player,Engine.GetPlayerRoom(targetPlayer));
	local vecPos = Engine.GetPlayerPosition(targetPlayer);
	Engine.SetPlayerPosition(player,vecPos[0],vecPos[1],vecPos[2]);
	Engine.SetPlayerRotation(player,Engine.GetPlayerRotation(targetPlayer));
}

Engine.AddCommandHandler("tp",OnTeleportCommand);
