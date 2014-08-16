
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

Engine.AddEventHandler("OnPlayerJoin",function(player){
	Engine.OutputChatBox("# " + Engine.GetPlayerName(player) + " has joined the game");
});

Engine.AddEventHandler("OnPlayerQuit",function(player, reason){
	Engine.OutputChatBox("# " + Engine.GetPlayerName(player) + " has left the game (" + reasons[reason] + ")");
});
