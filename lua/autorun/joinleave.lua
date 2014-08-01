function fuserAuthed( ply )
	
		for k,v in pairs( player.GetAll() ) do
		
			ULib.tsayColor( v, false, Color( 255, 255, 0 ), ply:Nick() .. " has joined the server. " .. table.Count(player.GetAll()) .. "/30" )
			
		end
			
end
hook.Add( "PlayerAuthed", "fauthed", fuserAuthed )

function fPlayerDisconnect( ply )

		for k,v in pairs( player.GetAll() ) do
		
			ULib.tsayColor( v, false, Color( 255, 255, 0 ), ply:Nick() .. " has left the server. " .. table.Count(player.GetAll()) -1 .. "/30" )
							
		end
			
end
hook.Add( "PlayerDisconnected", "fdisconnect", fPlayerDisconnect )
