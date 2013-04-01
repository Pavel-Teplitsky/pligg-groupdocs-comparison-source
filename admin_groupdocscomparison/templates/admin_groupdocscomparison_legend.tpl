{literal}
<script>

$(document).ready(function(){
		// add interface
        $('#textarea-1').before('<div style="border:1px solid #bcbcbc;margin-bottom:7px;background-color:#CDE1F4;"><table><tr><td>Comparison:</td></tr><tr><td>Embed Key:<input id="embedKey" type="text" style="width:200px" value=""/></td><td>File ID:<input id="fileid" type="text" style="width:350px" value=""/></td></tr><tr><td>Width:<input id="iwidth" type="text" style="width:50px;" value="600"/></td><td>Height:<input id="iheight" type="text" style="width:50px" value="700"/></td></tr><tr><td><input type="button" style="color:#003366;font-weight:bold;" value="Embed GroupDocs Comparison" onclick="insertGroupDocsComparison();"></td></tr></table><br><a target="blank" href="http://groupdocs.com/docs/display/gendoc/FAQs">See our FAQ</a> to learn how to get Form ID.</div>');
});

// Insert GroupDocs file
function insertGroupDocsComparison() {
    
	var iwidth = $('#iwidth').val();
	var iheight = $('#iheight').val();
	var fileId = $('#fileid').val();
    var embedKey = $('#embedKey').val();
    console.log(fileId);
    console.log(embedKey);
    if(embedKey.length<20) { alert('Sorry, but Embed Key is too short or empty'); return false; }
    if(fileId.length<60) { alert('Sorry, but Form ID is too short or empty'); return false; }
    if(parseInt(iwidth)<10) { alert('Sorry, but Width is too small'); return false; }
	if(parseInt(iheight)<10) { alert('Sorry, but Height is too small'); return false; }

    // all good continue
    var cmsName = 'Pligg'
    var pluginVersion = '1.0'
    var iframe = '<iframe src="https://apps.groupdocs.com/document-comparison/embed/' + embedKey + '/' + fileId + '?&referer='+cmsName+'/'+pluginVersion+'" frameborder="0" width="'+iwidth+'" height="'+iheight+'"></iframe>';

	// place iframe in content
	
    if(document.getElementsByTagName('textarea')[0].nextSibling && 
       document.getElementsByTagName('textarea')[0].nextSibling.className && 
       document.getElementsByTagName('textarea')[0].nextSibling.className.indexOf('mceEditor')!=-1){
		// set content
        var tinyMceContent = tinyMCE.activeEditor.getContent();
		tinyMCE.activeEditor.setContent(tinyMceContent+iframe);
	}else{
	    // insert in content just after text if no TinyMCE
		var cont = $('#textarea-1').html();
		iframe = cont + '<br>' + iframe;
		$('#textarea-1').html(iframe);
	}

}
//
</script>
{/literal}
