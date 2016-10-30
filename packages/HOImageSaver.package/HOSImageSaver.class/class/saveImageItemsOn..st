actions
saveImageItemsOn: aBuilder 
	<worldMenu>
	(aBuilder group: #QuitPharo)
		order: 9998; 
		with: [
			(aBuilder item: #'Save with Timetag')
				target: self;
				selector: #saveImage;
				help: 'save the current version of the image on disk with a decent name';
				icon: Smalltalk ui icons smallSaveAs.
				]
