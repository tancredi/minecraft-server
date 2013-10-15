
# Minecraft server version
VERSION=1.6.4

# Default task
default: update run

# Update the server
update:
	@echo "Updating the server"
	@wget -O server.jar https://s3.amazonaws.com/Minecraft.Download/versions/${VERSION}/minecraft_server.${VERSION}.exe

# Run the server
run:
	@java -Xmx1G -Xms1G -jar server.jar nogui
