actions
saveImage
	"UIManager default fileSave: 'New File Name?' extensions: #('image') path: Smalltalk imageDirectory"

	| fd imageName newImageName reference |
	fd := (FileDialogWindow newWithTheme: UITheme current)
		title: 'Save with Timetag';
		yourself.
	imageName := (FilePathEncoder encode: Smalltalk image imagePath)
		asFileReference basenameWithoutExtension.
	newImageName := self newImageName: imageName.
	fd fileNameText: newImageName.
	fd answerSaveFile.
	reference := (World openModal: fd) answer.
	reference
		ifNotNil: [ 
			Smalltalk
				saveAs: reference parent / (reference basenameWithoutExtension: 'image') ]