riot.tag2('attempt', '<a href="{problem.link}">{problem.title}</a> <a href="{solution.link}">{solution.title}</a> <span>{result.status}</span>', '', '', function(opts) {
			this.problem = opts.data.problem || {link: "https://www.google.com", title: "Problem 1"}
			this.solution = opts.data.solution || {link: "https://www.github.com", title: "My Solution"}
			this.result = opts.data.result || {status: "Success"}
}, '{ }');

riot.tag2('attempts', '<ul> <li each="{attempt_data in attempts_data}"> <attempt data="{attempt_data}"></attempt> </li> </ul>', '', '', function(opts) {
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
}, '{ }');

riot.tag2('main-app', '<h1>Main Application</h1> <attempts fetch_attempts="{opts.fetch_attempts}"></attempts>', '', '', function(opts) {
}, '{ }');
