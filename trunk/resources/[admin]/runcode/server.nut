
// This runs code on the server, remember to only allow this command for administrators!
Engine.AddCommandHandler("run",function(player, commandLine, command, arguments){
	local code = commandLine.slice(commandLine.find(" "));
	Engine.OutputChatBox(Engine.GetPlayerName(player) + " executed command: " + code);
	try
	{
		compilestring(code)();
	}
	catch (error)
	{
		Engine.OutputChatBox("Error: " + error);
	}
});

Engine.AddCommandHandler("crun",function(player, commandLine, command, arguments){
	local code = commandLine.slice(commandLine.find(" "));
	Engine.TriggerClientEvent("doCrun",player,code,true);
});

Engine.AddCommandHandler("cdo",function(player, commandLine, command, arguments){
	local code = commandLine.slice(commandLine.find(" "));
	Engine.OutputChatBox(Engine.GetPlayerName(player) + " executed client-side command: " + code);
	Engine.TriggerClientEvent("doCrun",null,code,false);
});
