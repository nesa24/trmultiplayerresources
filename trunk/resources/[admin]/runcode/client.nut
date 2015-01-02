
function runString(code,output)
{
	if (output)
	{
		Engine.OutputChatBox("Executing client-side command: " + code);
	}
	try
	{
		compilestring(code)();
	}
	catch (error)
	{
		Engine.OutputChatBox("Error: " + error);
	}
}

// This runs the code clientside meaning it doesn't affect everyone!
//Engine.AddCommandHandler("crun",function(commandLine, command, arguments){
//	local code = commandLine.slice(commandLine.find(" "));
//	runString(code);
//});

// This event allows the server to run the code clientside
Engine.AddEventHandler("doCrun",runString);
