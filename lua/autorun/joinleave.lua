function fuserAuthed( ply )
	
		for k,v in pairs( player.GetAll() ) do
		
			ULib.tsayError( v, ply:Nick() .. " has joined the server." )
			
		end
			
end
hook.Add( "PlayerAuthed", "fauthed", fuserAuthed )

function fPlayerDisconnect( ply )

		for k,v in pairs( player.GetAll() ) do
		
			ULib.tsayError( v, ply:Nick() .. " has left the server." )
							
		end
			
end
hook.Add( "PlayerDisconnected", "fdisconnect", fPlayerDisconnect )
