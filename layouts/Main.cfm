<cfoutput>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>CBWIRE Examples</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/styles/atom-one-dark.min.css" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=JetBrains+Mono:wght@400;500&display=swap" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/highlight.min.js"></script>
	<script src="https://kit.fontawesome.com/7e32a713f5.js" crossorigin="anonymous"></script>
	<script>hljs.highlightAll();</script>
	<style>
		:root {
			--primary-gradient: linear-gradient(135deg, ##667eea 0%, ##764ba2 100%);
			--secondary-gradient: linear-gradient(135deg, ##f093fb 0%, ##f5576c 100%);
			--accent-gradient: linear-gradient(135deg, ##4facfe 0%, ##00f2fe 100%);
			--dark-bg: ##0f0f23;
			--dark-surface: ##1a1a2e;
			--dark-elevated: ##16213e;
			--text-primary: ##ffffff;
			--text-secondary: ##b4b4c9;
			--accent-primary: ##667eea;
			--accent-secondary: ##00f2fe;
			--glass-bg: rgba(255, 255, 255, 0.05);
			--glass-border: rgba(255, 255, 255, 0.1);
			--shadow-sm: 0 2px 8px rgba(0, 0, 0, 0.1);
			--shadow-md: 0 4px 16px rgba(0, 0, 0, 0.2);
			--shadow-lg: 0 8px 32px rgba(0, 0, 0, 0.3);
			--shadow-glow: 0 0 20px rgba(102, 126, 234, 0.3);
		}

		* {
			margin: 0;
			padding: 0;
			box-sizing: border-box;
		}

		html {
			height: 100%;
			scroll-behavior: smooth;
		}

		body {
			font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
			background: var(--dark-bg);
			background-image:
				radial-gradient(circle at 20% 50%, rgba(102, 126, 234, 0.15) 0%, transparent 50%),
				radial-gradient(circle at 80% 80%, rgba(0, 242, 254, 0.15) 0%, transparent 50%);
			background-attachment: fixed;
			color: var(--text-primary);
			min-height: 100vh;
			font-size: 1rem;
			line-height: 1.6;
			overflow-x: hidden;
		}

		.main-header {
			background: rgba(26, 26, 46, 0.8);
			backdrop-filter: blur(20px);
			-webkit-backdrop-filter: blur(20px);
			border-bottom: 1px solid var(--glass-border);
			padding: 1.5rem 0;
			position: sticky;
			top: 0;
			z-index: 1000;
			transition: all 0.3s ease;
		}

		.main-header.scrolled {
			padding: 1rem 0;
			box-shadow: var(--shadow-md);
		}

		.logo-link {
			font-size: 1.75rem;
			font-weight: 700;
			background: var(--primary-gradient);
			-webkit-background-clip: text;
			-webkit-text-fill-color: transparent;
			background-clip: text;
			text-decoration: none;
			transition: all 0.3s ease;
			letter-spacing: -0.02em;
		}

		.logo-link:hover {
			transform: translateY(-2px);
			filter: brightness(1.2);
		}

		.header-links {
			display: flex;
			gap: 1.5rem;
			align-items: center;
		}

		.header-links a {
			color: var(--text-secondary);
			text-decoration: none;
			transition: all 0.3s ease;
			display: inline-flex;
			align-items: center;
			justify-content: center;
			width: 40px;
			height: 40px;
			border-radius: 10px;
			background: var(--glass-bg);
			border: 1px solid var(--glass-border);
		}

		.header-links a:hover {
			color: var(--accent-secondary);
			background: rgba(0, 242, 254, 0.1);
			border-color: var(--accent-secondary);
			transform: translateY(-2px);
			box-shadow: var(--shadow-glow);
		}

		.alert {
			border: none;
			border-radius: 12px;
			background: var(--glass-bg);
			backdrop-filter: blur(10px);
			border: 1px solid var(--glass-border);
			color: var(--text-primary);
			padding: 1rem 1.5rem;
			box-shadow: var(--shadow-sm);
		}

		.alert-info {
			background: rgba(0, 242, 254, 0.1);
			border-color: var(--accent-secondary);
		}

		h1, h2, h3, h4, h5, h6 {
			font-weight: 600;
			line-height: 1.2;
			letter-spacing: -0.02em;
		}

		h2 {
			color: var(--text-primary);
			font-size: 1.75rem;
			margin-bottom: 1rem;
		}

		a {
			color: var(--accent-primary);
			transition: all 0.3s ease;
		}

		a:hover {
			color: var(--accent-secondary);
		}

		input[type=text],
		input[type=search],
		textarea,
		select {
			width: 100% !important;
			max-width: 600px;
			background: var(--glass-bg) !important;
			border: 1px solid var(--glass-border) !important;
			color: var(--text-primary) !important;
			border-radius: 10px !important;
			padding: 0.75rem 1rem !important;
			font-size: 1rem !important;
			transition: all 0.3s ease !important;
		}

		input[type=text]:focus,
		input[type=search]:focus,
		textarea:focus,
		select:focus {
			outline: none !important;
			border-color: var(--accent-primary) !important;
			box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1) !important;
			background: rgba(255, 255, 255, 0.08) !important;
		}

		.btn-primary {
			background: var(--primary-gradient);
			border: none;
			color: var(--text-primary);
			padding: 0.75rem 2rem;
			border-radius: 10px;
			font-weight: 500;
			transition: all 0.3s ease;
			box-shadow: var(--shadow-sm);
		}

		.btn-primary:hover,
		.btn-primary:focus {
			transform: translateY(-2px);
			box-shadow: var(--shadow-md), var(--shadow-glow);
			filter: brightness(1.1);
		}

		.btn-primary:active {
			transform: translateY(0);
		}

		.back-button {
			font-size: 1.5rem;
			display: inline-flex;
			align-items: center;
			gap: 0.5rem;
			padding: 0.5rem 1rem;
			border-radius: 10px;
			background: var(--glass-bg);
			border: 1px solid var(--glass-border);
			color: var(--text-secondary);
			text-decoration: none;
			transition: all 0.3s ease;
		}

		.back-button:hover {
			background: rgba(255, 255, 255, 0.1);
			color: var(--text-primary);
			transform: translateX(-4px);
		}

		.hljs {
			padding: 1.5rem !important;
			border-radius: 12px !important;
			background: var(--dark-elevated) !important;
			border: 1px solid var(--glass-border) !important;
			font-family: 'JetBrains Mono', 'Courier New', monospace !important;
			font-size: 0.9rem !important;
			line-height: 1.6 !important;
			box-shadow: var(--shadow-sm) !important;
			overflow-x: auto !important;
		}

		.example {
			padding: 2.5rem;
			background: var(--glass-bg);
			backdrop-filter: blur(10px);
			-webkit-backdrop-filter: blur(10px);
			color: var(--text-primary);
			border: 1px solid var(--glass-border);
			border-radius: 16px;
			box-shadow: var(--shadow-md);
			transition: all 0.3s ease;
		}

		.example:hover {
			border-color: var(--accent-primary);
			box-shadow: var(--shadow-lg), var(--shadow-glow);
			transform: translateY(-2px);
		}

		.container {
			max-width: 1200px;
		}

		@media (max-width: 768px) {
			.logo-link {
				font-size: 1.25rem;
			}

			.header-links {
				gap: 0.75rem;
			}

			.header-links a {
				width: 36px;
				height: 36px;
			}

			h2 {
				font-size: 1.5rem;
			}

			.example {
				padding: 1.5rem;
			}

			input[type=text],
			input[type=search],
			textarea {
				max-width: 100% !important;
			}
		}

		@keyframes fadeIn {
			from {
				opacity: 0;
				transform: translateY(20px);
			}
			to {
				opacity: 1;
				transform: translateY(0);
			}
		}

		.fade-in {
			animation: fadeIn 0.6s ease-out;
		}

		.card {
			background: var(--glass-bg);
			backdrop-filter: blur(10px);
			border: 1px solid var(--glass-border);
			border-radius: 16px;
			transition: all 0.3s ease;
		}

		.card:hover {
			border-color: var(--accent-primary);
			box-shadow: var(--shadow-lg);
			transform: translateY(-4px);
		}

		code {
			background: rgba(255, 255, 255, 0.1);
			padding: 0.2rem 0.5rem;
			border-radius: 4px;
			font-family: 'JetBrains Mono', monospace;
			font-size: 0.9em;
			color: var(--accent-secondary);
		}

		button,
		.btn {
			background: var(--primary-gradient);
			border: none;
			color: var(--text-primary);
			padding: 0.75rem 1.5rem;
			border-radius: 10px;
			font-weight: 500;
			font-size: 1rem;
			transition: all 0.3s ease;
			box-shadow: var(--shadow-sm);
			cursor: pointer;
			font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
		}

		button:hover,
		.btn:hover {
			transform: translateY(-2px);
			box-shadow: var(--shadow-md), var(--shadow-glow);
			filter: brightness(1.1);
			color: var(--text-primary);
		}

		button:active,
		.btn:active {
			transform: translateY(0);
		}

		button:disabled,
		.btn:disabled {
			opacity: 0.5;
			cursor: not-allowed;
			transform: none;
		}

		.btn-secondary {
			background: linear-gradient(135deg, ##4facfe 0%, ##00f2fe 100%);
		}

		.btn-success {
			background: linear-gradient(135deg, ##11998e 0%, ##38ef7d 100%);
		}

		.btn-danger {
			background: linear-gradient(135deg, ##f093fb 0%, ##f5576c 100%);
		}

		.btn-warning {
			background: linear-gradient(135deg, ##ffd89b 0%, ##19547b 100%);
		}

		.btn-dark {
			background: linear-gradient(135deg, ##2c3e50 0%, ##34495e 100%);
		}

		.btn-light {
			background: linear-gradient(135deg, ##f5f7fa 0%, ##c3cfe2 100%);
			color: ##2c3e50;
		}

		.btn-light:hover {
			color: ##2c3e50;
		}

		.btn-outline {
			background: transparent;
			border: 2px solid var(--accent-primary);
			color: var(--accent-primary);
		}

		.btn-outline:hover {
			background: var(--accent-primary);
			color: var(--text-primary);
		}

		.btn-sm {
			padding: 0.5rem 1rem;
			font-size: 0.9rem;
		}

		.btn-lg {
			padding: 1rem 2rem;
			font-size: 1.125rem;
		}
	</style>
	#wireStyles()#
</head>
<body>
	<header class="main-header">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-12 col-md-6">
					<h1 class="mb-0">
						<a href="/" class="logo-link">CBWIRE Examples</a>
					</h1>
				</div>
				<div class="col-12 col-md-6">
					<div class="header-links justify-content-md-end justify-content-start mt-3 mt-md-0">
						<a href="https://github.com/coldbox-modules/cbwire" aria-label="GitHub Repository">
							<i class="fa-brands fa-github fa-lg" aria-hidden="true"></i>
						</a>
						<a href="https://cbwire.ortusbooks.com" aria-label="Documentation">
							<i class="fa-solid fa-book-sparkles fa-lg" aria-hidden="true"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
	</header>

	<main class="container py-5">
		<cfif flash.exists( "confirm" )>
			<div class="row mb-4">
				<div class="col-12">
					<div class="alert alert-info fade-in">
						<i class="fa-solid fa-circle-info me-2" aria-hidden="true"></i>
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
	</main>

	#wireScripts()#
	<script src="https://player.vimeo.com/api/player.js"></script>
	<cfif structKeyExists( prc, "viewJavascript" )>
		#prc.viewJavascript#
	</cfif>
	<script>
		document.addEventListener("turbo:load", () => {
			hljs.highlightAll();
		});

		const header = document.querySelector('.main-header');
		let lastScroll = 0;

		window.addEventListener('scroll', () => {
			const currentScroll = window.pageYOffset;

			if (currentScroll > 50) {
				header.classList.add('scrolled');
			} else {
				header.classList.remove('scrolled');
			}

			lastScroll = currentScroll;
		});

		document.querySelectorAll('.fade-in').forEach((el, index) => {
			el.style.animationDelay = `${index * 0.1}s`;
		});
	</script>
</body>
</html>
</cfoutput>