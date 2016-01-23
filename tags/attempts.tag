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
			this.on('mount', function() {
				this.fetchAttempts = (this.opts.fetch_attempts ||
				function(){
					console.log("Default fetch attempt")
				})
				this.fetchAttempts(this)
			})
			this.on('data_loaded', function(data) {
				console.log("Data loaded: ", data)
				this.attempts_data = data.attempts
				this.update()
			})
	</script>
</attempts>
