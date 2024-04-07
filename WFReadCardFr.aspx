<!DOCTYPE html>
<html class="csstransforms csstransforms3d csstransitions">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0"><meta name="description"><meta name="author">

    <!-- core CSS -->
    <link href="CNIBeE_fichiers/bootstrap.css" rel="stylesheet"><link href="CNIBeE_fichiers/font-awesome.css" rel="stylesheet"><link href="CNIBeE_fichiers/animate.css" rel="stylesheet"><link href="CNIBeE_fichiers/prettyPhoto.css" rel="stylesheet"><link href="CNIBeE_fichiers/main.css" rel="stylesheet"><link href="CNIBeE_fichiers/responsive.css" rel="stylesheet"><link href="CNIBeE_fichiers/MyStyle.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="https://macnibe.interieur.gov.dz/images/ico/favicon.ico"><link rel="apple-touch-icon-precomposed" sizes="144x144" href="https://macnibe.interieur.gov.dz/images/ico/CNIBE_144.png"><link rel="apple-touch-icon-precomposed" sizes="114x114" href="https://macnibe.interieur.gov.dz/images/ico/CNIBE_114.png"><link rel="apple-touch-icon-precomposed" sizes="72x72" href="https://macnibe.interieur.gov.dz/images/ico/CNIBE_72.png"><link rel="apple-touch-icon-precomposed" href="https://macnibe.interieur.gov.dz/images/ico/CNIBE_57.png">
    <script src="CNIBeE_fichiers/jquery_003.js"></script>
    <script src="CNIBeE_fichiers/bootstrap.js"></script>
    <script src="CNIBeE_fichiers/jquery.js"></script>
    <script src="CNIBeE_fichiers/jquery_002.js"></script>
    <script src="CNIBeE_fichiers/main.js"></script>
    <script src="CNIBeE_fichiers/wow.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {

            $(function () {

                $(document).on('scroll', function () {

                    if ($(window).scrollTop() > 100) {
                        $('.scroll-top-wrapper').addClass('show');
                    } else {
                        $('.scroll-top-wrapper').removeClass('show');
                    }
                });

                $('.scroll-top-wrapper').on('click', scrollToTop);
            });

            function scrollToTop() {
                verticalOffset = typeof (verticalOffset) != 'undefined' ? verticalOffset : 0;
                element = $('body');
                offset = element.offset();
                offsetTop = offset.top;
                $('html, body').animate({ scrollTop: offsetTop }, 500, 'linear');
            }

        });

    </script>
    <title>
	CNIBE
</title>
    <script type="text/javascript" src="CNIBeE_fichiers/MyScript.js"></script>
    <script type="text/javascript" language="javascript">


        function removeSpaces(string) {
            return string.split(' ').join('');
        }
        function preloader__() {
            document.getElementById('preloader').style.visibility = "visible";
        }
        function Actualiser() {
            window.location.reload(true);
        }

        function GetRefreshButton() {
            metroDialog.toggle('#dialog8');
            metroDialog.toggle('#dialog9');
        }
        String.prototype.trim = function () {
            return this.replace(/^\s*/, "").replace(/\s*$/, "");
        }
        function getError(val) {
            var styleControlSucces = "background-color:#f8f8f8;border-color:#036f05;";
            var styleControlError = "background-color:rgba(247, 34, 34, 0.42);border-color:#c20d0d;";
            var styleLabelSucces = "color:#000;";
            var styleLabelError = "color:#c80505;";
            switch (val) {
                case '0':
                    document.getElementById('lblreader').setAttribute("style", styleLabelSucces);
                    document.getElementById('DropReader').setAttribute("style", styleControlSucces);
                    document.getElementById('lblNumCarte').setAttribute("style", styleLabelSucces);
                    document.getElementById('ContentPlaceHolder1_TxtNumCarte').setAttribute("style", styleControlSucces);
                    document.getElementById('lblDateNaiss').setAttribute("style", styleLabelSucces);
                    document.getElementById('ContentPlaceHolder1_TxtDateNaiss').setAttribute("style", styleControlSucces);
                    document.getElementById('lblDateExpir').setAttribute("style", styleLabelSucces);
                    document.getElementById('ContentPlaceHolder1_TxtDateExpir').setAttribute("style", styleControlSucces);
                    break;
                case '1':
                    document.getElementById('lblreader').setAttribute("style", styleLabelError);
                    document.getElementById('DropReader').setAttribute("style", styleControlError);
                    break;
                case '2':
                    //  $('#myModal').modal('show');
                    document.getElementById('lblNumCarte').setAttribute("style", styleLabelError);
                    document.getElementById('ContentPlaceHolder1_TxtNumCarte').setAttribute("style", styleControlError);
                    break;
                case '3':
                    document.getElementById('lblDateNaiss').setAttribute("style", styleLabelError);
                    document.getElementById('ContentPlaceHolder1_TxtDateNaiss').setAttribute("style", styleControlError);
                    break;
                case '4':
                    document.getElementById('lblDateExpir').setAttribute("style", styleLabelError);
                    document.getElementById('ContentPlaceHolder1_TxtDateExpir').setAttribute("style", styleControlError);
                    break;

            }

        }
        function controlForm() {
            // 
            //  if (document.getElementById('DropReader').value.length > 5 && document.getElementById('ContentPlaceHolder1_TxtNumCarte').value.length == 9 && document.getElementById('TtxtDateExpir').value.length == 10 && document.getElementById('TxtDateNaiss').value.length == 10) {
            var res = false;
            var reader = document.getElementById('DropReader');
            var numCarte = document.getElementById('ContentPlaceHolder1_TxtNumCarte');
            var dateNais = document.getElementById('ContentPlaceHolder1_TxtDateNaiss');
            var dateExpir = document.getElementById('ContentPlaceHolder1_TxtDateExpir');

            if (reader.value.length < 2) {
                getError('1');
                return false;
            }
            else getError('0');


            if (numCarte.value.trim().length != 9) {
                getError('2');
                return false;
            }
            else getError('0');


            if (dateNais.value.length != 10) {
                getError('3');
                return false;
            }
            else getError('0');


            if (dateExpir.value.length != 10) {

                getError('4');
            }
            else getError('0');

            if (reader.value.length > 2 && numCarte.value.trim().length == 9 && dateNais.value.length == 10 && dateExpir.value.length == 10) {
                getError('0');
                return true;

            }

        }

        function initData() {
            var empty = '';
            document.getElementById('TxtNomAr').value = empty;
            document.getElementById('TxtNomLat').value = empty;
            document.getElementById('TxtPrenomAr').value = empty;
            document.getElementById('TxtPrenomLat').value = empty;
            document.getElementById('TxtDateNaissRes').value = empty;
            document.getElementById('TxtSexe').value = empty;
            document.getElementById('TxtLieuNaiss').value = empty;

            document.getElementById('TxtAdresse').value = empty;
            document.getElementById('TxtNIN').value = empty;
            document.getElementById('TxtNomEpouxAr').value = empty;
            document.getElementById('TxtNomEpouxLat').value = empty;
            document.getElementById('TxtSituation').value = empty;

            document.getElementById('PBPhoto').src = empty;

        }

        function addEvent(obj, name, func) {
            if (obj.attachEvent) {
                obj.attachEvent("on" + name, func);
            } else {
                obj.addEventListener(name, func, false);
            }
        }

        function log(data) {
            document.getElementById("log").textContent += data + "\n";
        }

        function pluginLoaded() {


            window.dzaeidcard = document.getElementById("dzaeidcard");
            // log("dzaeidcard version " + dzaeidcard.version);
            addEvent(dzaeidcard, "cardpresent", cardPresent);
            addEvent(dzaeidcard, "cardremoved", cardRemoved);

            select = document.getElementById('DropReader');
            for (var i = 0; i < dzaeidcard.readers.length; i++) {

                var opt = document.createElement('option');
                opt.value = dzaeidcard.readers[i].name;
                opt.innerHTML = dzaeidcard.readers[i].name;
                select.appendChild(opt);
            }

        }

        function cardPresent(reader) {
            //   document.getElementById(reader.name.replace(/\s/g, "").toLowerCase()).style.color = "green";
            initData();
            var element = document.getElementById("DropReader");
            element.value = reader.name;
            setTimeout(initCard(reader), 10);

        }

        function cardRemoved(reader) {
            var styleSucces = "padding:10px;margin-top:20px; margin:auto;border:1px solid #049204;background-color:#d7f5d8;color:#157616;border-radius:4px;text-align:center;font-weight:bold;font-size:17px";
            var styleError = "padding:10px;margin-top:20px; margin:auto;border:1px solid #ed0b0b;background-color:#fec5c5;color:#aa0909;border-radius:4px;text-align:center;font-weight:bold;font-size:17px";
            //   document.getElementById(reader.name.replace(/\s/g, "").toLowerCase()).style.color = "inherit";
            var element = document.getElementById("DropReader");
            element.value = '0';
            document.getElementById('divLecture').setAttribute("style", styleSucces);
            document.getElementById('divLecture').innerHTML = "Placer la carte d'identité biométrique sur le lecteur";
            $('#LoaderModal').modal('hide');
        }

        function initCard(reader) {
            reader.connect(2);
            var styleSucces = "padding:10px;margin-top:20px; margin:auto;border:1px solid #049204;background-color:#d7f5d8;color:#157616;border-radius:4px;text-align:center;font-weight:bold;font-size:17px";
            var styleError = "padding:10px;margin-top:20px; margin:auto;border:1px solid #ed0b0b;background-color:#fec5c5;color:#aa0909;border-radius:4px;text-align:center;font-weight:bold;font-size:17px";
            //  log("ATR : " + reader.atr);
            if (controlForm()) {
                try {

                    getError('0');
                    $('#LoaderModal').modal('show');

                    var dateNaiss = document.getElementById('ContentPlaceHolder1_TxtDateNaiss').value;
                    if (dateNaiss.substr(0, 2) == '00' || dateNaiss.substr(0, 2) == 'xx') dateNaiss = '<<' + dateNaiss.substr(2, 8);

                    if (dateNaiss.substr(3, 2) == '00' || dateNaiss.substr(3, 2) == 'xx') dateNaiss = dateNaiss.substr(0, 3) + '<<' + dateNaiss.substr(5, 5);

                    var resp = reader.transcieves(document.getElementById('ContentPlaceHolder1_TxtNumCarte').value, dateNaiss, document.getElementById('ContentPlaceHolder1_TxtDateExpir').value);


                    reader.disconnect();
                    if (resp == "6300") {
                        document.getElementById('divLecture').setAttribute("style", styleError);
                        document.getElementById('divLecture').innerHTML = "Retirer la carte du lecteur, vérifier les informations introduites ensuite placer la carte sur le lecteur";
                        $('#LoaderModal').modal('hide');
                        return;
                    }

                    if (resp == "-1") {
                        document.getElementById('divLecture').setAttribute("style", styleError);
                        document.getElementById('divLecture').innerHTML = "Veuillez refaire la lecture de la carte";
                        $('#LoaderModal').modal('hide');
                        return;
                    }
                    if (resp == "91010") {
                        document.getElementById('divLecture').setAttribute("style", styleError);
                        document.getElementById('divLecture').innerHTML = "La taille des données intorduites est incorrecte";
                        $('#LoaderModal').modal('hide');
                        return;
                    }

                    PageMethods.GET_IDCardControl(resp, document.getElementById('ContentPlaceHolder1_TxtNumCarte').value, onSucess, onError);
                    function onSucess(result) {
                        if (result != '00') {
                            //   document.getElementById("log").textContent += result + "\n";
                            var INFO_IDENTITE_SPLITED = result.split("|");

                            document.getElementById('TxtNomAr').value = INFO_IDENTITE_SPLITED[0];
                            document.getElementById('TxtNomLat').value = INFO_IDENTITE_SPLITED[1];
                            document.getElementById('TxtPrenomAr').value = INFO_IDENTITE_SPLITED[2];
                            document.getElementById('TxtPrenomLat').value = INFO_IDENTITE_SPLITED[3];
                            document.getElementById('TxtDateNaissRes').value = INFO_IDENTITE_SPLITED[4];
                            document.getElementById('TxtSexe').value = INFO_IDENTITE_SPLITED[10];
                            document.getElementById('TxtLieuNaiss').value = INFO_IDENTITE_SPLITED[12];

                            document.getElementById('TxtAdresse').value = INFO_IDENTITE_SPLITED[9];
                            document.getElementById('TxtNIN').value = INFO_IDENTITE_SPLITED[14];
                            document.getElementById('TxtNomEpouxAr').value = INFO_IDENTITE_SPLITED[15];
                            document.getElementById('TxtNomEpouxLat').value = INFO_IDENTITE_SPLITED[16];
                            document.getElementById('TxtSituation').value = INFO_IDENTITE_SPLITED[17];
                            document.getElementById('PBPhoto').src = "data:image/jpg;base64," + INFO_IDENTITE_SPLITED[13];

                            document.getElementById('divLecture').setAttribute("style", styleSucces);
                            document.getElementById('divLecture').innerHTML = "Lecture de la carte terminée avec succès";

                            $('#LoaderModal').modal('hide');
                        }
                        else {

                            if (result == '00') {

                                // alert("Retirer votre carte,ensuite refaire la lecture");
                                document.getElementById('divLecture').setAttribute("style", styleError);
                                document.getElementById('divLecture').innerHTML = "Retirer votre carte, ensuite refaire la lecture";
                                $('#LoaderModal').modal('hide');
                            }
                            if (result == 'V') {
                                document.getElementById('divLecture').setAttribute("style", styleError);
                                document.getElementById('divLecture').innerHTML = "Veuillez télécharger la nouvelle version du plugin à partir du lien.";
                                $('#LoaderModal').modal('hide');
                            }


                        }
                    }
                    function onError(result) {
                        document.getElementById('divLecture').setAttribute("style", styleError);
                        document.getElementById('divLecture').innerHTML = "Une erreur s'est produite lors de la lecture de carte !";
                    }
                }
                catch (e) {
                    document.getElementById('divLecture').setAttribute("style", styleError);
                    document.getElementById('divLecture').innerHTML = "Une erreur s'est produite lors de la lecture de carte !";
                }

            }
            else {
                document.getElementById('divLecture').setAttribute("style", styleError);
                document.getElementById('divLecture').innerHTML = "Retirer votre carte,ensuite compléter les informations manquantes";
            }

        }

    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            function alignModal() {
                var modalDialog = $(this).find(".modal-dialog");

                // Applying the top margin on modal dialog to align it vertically center
                modalDialog.css("margin-top", Math.max(0, ($(window).height() - modalDialog.height()) / 2));
            }
            // Align modal when it is displayed
            $(".modal").on("shown.bs.modal", alignModal);

            // Align modal when user resize the window
            $(window).on("resize", function () {
                $(".modal:visible").each(alignModal);
            });
        });
    </script>
    <script type="text/javascript">
        function DisplayScript() {

            document.body.oncontextmenu = function () { return false; };
            document.getElementById("Lecture").classList.add("active");
            document.getElementById("deault").classList.remove("active");



            //*********************************************************************************************
            var tabNav = new Array(2);
            navigator.getNavinfo = (function get_browser_info() {
                var ua = navigator.userAgent, tem, M = ua.match(/(opera|chrome|safari|firefox|msie|trident(?=\/))\/?\s*(\d+)/i) || [];
                if (/trident/i.test(M[1])) {
                    tem = /\brv[ :]+(\d+)/g.exec(ua) || [];
                    tabNav[0] = 'IE';
                    tabNav[1] = tem[1];
                    return;
                }
                if (M[1] === 'Chrome') {
                    tem = ua.match(/\bOPR\/(\d+)/)
                    if (tem != null) {
                        tabNav[0] = 'Opera';
                        tabNav[1] = tem[1];
                    }
                }
                M = M[2] ? [M[1], M[2]] : [navigator.appName, navigator.appVersion, '-?'];
                if ((tem = ua.match(/version\/(\d+)/i)) != null) { M.splice(1, 1, tem[1]); }
                if (M[0] != 'IE')

                    tabNav[0] = M[0];
                tabNav[1] = M[1];
            })();

            //**************************************************************
            switch (tabNav[0]) {
                case 'IE':
                    // alert(tabNav[0] + '-' + tabNav[1]);
                    var n = 0;
                    var pluginId = document.getElementById("dzaeidcard");
                    try {
                        if (pluginId.version == '0.6.14') n = 1;
                    }
                    catch (e) {
                    }
                    if (n == 0) {
                        document.getElementById('divPluginSetup').style.visibility = "visible";
                        document.getElementById('divPluginSetup').style.display = "block";
                        $('#myModal').modal('show');
                    }
                    else {
                        document.getElementById('divPluginSetup').style.visibility = "hidden";
                        document.getElementById('divPluginSetup').style.display = "none";
                        $('#myModal').modal('hide');
                    }

                    return;
                case 'Chrome':
                    // alert(tabNav[0] + '-' + tabNav[1]);
                    $('#NavigatorModal').modal('show');
                    document.getElementById('SpanNavInfo').innerHTML = '(Chrome)';

                    return;

                case 'Firefox':
                    // alert(tabNav[0] + '-' + tabNav[1]);

                    if (tabNav[1] > 52) {
                        $('#NavigatorModal').modal('show');
                        document.getElementById('SpanNavInfo').innerHTML = '(Firefox  Version: ' + tabNav[1] + ')';

                    }
                    else {

                        numPlugins = navigator.plugins.length;
                        var j = 0;
                        for (i = 0; i < numPlugins; i++) {
                            plugin = navigator.plugins[i];
                            if (plugin.name == 'EID DZA Card Plugin') j = 1;
                        }
                        if (j == 0) {
                            document.getElementById('divPluginSetup').style.visibility = "visible";
                            document.getElementById('divPluginSetup').style.display = "block";
                            $('#myModal').modal('show');
                        }
                        else {
                            document.getElementById('divPluginSetup').style.visibility = "hidden";
                            document.getElementById('divPluginSetup').style.display = "none";
                        }

                    }

                    return;

                default:
                    $('#NavigatorModal').modal('show');
                    return;
            }



        }
    </script>
</head>
<body id="BodyMaster" onload="DisplayScript();">
    <form method="post" action="WFReadCardFr.aspx" id="form1" style="background-color: #f4f5f5">
<div class="aspNetHidden">
<input name="__EVENTTARGET" id="__EVENTTARGET" value="" type="hidden">
<input name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" type="hidden">
<input name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE4NTg3NTc3MjYPZBYCZg9kFgICAw8WAh4Gb25Mb2FkBRBEaXNwbGF5U2NyaXB0KCk7ZGRUowfLcgtGDcNXBttnTcX+yJGS6mEYSEe8JVGgcqy5zQ==" type="hidden">
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="CNIBeE_fichiers/WebResource.js" type="text/javascript"></script>


<script src="CNIBeE_fichiers/ScriptResource.js" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
if (typeof(Sys) === 'undefined') throw new Error('Échec du chargement de l\u0027infrastructure ASP.NET Ajax côté client.');
//]]>
</script>

<script src="CNIBeE_fichiers/ScriptResource_002.js" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
var PageMethods = function() {
PageMethods.initializeBase(this);
this._timeout = 0;
this._userContext = null;
this._succeeded = null;
this._failed = null;
}
PageMethods.prototype = {
_get_path:function() {
 var p = this.get_path();
 if (p) return p;
 else return PageMethods._staticInstance.get_path();},
GET_IDCardControl:function(IDCard,NUM_CARTE,succeededCallback, failedCallback, userContext) {
/// <param name="IDCard" type="String">System.String</param>
/// <param name="NUM_CARTE" type="String">System.String</param>
/// <param name="succeededCallback" type="Function" optional="true" mayBeNull="true"></param>
/// <param name="failedCallback" type="Function" optional="true" mayBeNull="true"></param>
/// <param name="userContext" optional="true" mayBeNull="true"></param>
return this._invoke(this._get_path(), 'GET_IDCardControl',false,{IDCard:IDCard,NUM_CARTE:NUM_CARTE},succeededCallback,failedCallback,userContext); }}
PageMethods.registerClass('PageMethods',Sys.Net.WebServiceProxy);
PageMethods._staticInstance = new PageMethods();
PageMethods.set_path = function(value) {
PageMethods._staticInstance.set_path(value); }
PageMethods.get_path = function() { 
/// <value type="String" mayBeNull="true">The service url.</value>
return PageMethods._staticInstance.get_path();}
PageMethods.set_timeout = function(value) {
PageMethods._staticInstance.set_timeout(value); }
PageMethods.get_timeout = function() { 
/// <value type="Number">The service timeout.</value>
return PageMethods._staticInstance.get_timeout(); }
PageMethods.set_defaultUserContext = function(value) { 
PageMethods._staticInstance.set_defaultUserContext(value); }
PageMethods.get_defaultUserContext = function() { 
/// <value mayBeNull="true">The service default user context.</value>
return PageMethods._staticInstance.get_defaultUserContext(); }
PageMethods.set_defaultSucceededCallback = function(value) { 
 PageMethods._staticInstance.set_defaultSucceededCallback(value); }
PageMethods.get_defaultSucceededCallback = function() { 
/// <value type="Function" mayBeNull="true">The service default succeeded callback.</value>
return PageMethods._staticInstance.get_defaultSucceededCallback(); }
PageMethods.set_defaultFailedCallback = function(value) { 
PageMethods._staticInstance.set_defaultFailedCallback(value); }
PageMethods.get_defaultFailedCallback = function() { 
/// <value type="Function" mayBeNull="true">The service default failed callback.</value>
return PageMethods._staticInstance.get_defaultFailedCallback(); }
PageMethods.set_enableJsonp = function(value) { PageMethods._staticInstance.set_enableJsonp(value); }
PageMethods.get_enableJsonp = function() { 
/// <value type="Boolean">Specifies whether the service supports JSONP for cross domain calling.</value>
return PageMethods._staticInstance.get_enableJsonp(); }
PageMethods.set_jsonpCallbackParameter = function(value) { PageMethods._staticInstance.set_jsonpCallbackParameter(value); }
PageMethods.get_jsonpCallbackParameter = function() { 
/// <value type="String">Specifies the parameter name that contains the callback function name for a JSONP request.</value>
return PageMethods._staticInstance.get_jsonpCallbackParameter(); }
PageMethods.set_path("WFReadCardFr.aspx");
PageMethods.GET_IDCardControl= function(IDCard,NUM_CARTE,onSuccess,onFailed,userContext) {
/// <param name="IDCard" type="String">System.String</param>
/// <param name="NUM_CARTE" type="String">System.String</param>
/// <param name="succeededCallback" type="Function" optional="true" mayBeNull="true"></param>
/// <param name="failedCallback" type="Function" optional="true" mayBeNull="true"></param>
/// <param name="userContext" optional="true" mayBeNull="true"></param>
PageMethods._staticInstance.GET_IDCardControl(IDCard,NUM_CARTE,onSuccess,onFailed,userContext); }
//]]>
</script>

<div class="aspNetHidden">

	<input name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="42A407DF" type="hidden">
	<input name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAZ5LQFA3m3C0325UXt8HGJdZ2KDJy85mm3juSN0gWtm6HR+jKQYkWzvNPM00xl5aqVQsShEBBM0OwlxoP++5magc316i6U+kIGV6o4nK94+JX6udqpisawadnGEaZFtQXYwW4X9dgayr92O4KAU18Nm8SqORWoCRwV6q4HaULQs7A==" type="hidden">
</div>
        <div>
            <header id="header">
                <div class="top-bar hidden-xs">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6 col-xs-4">
                                <div class="top-number">
                                    <p>
                                        <img src="CNIBeE_fichiers/dz1.png">
                                        <span style="font-weight: normal; font-size: 18px; color: #b5030c">République Algérienne Démocratique et Populaire</span>
                                    </p>
                                </div>
                            </div>
                          
                            <div class="col-sm-6 col-xs-8">
                                <div class="social">
                                    <ul class="social-share">
                                        
                                        
                                    </ul>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/.container-->
                </div>
                <!--/.top-bar-->

                <nav class="navbar navbar-inverse" role="banner">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            
                            <a class="navbar-brand" href="https://macnibe.interieur.gov.dz/WFDefaultFr.aspx">
                                <img src="CNIBeE_fichiers/logo_02.png" alt="My CNIBE"></a>

                        </div>

                        <div class="collapse navbar-collapse navbar-right">

                            <ul class="nav navbar-nav">

                                <li class="" id="deault"><a href="https://macnibe.interieur.gov.dz/WFDefaultFr.aspx">Accueil</a></li>
                                <li id="Lecture" class="active"><a href="https://macnibe.interieur.gov.dz/WFReadCardFr.aspx">Lecture électronique de la carte </a></li>
                                <!--<li style="visibility: hidden"><a href="#myModal">Consultation sécurisée</a></li>-->
                                <li id="commentLire"><a href="#CommentLire">Comment lire la carte</a></li>
                                <li><a href="https://macnibe.interieur.gov.dz/Files/Guide-exploitation-Macnibe.dz-fr.pdf">Guide d'exploitation</a></li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Autre services&nbsp;<i class="fa fa-angle-down"></i></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="https://passeport.interieur.gov.dz/fr/DemandeCNIBE_Fr/Demander%20la%20carte%20d%27identit%C3%A9%20en%20ligne" target="_blank">Demander votre CNIBE</a></li>
                                        <li class="divider"></li>
                                        <li><a href="https://passeport.interieur.gov.dz/Fr/SuiviCNIBE_Fr/Suivi%20la%20demande%20de%20la%20carte%20national%20d%27identit%c3%a9%20biom%c3%a9trique%20%c3%a9lectronique" target="_blank">Suivre votre demande  CNIBE</a></li>
                                        <li class="divider"></li>
                                        <li><a href="https://passeport.interieur.gov.dz/Fr/Rejet_Fr/Chargement_Photo" target="_blank">Charger une photo conforme</a></li>
                                        <li class="divider"></li>
                                    </ul>
                                </li>

                                <li class="dropdown ">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Langue <span class="caret"></span></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="https://macnibe.interieur.gov.dz/WFDefaultAr.aspx" class="language" rel="it-IT">Arabe</a></li>
                                        <li><a href="https://macnibe.interieur.gov.dz/WFDefaultFr.aspx" class="language" rel="en-US">Français</a></li>
                                    </ul>
                                </li>


                            </ul>
                        </div>
                    </div>
                    <!--/.container-->
                </nav>
                <!--/nav-->

            </header>
            <!--/header-->
            
    <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$ContentPlaceHolder1$ScriptManager1', 'form1', [], [], [], 90, 'ctl00');
//]]>
</script>

    <div style="width: 70%; margin: auto; text-align: center">
        <object id="dzaeidcard" type="application/x-dzaeidcard" width="0" height="0">
            <param name="onload" value="pluginLoaded">
        </object>
    </div>

    <div id="divPluginSetup" style="visibility: hidden; display: none; padding: 10px; margin-top: 20px; margin: auto; border: 1px solid #ed0b0b; background-color: #fec5c5; color: #aa0909; border-radius: 4px; text-align: center; font-weight: bold; font-size: 17px; width: 70%">L’installation du plugin EidDzPlugin est nécessaire pour l’accès aux données de la puce. <a href="https://macnibe.interieur.gov.dz/Files/DzaEidCard.msi" style="color: blue; text-decoration: underline;">&nbsp;Télécharger et installer le plugin ici &nbsp;</a></div>
    
    <div style="width: 70%; margin: auto; color: #157616">
        <h3>Lecture automatique de la carte d'identité biométrique et électronique </h3>
    </div>
    <span style="visibility: hidden; display: none">
        <input name="ctl00$ContentPlaceHolder1$TxtContent" id="ContentPlaceHolder1_TxtContent" type="text"></span>
    <div class="panel panel-success content-design">
        <div class="panel-heading">Veuillez introduire les informations nécessaires pour la lecture</div>
        <div class="panel-body">
            <div class="form-inline">
                <label id="lblreader" class="cols-sm-2 control-label">Lecteur sélectionné </label>
                &nbsp;<div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-hdd" aria-hidden="true"></i></span>
                    <select id="DropReader" disabled="disabled" data-validate-func="required" class="form-control" data-validate-hint="Veuillez Selectionner le lecteur sans contacte connecté!" aria-readonly="true">
                        <option selected="selected" value="0">Sélection automatique du lecteur
                        </option>
                    <option value="ACS ACR1281 1S Dual Reader ICC 0">ACS ACR1281 1S Dual Reader ICC 0</option><option value="ACS ACR1281 1S Dual Reader PICC 0">ACS ACR1281 1S Dual Reader PICC 0</option><option value="ACS ACR1281 1S Dual Reader SAM 0">ACS ACR1281 1S Dual Reader SAM 0</option></select>
                </div>
            </div>
            <br>
            <div class="form-inline">

                <div class="form-group">
                    <label id="lblNumCarte" class="control-label">Numéro de la carte</label>
                    <input name="ctl00$ContentPlaceHolder1$TxtNumCarte" id="ContentPlaceHolder1_TxtNumCarte" onclick="this.value = ''" data-minlength="9" maxlength="9" class="form height-input" placeholder="Entrez le numéro de la carte" type="text">
                </div>

                <div class="form-group">
                    <label id="lblDateNaiss" class="cols-sm-2 control-label">Date de naissance</label>
                    <input name="ctl00$ContentPlaceHolder1$TxtDateNaiss" id="ContentPlaceHolder1_TxtDateNaiss" class="form" maxlength="10" placeholder="JJ/MM/AAAA" onkeyup="
        var v = this.value;
        if (v.match(/^\d{2}$/) !== null) {
            this.value = v + '/';
        } else if (v.match(/^\d{2}\/\d{2}$/) !== null) {
            this.value = v + '/';
        }" onclick="this.value = ''" type="text">
                </div>

                <div class="form-group">
                    <label id="lblDateExpir" class="cols-sm-2 control-label">Date d'expiration</label>
                    <input name="ctl00$ContentPlaceHolder1$TxtDateExpir" id="ContentPlaceHolder1_TxtDateExpir" class="form" maxlength="10" placeholder="JJ/MM/AAAA" onkeyup="
        var v = this.value;
        if (v.match(/^\d{2}$/) !== null) {
            this.value = v + '/';
        } else if (v.match(/^\d{2}\/\d{2}$/) !== null) {
            this.value = v + '/';
        }" onclick="this.value = ''" type="text">
                </div>

            </div>

            <div id="divLecture" style="padding: 10px; margin-top: 20px; margin: auto; border: 1px solid #049204; background-color: #d7f5d8; color: #157616; border-radius: 4px; text-align: center; font-weight: bold; font-size: 17px">Introduire les informations nécessaires ensuite Placer la carte d'identité biométrique sur le lecteur</div>

            
            <br>

        </div>
    </div>

    <br>

    <div class="panel panel-success content-design">
        <div class="panel-heading">Résultat de la lecture</div>
        <div class="panel-body">
            
            <div class="row">
                <div class="col-xs-12 col-md-5">
                    <label class="cols-sm-2 control-label hidden-md hidden-lg hidden-sm " style="color: green">&nbsp;<span class="label label-success">NIN</span></label>
                    <label class="cols-sm-2 control-label hidden-xs " style="color: green">Numéro d'identification national <span class="label label-success">NIN</span></label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                        <input class="form-control-green" name="NIN" id="TxtNIN" readonly="true" type="text">
                    </div>
                </div>
            </div>
            <br>
            <div class="form-group">
                <div class="slideInRight" data-wow-delay=".5s">
                    <!-- Message -->
                    <img id="PBPhoto" src="" alt="Photo d'identité" class="img-thumbnail  pull-right" style="width: 280px; height: 360px; margin: auto;">
                </div>
            </div>
            
            <div class="form-inline">
                <div class="arabic-2 form-group  col-xs-12 col-sm-6 col-lg-4">
                    <label>Nom latin</label>
                    <input name="name" id="TxtNomLat" class="form" readonly="true" type="text">

                </div>
                <div class="arabic-2 form-group  col-xs-12 col-sm-6 col-lg-4">
                    <label>Nom arabe</label>
                    <input class="form" name="NomAr" id="TxtNomAr" readonly="true" type="text">
                </div>
            </div>



            
            <div class="form-inline">
                <div class="arabic-2 form-group  col-xs-12 col-sm-6 col-lg-4">
                    <label>Prénom latin</label>
                    <input name="PrenomLat" id="TxtPrenomLat" class="form" readonly="true" type="text">
                </div>
                <div class="arabic-2 form-group  col-xs-12 col-sm-6 col-lg-4">
                    <label>Prénom arabe</label>
                    <input class="form" name="PrenomAr" id="TxtPrenomAr" readonly="true" type="text">
                </div>
            </div>


            <div class="form-inline">
                <div class="arabic-2 form-group  col-xs-8 col-sm-6 col-lg-2">
                    <label>Date de naissance</label>
                    <input name="DateNaissRes" id="TxtDateNaissRes" class="form" readonly="true" type="text">
                </div>
                <div class="arabic-2 form-group  col-xs-8 col-sm-6 col-lg-2">
                    <label>Genre</label>
                    <input name="Sexe" id="TxtSexe" class="form" readonly="true" type="text">
                </div>
                <div class="arabic-2 form-group  col-xs-12 col-sm-6 col-lg-2">
                    <label>Lieu de naissance</label>
                    <input name="LieuNaiss" id="TxtLieuNaiss" class="form" readonly="true" type="text">
                </div>
                <div class="arabic-2 form-group  col-xs-12 col-sm-6 col-lg-2">
                    <label>Situation de famille</label>
                    <input name="LieuNaiss" id="TxtSituation" class="form" readonly="true" type="text">
                </div>
            </div>

            <div class="form-inline">
                <div class="arabic-2 form-group  col-xs-12 col-sm-6 col-lg-4">
                    <label>Nom de l'époux latin</label>
                    <input name="NomEpouxLat" id="TxtNomEpouxLat" class="form" readonly="true" type="text">
                </div>
                <div class="arabic-2 form-group  col-xs-12 col-sm-6 col-lg-4">
                    <label>Nom de l'époux Arabe</label>
                    <input name="NomEpouxAr" id="TxtNomEpouxAr" class="form" readonly="true" type="text">
                </div>

            </div>


            <div class="form-inline">
                <div class="arabic-1 form-group  col-xs-12 col-sm-6 col-lg-8">
                    <label>Adresse</label>
                    <input name="Adresse" id="TxtAdresse" readonly="true" class="form" style="text-align: center; font-weight: bold; font-size: 18px;" type="text">
                </div>

            </div>

            
            <br>



            <br>

        </div>

        <!-- Modal -->
        <div id="myModal" class="modal fade" data-keyboard="false" data-backdrop="static">

            <div class="modal-dialog">

                <div class="modal-content">

                    <div class="modal-header">

                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>

                        <h5 class="modal-title">
                            <img src="CNIBeE_fichiers/information.png" width="40" height="40">&nbsp;Information</h5>

                    </div>

                    <div class="modal-body">

                        <p>L’installation du plugin EidDzPlugin est nécessaire pour l’accès aux données de la puce.</p>

                        <p class="text-warning">
                            <small>Pour télécharger et installer le plugin cliquez sur le lien  <a href="https://macnibe.interieur.gov.dz/Files/DzaEidCard.msi" style="color: blue;">&nbsp; <span style="text-decoration: underline; font-weight: bold">DzaEidCard</span> &nbsp;</a>
                            </small>
                        </p>

                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
                    </div>

                </div>

            </div>

        </div>
        <!-- Loader Modal-->
        <div class="modal fade" id="LoaderModal" data-keyboard="false" data-backdrop="static">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        
                        <h4 class="modal-title">Veuillez patienter, la lecteur est en cours...</h4>
                    </div>
                    <div class="modal-body center">
                        <p>
                            <img alt="" src="CNIBeE_fichiers/loader.gif"></p>
                    </div>

                </div>
            </div>
        </div>

        <!-- Navigator compatibility Modal -->
    


    </div>

            <br>
            <br>
            <br>
          
            <br>
            <div class="row  wow fadeInDown" style="width: 70%; margin: auto; visibility: hidden; animation-name: none;">
           
            </div>
            <br>
            
            <br>

       
            <br>
            <br>

        </div>


        
        <div class="scroll-top-wrapper ">
            <span class="scroll-top-inner">
                <i class="fa fa-2x fa-arrow-circle-up"></i>
            </span>
        </div>
    </form>


</body></html>