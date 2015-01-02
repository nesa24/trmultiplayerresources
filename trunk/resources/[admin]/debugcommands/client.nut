
function OnFPSCommand(commandLine, command, arguments)
{
	Engine.SetFPSLimit(arguments[0].tointeger());
}

Engine.AddCommandHandler("fps",OnFPSCommand);
