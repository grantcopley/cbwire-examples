<cfoutput>
<style>
	.hero-section {
		background: linear-gradient(135deg, rgba(102, 126, 234, 0.1) 0%, rgba(118, 75, 162, 0.1) 100%);
		border: 1px solid rgba(255, 255, 255, 0.1);
		border-radius: 24px;
		padding: 4rem 2rem;
		text-align: center;
		backdrop-filter: blur(10px);
		margin-bottom: 3rem;
		position: relative;
		overflow: hidden;
	}

	.hero-section::before {
		content: '';
		position: absolute;
		top: -50%;
		right: -50%;
		width: 200%;
		height: 200%;
		background: radial-gradient(circle, rgba(102, 126, 234, 0.1) 0%, transparent 70%);
		animation: pulse 8s ease-in-out infinite;
	}

	@keyframes pulse {
		0%, 100% { transform: scale(1); opacity: 0.5; }
		50% { transform: scale(1.1); opacity: 0.8; }
	}

	.hero-content {
		position: relative;
		z-index: 1;
	}

	.hero-logo {
		max-width: 200px;
		height: auto;
		margin-bottom: 1.5rem;
		filter: drop-shadow(0 8px 16px rgba(0, 0, 0, 0.3));
	}

	.version-badge {
		display: inline-block;
		background: linear-gradient(135deg, ##667eea 0%, ##764ba2 100%);
		color: white;
		padding: 0.5rem 1.5rem;
		border-radius: 50px;
		font-weight: 600;
		font-size: 0.9rem;
		margin-bottom: 1.5rem;
		box-shadow: 0 4px 12px rgba(102, 126, 234, 0.3);
	}

	.hero-title {
		font-size: 3rem;
		font-weight: 700;
		margin-bottom: 1rem;
		background: linear-gradient(135deg, ##ffffff 0%, ##b4b4c9 100%);
		-webkit-background-clip: text;
		-webkit-text-fill-color: transparent;
		background-clip: text;
		line-height: 1.2;
	}

	.hero-description {
		font-size: 1.25rem;
		color: ##b4b4c9;
		max-width: 700px;
		margin: 0 auto;
		line-height: 1.6;
	}

	.feature-card {
		background: rgba(255, 255, 255, 0.03);
		backdrop-filter: blur(10px);
		border: 1px solid rgba(255, 255, 255, 0.1);
		border-radius: 20px;
		padding: 2rem;
		height: 100%;
		transition: all 0.3s ease;
		position: relative;
		overflow: hidden;
	}

	.feature-card::before {
		content: '';
		position: absolute;
		top: 0;
		left: 0;
		right: 0;
		height: 3px;
		background: linear-gradient(90deg, ##667eea 0%, ##764ba2 100%);
		transform: scaleX(0);
		transition: transform 0.3s ease;
	}

	.feature-card:hover {
		background: rgba(255, 255, 255, 0.05);
		border-color: ##667eea;
		transform: translateY(-8px);
		box-shadow: 0 12px 40px rgba(0, 0, 0, 0.4), 0 0 30px rgba(102, 126, 234, 0.2);
	}

	.feature-card:hover::before {
		transform: scaleX(1);
	}

	.feature-icon {
		width: 60px;
		height: 60px;
		background: linear-gradient(135deg, ##667eea 0%, ##764ba2 100%);
		border-radius: 16px;
		display: flex;
		align-items: center;
		justify-content: center;
		font-size: 1.5rem;
		color: white;
		margin-bottom: 1.5rem;
		box-shadow: 0 8px 20px rgba(102, 126, 234, 0.3);
		transition: all 0.3s ease;
	}

	.feature-card:hover .feature-icon {
		transform: scale(1.1) rotate(5deg);
		box-shadow: 0 12px 30px rgba(102, 126, 234, 0.5);
	}

	.feature-title {
		font-size: 1.5rem;
		font-weight: 600;
		color: ##ffffff;
		margin-bottom: 1rem;
	}

	.feature-description {
		color: ##b4b4c9;
		margin-bottom: 1.5rem;
		line-height: 1.6;
	}

	.list-group {
		background: transparent;
	}

	.list-group-item {
		background: rgba(255, 255, 255, 0.03);
		border: 1px solid rgba(255, 255, 255, 0.08);
		color: ##ffffff;
		margin-bottom: 0.5rem;
		border-radius: 12px;
		transition: all 0.3s ease;
		padding: 1rem 1.25rem;
	}

	.list-group-item:hover {
		background: rgba(102, 126, 234, 0.1);
		border-color: ##667eea;
		transform: translateX(8px);
		box-shadow: 0 4px 12px rgba(102, 126, 234, 0.2);
	}

	.list-group-item i {
		color: ##667eea;
		font-size: 1.2rem;
	}

	.badge {
		background: linear-gradient(135deg, ##f5576c 0%, ##f093fb 100%);
		color: white;
		padding: 0.4rem 0.8rem;
		border-radius: 8px;
		font-weight: 500;
		font-size: 0.85rem;
	}

	.custom-table {
		width: 100%;
		margin-top: 1rem;
	}

	.custom-table td {
		padding: 1rem;
		border-bottom: 1px solid rgba(255, 255, 255, 0.1);
		color: ##b4b4c9;
	}

	.custom-table td:first-child {
		color: ##ffffff;
	}

	.btn-action {
		background: linear-gradient(135deg, ##667eea 0%, ##764ba2 100%);
		border: none;
		color: white;
		padding: 0.75rem 1.5rem;
		border-radius: 10px;
		font-weight: 500;
		transition: all 0.3s ease;
		display: inline-flex;
		align-items: center;
		gap: 0.5rem;
		text-decoration: none;
		box-shadow: 0 4px 12px rgba(102, 126, 234, 0.3);
	}

	.btn-action:hover {
		transform: translateY(-2px);
		box-shadow: 0 6px 20px rgba(102, 126, 234, 0.5);
		filter: brightness(1.1);
		color: white;
	}

	.btn-action:active {
		transform: translateY(0);
	}

	.btn-action i {
		font-size: 1.1rem;
	}

	.action-buttons {
		display: flex;
		flex-wrap: wrap;
		gap: 1rem;
	}

	@media (max-width: 768px) {
		.hero-title {
			font-size: 2rem;
		}

		.hero-description {
			font-size: 1rem;
		}

		.feature-card {
			margin-bottom: 1.5rem;
		}

		.action-buttons {
			flex-direction: column;
		}

		.btn-action {
			width: 100%;
			justify-content: center;
		}
	}
</style>

<div class="hero-section fade-in">
	<div class="hero-content">
		<img src="includes/images/ColdBoxLogo2015_300.png" class="hero-logo" alt="ColdBox Logo"/>
		<div class="version-badge">
			#getColdBoxSetting( "version" )# (#getColdBoxSetting( "suffix" )#)
		</div>
		<h1 class="hero-title">
			#prc.welcomeMessage#
		</h1>
		<p class="hero-description">
			Welcome to modern ColdFusion (CFML) development. Start building your application with ease – the hard work is already done for you.
		</p>
	</div>
</div>

<div class="row g-4 mb-5">
	<div class="col-12 col-lg-6">
		<div class="feature-card fade-in">
			<div class="feature-icon">
				<i class="fa-solid fa-bolt" aria-hidden="true"></i>
			</div>
			<h2 class="feature-title">Event Handlers</h2>
			<p class="feature-description">
				Execute event handlers and their default actions <span class="badge">index()</span>
			</p>
			<div class="list-group">
				<cfloop list="#getSetting("RegisteredHandlers")#" index="handler">
					<a href="#event.buildLink( handler )#" class="list-group-item d-flex align-items-center gap-3" title="Run Event">
						<i class="fa-solid fa-play" aria-hidden="true"></i>
						<span class="flex-grow-1">#handler#</span>
						<i class="fa-solid fa-chevron-right" aria-hidden="true"></i>
					</a>
				</cfloop>
			</div>
		</div>
	</div>

	<div class="col-12 col-lg-6">
		<div class="feature-card fade-in">
			<div class="feature-icon">
				<i class="fa-solid fa-cubes" aria-hidden="true"></i>
			</div>
			<h2 class="feature-title">Modules</h2>
			<p class="feature-description">
				Your registered ColdBox modules. Click to open their entry points.
			</p>
			<div class="list-group">
				<cfloop collection="#getSetting("Modules")#" item="thisModule">
					<a href="#event.buildLink( getModuleConfig( thisModule ).inheritedEntryPoint )#" class="list-group-item d-flex align-items-center gap-3" title="Run Module">
						<i class="fa-solid fa-play" aria-hidden="true"></i>
						<span class="flex-grow-1">#thisModule#</span>
						<i class="fa-solid fa-chevron-right" aria-hidden="true"></i>
					</a>
				</cfloop>
			</div>
		</div>
	</div>
</div>

<div class="row g-4 mb-5">
	<div class="col-12 col-lg-6">
		<div class="feature-card fade-in">
			<div class="feature-icon">
				<i class="fa-solid fa-rotate" aria-hidden="true"></i>
			</div>
			<h2 class="feature-title">Reinitialize ColdBox</h2>
			<p class="feature-description">
				ColdBox caches resources for performance. Reinitialize after configuration changes, module modifications, or updates. Use the URL action or run <code>coldbox reinit</code> via CommandBox.
			</p>
			<table class="custom-table">
				<tbody>
					<tr>
						<td>
							<div class="mb-2"><code>?fwreinit=1</code></div>
							<div><code>?fwreinit={ReinitPassword}</code></div>
						</td>
						<td style="text-align: right;">
							<a class="btn-action" href="index.cfm?fwreinit=1">
								<i class="fa-solid fa-rotate" aria-hidden="true"></i>
								Reinit
							</a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<div class="col-12 col-lg-6">
		<div class="feature-card fade-in">
			<div class="feature-icon">
				<i class="fa-solid fa-vial" aria-hidden="true"></i>
			</div>
			<h2 class="feature-title">Tests</h2>
			<p class="feature-description">
				Unit and integration testing are integral to ColdBox applications. The test harness is scaffolded under <code>tests</code>. Run tests via CommandBox: <code>testbox run</code> or start a watcher: <code>testbox watch</code>
			</p>
			<div class="action-buttons">
				<a
					href="#getSetting( "appMapping" )#/tests/index.cfm"
					class="btn-action"
					role="button"
					target="_blank"
				>
					<i class="fa-solid fa-microscope" aria-hidden="true"></i>
					Test Browser
				</a>
				<a
					href="#getSetting( "appMapping" )#/tests/runner.cfm"
					class="btn-action"
					role="button"
					target="_blank"
				>
					<i class="fa-solid fa-gauge-high" aria-hidden="true"></i>
					Test Runner
				</a>
			</div>
		</div>
	</div>
</div>

</cfoutput>
