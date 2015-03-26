The default tomb raider mod launcher multi-player resources.

A resource is a folder that contains a file to identify information about the resource and the files associated with the resource, such as the script files. The meta file tells the game how to interpret the resource like for example what scripts the server runs and which scripts the client will have to download and run.

A resource is very similar to an executable. You can start or stop resources, you can have more than 1 resource running at the same time. Resources would usually contain a script for game modes or other tasks to help control the server like add commands or manage the server.

The scripting language of the resources is done through the squirrel programming language.

The server is compiled with support for squirrel 3.0 you can see the documentation for squirrel here.

http://www.squirrel-lang.org/doc/squirrel3.html

The API is exported to squirrel though Engine.