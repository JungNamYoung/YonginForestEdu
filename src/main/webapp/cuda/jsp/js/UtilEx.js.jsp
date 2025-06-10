<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

 <script>

const UtilEx = {

    /*
    	return 값: /UtilViewer/util-viewer/time/selectMemorialDay.do
    */
    getPageName: function () {
        var page = window.location.href;
        var t1 = window.location.host;
        var array = page.split(t1);

        //var t2 = window.location.hostname;
        //var t3 = window.location.port;

        return array[Define.INDEX_1];
    },

    goPage: function (page) {
        const rootPath = '<c:url value="/"/>';
        location.href = rootPath + page;
    },

    showWindow: function (url) {
        // console.log('showWindow : ' + url);
        const link = document.createElement(Define.TAG_A);
        link.href = url;
        link.target = Define.BLANK;
        link.rel = 'noopener noreferrer';
        document.body.appendChild(link);
        link.click();
        document.body.removeChild(link);
    },

    truncate: function (data, maxLength = 100) {
        try {
            // const parsed = JSON.parse(data);
            // return JSON.stringify(parsed).length > maxLength ? JSON.stringify(parsed).substring(0, maxLength) + '... [truncated]' : JSON.stringify(parsed);
            return data.length > maxLength ? data.substring(0, maxLength) + '  ...[Truncated]' : data;
        } catch (e) {
            return truncateMessage(data, maxLength);
        }
    },

    resize : function($image, ratio) {        
        if ($image[0].complete) {
            adjustImageSize($image[0]);
        } else {
            $image.on('load', function () {
                adjustImageSize(this);
            });
        }

        function adjustImageSize(img) {
            const originalWidth = img.naturalWidth;
            const originalHeight = img.naturalHeight;

            $(img).css({
                width : originalWidth * ratio + Define.PX,
                height : originalHeight * ratio + Define.PX
            });
        }
    },
    
    calStyleSize(imageWidth, imageHeight){
//     	const imageWidth = 424;
//     	const imageHeight = 240;

    	const screenWidth = window.innerWidth;
    	const screenHeight = window.innerHeight;

    	const widthVW = (imageWidth / screenWidth) * 100;
    	const heightVH = (imageHeight / screenHeight) * 100;

    	//const element = document.querySelector('.fire-parent-image-size');
    	//const element = document.querySelector(className);
    	//const element = $selector.get(0);
    	
//    	element.style.width = `\${widthVW}vw`;
//    	element.style.height = `\${heightVH}vh`;
    	
    	console.log(`imageWidth, imageHeight : \${imageWidth}, \${imageHeight}`);
    	console.log(`screenWidth, screenHeight : \${screenWidth}, \${screenHeight}`);
    	console.log(`vw, vh : \${widthVW}, \${heightVH}`);
    	
    	return {styleWidth:widthVW, styleHeight:heightVH};
    },
    
    adjustSize : function(vw, vh){
    	
//     	const originalVW = 100;
//     	const originalVH = 98;
//     	const adjusted = adjustSize(originalVW, originalVH);
//     	console.log(`Adjusted vw : ${adjusted.vw}, vh:${adjusted.vh}`);
    	
    	 if(vh >= 50) {
    	   const diff = vh - 40;
    	   vh = 40;
    	   vw -= (vw * diff) / 100;
    	 }
    	 return {vw, vh};
    },


}

</script>
