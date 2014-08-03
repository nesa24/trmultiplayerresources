
// Simple joinquit script

function OnPlayerJoin(player)
{
	Engine.OutputChatBox(Engine.GetPlayerName(player) + " joined the game");
}

Engine.AddEventHandler("OnPlayerJoin",OnPlayerJoin);

function OnPlayerQuit(player,reason)
{
	Engine.OutputChatBox(Engine.GetPlayerName(player) + " left the game");
}

Engine.AddEventHandler("OnPlayerQuit",OnPlayerQuit);
