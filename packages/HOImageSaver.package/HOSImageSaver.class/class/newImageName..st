private
newImageName: imageName
	| now prefix formattedName |
	
	prefix := (imageName splitOn: $-) allButLast.
	prefix := (prefix ifEmpty: [ imageName ]) , '-'.
	now := DateAndTime now.
	formattedName := (String new writeStream
		in: [ :s | 
			s << prefix.
			now printHOSYMDHMSOn: s.
			s ]) contents.
	^ formattedName