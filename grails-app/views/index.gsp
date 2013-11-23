<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Eventsy</title>
	</head>
	<body>
		<div class="container" id="page-body" role="main">
			<div id="fb-root"></div>

			<div id="controller-list" role="navigation">
				<h2>Available Controllers:</h2>
				<ul>
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
						<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
					</g:each>
				</ul>
			</div>
			<fb:login-button show-faces="true" width="200" max-rows="1"></fb:login-button>
		</div>
	</body>
</html>
