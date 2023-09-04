// // v1: blocking (combine with prebid-ads.js)
// (function() {
//     'use strict';
//     let bodyClasses = document.querySelector('body').classList;
//     if(adsblocked) {
//         bodyClasses.add('adsblocked');
//     } else {
//         bodyClasses.add('adsenabled');
//     }
// })();

// v2: async, just add class to body
(async function() {
    let adsblocked = false;
    const googleAdUrl = 'https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js';
    let bodyClassList = document.querySelector('body').classList;
    bodyClassList.add('adspending');
    try {
        await fetch(new Request(googleAdUrl))
            .catch(function(){
                adsblocked = true;
                bodyClassList.replace('adspending', 'adsblocked');
            });
    } catch (e) {
        adsblocked = true;
        bodyClassList.replace('adspending', 'adsblocked');
    } finally {
        if(!adsblocked) {
            bodyClassList.replace('adspending', 'adsenabled');
        }
    }
})();