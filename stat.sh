#!/bin/bash
cat <<-_EOF_ 
<!DOCTYPE html>
	<html>
		<head>
			<title>my page </title>
		</head>
		<body>
			<h1> $(ls -l) </h1>
		</body>	
	</html>
_EOF_

