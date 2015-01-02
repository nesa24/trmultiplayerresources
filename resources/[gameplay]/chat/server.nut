
// Simple chat script

function OnPlayerChat(player,message)
{
	Engine.PreventDefault(); // Prevent the server managing the chat

	Engine.OutputChatBox(Engine.GetPlayerName(player) + ": " + message);
}

Engine.AddEventHandler("OnPlayerChat",OnPlayerChat);
