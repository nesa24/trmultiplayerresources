
// 60 FPS script

Engine.AddEventHandler("OnClientRender",function(){
	Engine.TR.RenderString(0,Engine.TR.GetFontHeight(),1,"60 FPS",0);
});

Engine.AddEventHandler("OnClientResourceReady",function(resource){
	if (resource == Engine.GetThisResource())
	{
		Engine.SetFPSLimit(60);
	}
});

Engine.AddEventHandler("OnClientResourceStop",function(resource,stoppingForRestart){
	if (resource == Engine.GetThisResource())
	{
		Engine.SetFPSLimit(30);
	}
});
