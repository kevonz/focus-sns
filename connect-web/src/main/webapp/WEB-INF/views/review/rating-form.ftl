<#import "/META-INF/spring.ftl" as spring />

<div id="${widgetConfig.id}" class="widget">
	<#if widgetConfig.title??>
	<div class="head">
		<h3>${widgetConfig.title}</h3>
	</div>
	</#if>
	<div class="body">
		<@spring.bind "rating"/>
		<form class="rating-form" action="${base}/review/rating/form-action" method="post">
			<div>
				<label>评论</label>
				<br/>
				<@spring.formTextarea path="rating.comment" attributes='class="xheditor-mini"'/>	
			</div>
			<div>
				<label>星级</label>
				<br/>
				<input name="rating"/>
			</div>
			<div>
				<button type="submit">提交</button>
				<@spring.formHiddenInput path="rating.projectId" />
				<@spring.formHiddenInput path="rating.enteredId" />
				<@spring.formHiddenInput path="rating.modifiedId" />
				<input type="hidden" name="uniqueId" value="${project.uniqueId}" />
			</div>
		</form>
	</div>
</div>