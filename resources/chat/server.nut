
// Simple chat script

function OnPlayerChat(player,message)
{
	Engine.OutputChatBox(Engine.GetPlayerName(player) + ": " + message);
}

Engine.AddEventHandler("OnPlayerChat",OnPlayerChat);
