<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="chrome=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	</head>
	<body>
	<h1>Lmy-Pi Frontend Interface</h1>
	<a target="content" onClick='return d(this)' href="yaaw/">Downloader</a>
	<a target="content" onClick='return d(this)' href="ssh://pi@<?php echo $_SERVER ['HTTP_HOST']; ?>/">Shell</a>
	<a target="content" onClick='return d(this)' href="vnc://<?php echo $_SERVER ['HTTP_HOST']; ?>:5900/">Desktop</a>
	<a target="content" onClick='return d(this)' href="smb://<?php echo $_SERVER ['HTTP_HOST']; ?>/">File Sharing</a>
	<a target="content" onClick='return d(this)' href="http://<?php echo $_SERVER ['HTTP_HOST']; ?>:8888/gui/">File Sync</a>
	<a target="content" onClick='return d(this)' href="https://<?php echo $_SERVER ['HTTP_HOST']; ?>/owncloud/">Cloud Service</a>
	<a target="content" onClick='return d(this)' href="test.php">PHP Info</a>
	<a target="content" onClick='return d(this)' href="tz.php">Server Info</a>
	<a target="content" onClick='return d(this)' href="http://www.tslimi.tk/">My Website</a>
		<script language="javascript">
			var last;
			function d(obj) {
				if (last) last.className = '';
				obj.className = 'working';
				last = obj;
			}
		</script>
		<style>
			body {
				padding:0;
				margin:0;
				background:#181818;
			}
			h1 {
			    color: white;
			    font-family: serif;
			    background: #666;
			    box-sizing: border-box;
			    padding: 20px 30px;
			    margin: 0;
			    pointer-events: none;
			    text-align: justify;
			}
			a {
				display: block;
				padding: 20px 10px;
				width: 100%;
				vertical-align: middle;
				text-decoration: none;
				color: white;
				font-size: 20px;
				font-family: sans-serif;
				box-sizing: border-box;
			}
			a:nth-child(even) {background:#111;}
			a:hover {
				background: #333;
			}
			a:active {
				background: #777;
			}
			a.working {
				background: #555;
			}
		</style>
	</body>
</html>