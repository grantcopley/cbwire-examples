<cfoutput>
<style>
	.example-grid {
		display: grid;
		grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
		gap: 1.25rem;
		margin-top: 1.5rem;
		margin-bottom: 2rem;
	}

	.example-card {
		background: rgba(255, 255, 255, 0.03);
		backdrop-filter: blur(10px);
		border: 1px solid rgba(255, 255, 255, 0.1);
		border-radius: 16px;
		padding: 1.5rem;
		text-align: center;
		transition: all 0.3s ease;
		position: relative;
		overflow: hidden;
	}

	.example-card::before {
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

	.example-card:hover {
		background: rgba(255, 255, 255, 0.05);
		border-color: ##667eea;
		transform: translateY(-4px);
		box-shadow: 0 8px 24px rgba(0, 0, 0, 0.3), 0 0 20px rgba(102, 126, 234, 0.2);
	}

	.example-card:hover::before {
		transform: scaleX(1);
	}

	.example-card a {
		display: block;
		color: ##ffffff;
		text-decoration: none;
		font-weight: 500;
		font-size: 1rem;
	}

	.example-card:hover a {
		color: ##ffffff;
	}

	.section-title {
		margin-top: 2.5rem;
		margin-bottom: 0;
		font-size: 2rem;
		font-weight: 600;
		color: ##ffffff;
		position: relative;
		padding-bottom: 0.75rem;
	}

	.section-title::after {
		content: '';
		position: absolute;
		bottom: 0;
		left: 0;
		width: 60px;
		height: 4px;
		background: linear-gradient(90deg, ##667eea 0%, ##764ba2 100%);
		border-radius: 2px;
	}

	.section-title:first-child {
		margin-top: 0;
	}

	@media (max-width: 768px) {
		.example-grid {
			grid-template-columns: 1fr;
			gap: 1rem;
		}

		.section-title {
			font-size: 1.75rem;
			margin-top: 2rem;
		}

		.example-card {
			padding: 1.25rem;
		}
	}
</style>

<div>
	<h2 class="section-title">Getting Started</h2>
	<div class="example-grid">
		<div class="example-card">
			<a href="/examples/DataProperties">Data Properties</a>
		</div>
		<div class="example-card">
			<a href="/examples/PassingParameters">Passing Parameters</a>
		</div>
		<div class="example-card">
			<a href="/examples/Actions">Actions</a>
		</div>
		<div class="example-card">
			<a href="/examples/ComputedProperties">Computed Properties</a>
		</div>
		<div class="example-card">
			<a href="/examples/DataBinding">Data Binding</a>
		</div>
		<div class="example-card">
			<a href="/examples/JSListeners">JavaScript Listeners</a>
		</div>
		<div class="example-card">
			<a href="/examples/QueryString">Query String</a>
		</div>
		<div class="example-card">
			<a href="/examples/Redirect">Redirect</a>
		</div>
	</div>

	<h2 class="section-title">Forms</h2>
	<div class="example-grid">
		<div class="example-card">
			<a href="/examples/TextInput">Text Input</a>
		</div>
		<div class="example-card">
			<a href="/examples/CheckboxInput">Checkbox Input</a>
		</div>
		<div class="example-card">
			<a href="/examples/RadioInput">Radio Input</a>
		</div>
		<div class="example-card">
			<a href="/examples/SelectInput">Select Input</a>
		</div>
		<div class="example-card">
			<a href="/examples/MultiselectInput">Multiselect Input</a>
		</div>
		<div class="example-card">
			<a href="/examples/SubmitButton">Submit Button</a>
		</div>
		<div class="example-card">
			<a href="/examples/FormValidation">Validation</a>
		</div>
		<div class="example-card">
			<a href="/examples/FileUpload">File Upload</a>
		</div>
		<div class="example-card">
			<a href="/examples/Modal">Modal</a>
		</div>
	</div>

	<h2 class="section-title">Template Directives</h2>
	<div class="example-grid">
		<div class="example-card">
			<a href="/examples/DirectiveModel">:model</a>
		</div>
		<div class="example-card">
			<a href="/examples/DirectiveClick">:click</a>
		</div>
		<div class="example-card">
			<a href="/examples/DirectiveKeydown">:keydown</a>
		</div>
		<div class="example-card">
			<a href="/examples/DirectiveLoading">:loading</a>
		</div>
		<div class="example-card">
			<a href="/examples/DirectiveDirty">:dirty</a>
		</div>
		<div class="example-card">
			<a href="/examples/DirectivePoll">:poll</a>
		</div>
		<div class="example-card">
			<a href="/examples/DirectiveInit">:init</a>
		</div>
		<div class="example-card">
			<a href="/examples/MagicActions">Magic Actions</a>
		</div>
	</div>

	<h2 class="section-title">Advanced</h2>
	<div class="example-grid">
		<div class="example-card">
			<a href="/examples/S3Dropdown">S3 Dropdown</a>
		</div>
		<div class="example-card">
			<a href="/examples/ParseURI">Parse URI</a>
		</div>
		<div class="example-card">
			<a href="/examples/NestedWires">Nested Wires</a>
		</div>
		<div class="example-card">
			<a href="/examples/HeadlessCBWIRE">Headless CBWIRE</a>
		</div>
		<div class="example-card">
			<a href="/examples/PollLongRunning">Poll w/ Long Running Process</a>
		</div>
	</div>

	<h2 class="section-title">Alpine</h2>
	<div class="example-grid">
		<div class="example-card">
			<a href="/examples/AlpineXData">Alpine x-data</a>
		</div>
	</div>
</div>
</cfoutput>
