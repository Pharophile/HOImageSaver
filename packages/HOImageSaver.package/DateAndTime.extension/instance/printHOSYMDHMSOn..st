*HOImageSaver
printHOSYMDHMSOn: aStream
	"
	Print the time the way I like my image names to be saved
	YYYYMMDD_HHMM"
	| year month day |
	self dayMonthYearDo: [ :d :m :y | year := y. month := m. day := d ].
	year abs printOn: aStream base: 10 length: 4 padded: true.
	month printOn: aStream base: 10 length: 2 padded: true.
	day printOn: aStream base: 10 length: 2 padded: true.
	aStream nextPut: $_.
	
	self hour printOn: aStream base: 10 length: 2 padded: true.
	self minute printOn: aStream base: 10 length: 2 padded: true.
