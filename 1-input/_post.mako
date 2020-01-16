<%inherit file="/_base_pretty.mako" />
<%!
    import os, pyhpy
    def postInfo(mdRelPath):
        assert mdRelPath.startswith('/')  and  mdRelPath.endswith('.html.md'), 'Unexpected blog post filename: %r'%(mdRelPath,)
        meta = pyhpy.meta(pyhpy.FS_ROOT()+mdRelPath)
        title = os.path.split(mdRelPath)[1][:-8].replace('_', ' ')
        return meta['date'], mdRelPath, meta, title, meta['image']
%>
<% 
  assert self.uri.endswith('.html.mako'), 'Unexpected Extension: %r'%(self.uri,)
  date,mdFilename,meta,title,image = self.attr.postInfo(self.uri[:-5]+'.md')
%>
## The block is evaluated before the above code, so that's why we can't use 'title' from above:
<%block name="TITLE">${self.attr.postInfo(self.uri[:-5]+'.md')[3]}</%block>
${next.body()}
