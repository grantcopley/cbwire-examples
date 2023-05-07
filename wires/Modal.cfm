<cfoutput>
	<div>
		<cfif args.selectedSection.len()>
			<div>
				Section selected: #args.selectedSection#
			</div>
		</cfif>
		<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="##exampleModal">
			Select section
  		</button>
		<a href="##" wire:click.prevent="unselect" class="btn btn-secondary">Unselect</a>



		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<button
						class="btn btn-secondary"
						type="button"
						wire:click="sectionSelected('section1')"
						>
							Section 1
						</button>
						<button
						class="btn btn-secondary"
						type="button"
						wire:click="sectionSelected('section2')"
						>
							Section 2
						</button>
					</div>
					<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
		<script>
			document.addEventListener("livewire:load", function() {
				cbwire.on( 'buttonPressed', function( task ) {
					console.log("button presss!");
					var myModalEl = document.getElementById('exampleModal');
					var modal = bootstrap.Modal.getInstance(myModalEl);
					modal.hide();
				});
			} );
		</script>
	</div>
</cfoutput>

<cfscript>
	data = {
		selectedSection = ""
	};
	
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
</cfscript>