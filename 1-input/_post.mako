<%inherit file="/_base_pretty.mako" />
#### <% 
####   assert self.uri.endswith('.html.mako'), 'Unexpected Extension: %r'%(self.uri,)
####   date,mdFilename,meta,title,image = self.attr.postInfo(self.uri[:-5]+'.md')
#### %>
<%block name="TITLE">How to write fast Rust code</%block>
<h1 class=postTitle>DOLLAR OPEN title CLOSE</h1>
<div class=postMeta>Published <span class=postDate>DOLLAR OPEN date CLOSE</span>,&nbsp; by <span class=postAuthor>DOLLAR OPEN meta['author'] CLOSE</span></div>
<img class="postMainImg roundBorder" src="DOLLAR OPEN image CLOSE" />
${next.body()}
