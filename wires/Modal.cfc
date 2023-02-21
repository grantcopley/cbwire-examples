component extends="cbwire.models.Component" {

	data = {
		selectedSection = ''
	}

	function sectionSelected(section){
		data.selectedSection = section;

		// We emit a buttonPressed event
		// the js in the page listen to this event
		// and close the modal
		emit( "buttonPressed" );
	}

	function unselect(){
		data.selectedSection = "";
	}
}