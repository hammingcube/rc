<attempt>
	<a href={problem.link}>{problem.title}</a>
	<a href={solution.link}>{solution.title}</a>
	<span>{result.status}</span>
	<script>
			this.problem = opts.data.problem || {link: "https://www.google.com", title: "Problem 1"}
			this.solution = opts.data.solution || {link: "https://www.github.com", title: "My Solution"}
			this.result = opts.data.result || {status: "Success"}
	</script>
</attempt>
