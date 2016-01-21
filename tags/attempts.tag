<attempts>
	<ul>
		<li each={attempt_data in attempts_data}>
			<attempt data={attempt_data}></attempt>
		</li>
	</ul>
	<script>
		this.attempts_data = [
			{
				problem:  {link: "https://www.google.com", title: "Problem 1"},
				solution: {link: "https://www.github.com", title: "My Solution"},
				result: {status: "Success"}
			},
			{
				problem:  {link: "https://www.google.com", title: "Problem 2"},
				solution: {link: "https://www.github.com", title: "My Solution 2"},
				result: {status: "Success"}
			}]
			console.log(this.attempts_data)
	</script>
</attempts>
