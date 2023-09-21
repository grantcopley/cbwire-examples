<cfoutput>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CBWIRE Examples</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<link href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.6.0/styles/default.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.6.0/highlight.min.js"></script>
	<script src="https://kit.fontawesome.com/7e32a713f5.js" crossorigin="anonymous"></script>
	<script src="//unpkg.com/alpinejs" defer></script>
	<script>hljs.highlightAll();</script>
	<style type="text/css">
		html {
			height: 100%;
			background-color: ##333333;
		}
		body {
			background-color: ##000000;		
			background-repeat: no-repeat;
			background-size: 100%;
			background-position: bottom;
			background-attachment: fixed;
			min-height: 100%;
			font-size: 1.2rem;
		}
		a {
			color: ##333333;
		} 
		a:hover {
			color: ##000000;
		}
		h2 {
			color: ##ffffff;
		}
		input[type=text], input[type=search], textarea {
			width: 50% !important;
		}
		.btn-primary, .btn-primary:focus {
			border-color: ##e8fea7;
			background-color: ##e8fea7;
			color: ##000000;
		}
		.btn-primary:hover {
			border-color: ##dcfd7b;
			background-color: ##dcfd7b;
		}
		.back-button {
			font-size: 2rem;
		}
		.hljs {
			padding: 10px;
			border-radius: 10px;
			background-color: rgba( 255, 255, 255, 0.92 )
		}
		.example {
			padding: 40px 20px;
			background-color: rgba( 51, 51, 51, 0.92 );
			color: ##ffffff;
			border: 2px solid ##333333;
			border-radius: 10px;
		}
	</style>
	#wireStyles()#
</head>
<body>
	<div class="container pt-3 pb-5">
		<div class="row">
			<div class="col-6">
				<h1><a href="/" class="text-decoration-none text-white">CBWIRE Examples</a></h1>
			</div>
			<div class="col-6">
				<div class="d-flex flex-row-reverse mt-3">
					<a href="https://github.com/coldbox-modules/cbwire"><i class="fa-brands fa-github fa-2xl me-4" title="GitHub"></i></a>
					<a href="https://cbwire.ortusbooks.com"><i class="fa-solid fa-book-sparkles fa-2xl me-4" title="Documentation"></i></a>
				</div>
			</div>
		</div>
		<cfif flash.exists( "confirm" )>
			<div class="row">
				<div class="col-12">
					<div class="alert alert-info">
						#flash.get( "confirm" )#
					</div>
				</div>
			</div>
		</cfif>
		<div class="row">
			<div class="col-12">
				#renderView()#
			</div>
		</div>
	</div>
	#wireScripts()#
	<script src="https://player.vimeo.com/api/player.js"></script>
	<cfif structKeyExists( prc, "viewJavascript" )>
		#prc.viewJavascript#
	</cfif>
	<script>
		document.addEventListener("turbo:load", () => {
			hljs.highlightAll();
		} );
	</script>
</body>
</html>
</cfoutput>