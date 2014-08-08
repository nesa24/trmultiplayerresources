
// Simple joinquit script

local reasons=[
	"Timeout",
	"Server Full",
	"Unsupported Client",
	"Unsupported Engine",
	"Wrong Password",
	"Unsupported Executable",
	"Quit"
];

function OnPlayerJoin(player)
{
	Engine.OutputChatBox(Engine.GetPlayerName(player) + " joined the game");
}

Engine.AddEventHandler("OnPlayerJoin",OnPlayerJoin);

function OnPlayerQuit(player,reason)
{
	Engine.OutputChatBox(Engine.GetPlayerName(player) + " left the game (" + reasons[reason] + ")");
}

Engine.AddEventHandler("OnPlayerQuit",OnPlayerQuit);
