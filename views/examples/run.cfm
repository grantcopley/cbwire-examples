<cfoutput>
    <div class="d-flex justify-content-between align-items-center">
        <h2 class="pt-4">Result</h2>
        <a href="/" class="back-button ms-4 mt-3"><i class="fa-solid fa-circle-left"></i></a>
    </div>
    <div class="example">
        #wire( rc.component )#
    </div>
    #renderView( view="/wires/showCode", args={
        wireComponent: rc.component
    } )#
</cfoutput>