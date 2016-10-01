<nav-blog xmlns:th="http://www.thymeleaf.org">
	<div id="wr-blog-nav" class="collapse">
		<div class="navbar-collapse">
			<ul class="nav navbar-nav navbar-left">
				<li><a href="/_admin/"><span class="glyphicon glyphicon-home"></span></a></li>
				<li><a href="/_admin/articles"><span class="glyphicon glyphicon-file"></span> <span th:text="">Articles</span></a></li>
				<li><a href="/_admin/pages"><span class="glyphicon glyphicon-book"></span> <span th:text="">Pages</span></a></li>
				<li><a href="/_admin/categories"><span class="glyphicon glyphicon-folder-open"></span> <span th:text="">Categories</span></a></li>
				<li><a href="/_admin/tags"><span class="glyphicon glyphicon-tag"></span> <span th:text="">Tags</span></a></li>
				<li><a href="/_admin/customfields"><span class="glyphicon glyphicon-wrench"></span> <span th:text="">Custom field</span></a></li>
				<li><a href="/_admin/comments"><span class="glyphicon glyphicon-comment"></span> <span th:text="">Comments</span></a></li>
				<li><a href="/_admin/users"><span class="glyphicon glyphicon-user"></span> <span th:text="">Users</span></a></li>
				<li><a href="/_admin/analytics"><span class="glyphicon glyphicon-signal"></span> <span th:text="">Google Analytics</span></a></li>
				<li><a href="/_admin/system"><span class="glyphicon glyphicon-cog"></span> <span th:text="">System</span></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" role="button" class="add-menu dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-plus"></span></a>
					<ul class="dropdown-menu" role="menu" aria-labelledby="add-menu">
						<li role="presentation"><a role="menuitem" tabindex="-1"><span class="glyphicon glyphicon-pencil"></span> <span th:text="">New Article</span></a></li>
						<li role="presentation"><a role="menuitem" tabindex="-1"> <span class="glyphicon glyphicon-pencil"></span> <span th:text="">New Page</span></a></li>
						<li><a><span class="glyphicon glyphicon-send"></span> <span th:text="">Invite New</span></a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle wr-current-language" data-toggle="dropdown"><span th:text=""caret"></b></a>
					<ul class="dropdown-menu">
						<li class="disabled"><a href="#">Languages</a></li>
						<li th:each=""><a><span th:text="">English</span> </a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</nav-blog>