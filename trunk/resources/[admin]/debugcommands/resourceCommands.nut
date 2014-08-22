
Engine.AddCommandHandler("start",function(player, commandLine, command, arguments){
	try
	{
		Engine.StartResource(arguments[0]);
	}
	catch (error)
	{
		Engine.OutputChatBox(error);
	}
});

Engine.AddCommandHandler("stop",function(player, commandLine, command, arguments){
	try
	{
		Engine.StopResource(arguments[0]);
	}
	catch (error)
	{
		Engine.OutputChatBox(error);
	}
});

Engine.AddCommandHandler("restart",function(player, commandLine, command, arguments){
	try
	{
		Engine.RestartResource(arguments[0]);
	}
	catch (error)
	{
		Engine.OutputChatBox(error);
	}
});

Engine.AddCommandHandler("refresh",function(player, commandLine, command, arguments){
	Engine.UpdateResources();
});
