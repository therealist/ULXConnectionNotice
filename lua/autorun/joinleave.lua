function fplayerAuthed( ply )
	
		for k,v in pairs( player.GetAll() ) do
			ULib.tsayColor( v, false, Color( 255, 255, 0 ), ply:Nick() .. " (" .. ply:SteamID() .. ")" .. " has joined the server. " .. table.Count(player.GetAll()) .. "/30" )
		end
			
end
hook.Add( "PlayerAuthed", "fauthed", fplayerAuthed )

function fPlayerDisconnect( ply )

		for k,v in pairs( player.GetAll() ) do
			ULib.tsayColor( v, false, Color( 255, 255, 0 ), ply:Nick() .. " (" .. ply:SteamID() .. ")" .. " has left the server. " .. table.Count(player.GetAll()) -1 .. "/30" )
		end
			
end
hook.Add( "PlayerDisconnected", "fdisconnect", fPlayerDisconnect )
