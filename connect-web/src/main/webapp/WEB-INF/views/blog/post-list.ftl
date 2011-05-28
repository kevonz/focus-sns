<#assign id = widgetConfig.id />

<div id="${widgetConfig.id}" class="widget">
	<#if widgetConfig.title??>
	<div class="head">
		<h3>${widgetConfig.title}</h3>
	</div>
	</#if>
	<div class="body">
	<#if page.result?size == 0>
		<div class="notice">当前无博文可显示!</div>
	<#else>
		<ul class="posts-list">
			<#list page.result as post>
			<li>
				<h1>
					<a href="${base}/${project.uniqueId}/blog/post/detail?postId=${post.id}">${post.title}</a>
				</h1>
				<div>${post.shortContent}</div>
				<div class="post-actions">
					<@security code="post-view">
					<a href="${base}/${project.uniqueId}/blog/post/detail?postId=${post.id}" class="readmore">浏览(${post.views})</a>
					</@security>
					<@security code="post-edit">
					<a href="${base}/${project.uniqueId}/blog/post/form?postId=${post.id}">编辑</a>
					</@security>
					<a href="${base}/${project.uniqueId}/blog/post/detail?postId=${post.id}#comments-list" class="comments">评论(${post.commentNumber})</a>
					<span class="date">${post.entered?string('yyyy/M/d')}</span>
				</div>
			</li>
			</#list>
		</ul>
		<br/>
		<div id="pagination${id}" class="right"></div>
	</#if>
	</div>
</div>