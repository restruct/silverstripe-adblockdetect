
<% require javascript("adblock-detect/client/js/script.js") %>

<style>
    .adblocker-alert { display: none; }
    .adsblocked .adblocker-alert { display: block; }
    .adblocker-alert svg { margin-top: -4px; }
    .adblocker-alert #adblockerInfo .card { display: block; }
    .adblocker-alert #adblockerInfo img { height: auto; max-width: 200px; float: left; clear: left; margin-right: .5rem; }
    .adblocker-alert #adblockerInfo div.clearfix { display: block; clear: both; height:10px; }
</style>
<div class="alert alert-danger adblocker-alert">
    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-exclamation-triangle" viewBox="0 0 16 16">
        <path d="M7.938 2.016A.13.13 0 0 1 8.002 2a.13.13 0 0 1 .063.016.146.146 0 0 1 .054.057l6.857 11.667c.036.06.035.124.002.183a.163.163 0 0 1-.054.06.116.116 0 0 1-.066.017H1.146a.115.115 0 0 1-.066-.017.163.163 0 0 1-.054-.06.176.176 0 0 1 .002-.183L7.884 2.073a.147.147 0 0 1 .054-.057zm1.044-.45a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566z"/>
        <path d="M7.002 12a1 1 0 1 1 2 0 1 1 0 0 1-2 0zM7.1 5.995a.905.905 0 1 1 1.8 0l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995z"/>
    </svg>
    <strong>Het lijkt erop dat je een adblocker gebruikt.</strong><br>
    Adblockers kunnen problemen geven bij het versturen van onderstaand formulier. Wil je jouw adblocker voor ons pauzeren?
    <br>
    <button type="button" class="btn btn-primary btn-sm" onclick="document.getElementById('adblockerInfo').classList.toggle('collapse');">
        Hoe doe ik dit?
    </button>
    <div class="collapse mt-3" id="adblockerInfo" tabindex="-1">
        <div class="card card-body bg-white text-body">
            <img title="AdBlock" alt="" src="adblock-detect/client/imgs/adblock.webp" />
            <strong>AdBlock</strong><br>
            Je kunt AdBlock in je browser openen als je op deze pagina zit. Kies 'Blokkeer niets op pagina's van dit domein' en klik op 'uitsluiten'.<br>
            <div class="clearfix"></div>
            <img title="AdBlock Plus" alt="" src="adblock-detect/client/imgs/adblockplus.webp" />
            <strong>AdBlock Plus</strong><br>
            Je kunt AdBlock Plus in je browser openen als op deze pagina zit. Als je dan klikt op 'Ingeschakeld op deze site', schakel je Adblock Plus uit.<br>
            <div class="clearfix"></div>
            <img title="AdBlock Pro" alt="" src="adblock-detect/client/imgs/adblockpro.webp" />
            <strong>AdBlock Pro</strong><br>
            Je kunt AdBlock Pro in je browser openen als op deze pagina zit. Als je dan klikt op 'Uitschakelen voor deze website', schakel je Adblock Pro uit.<br>
            <div class="clearfix"></div>
        </div>
    </div>
</div>