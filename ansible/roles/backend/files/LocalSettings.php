<?php

$wgSitename = "Corporate Wiki";
$wgMetaNamespace = "Corporate_Wiki";

$wgScriptPath = "/";
$wgScriptExtension = ".php";

$wgServer = "http://10.128.0.30";

$wgDBtype = "postgres";
$wgDBserver = "10.128.0.20";
$wgDBname = "my_wiki";
$wgDBuser = "wikiuser";
$wgDBpassword = "12345678";
$wgDBprefix = "";

$wgLanguageCode = "en";

$wgEnableEmail = true;
$wgEnableUserEmail = true;

$wgEmergencyContact = "webmaster@localhost";
$wgPasswordSender = "webmaster@localhost";

$wgEnotifUserTalk = true;
$wgEnotifWatchlist = true;
$wgEmailAuthentication = true;

$wgUseInstantCommons = true;
$wgShellLocale = "en_US.utf8";

$wgUseImageMagick = true;
$wgImageMagickConvertCommand = "/usr/bin/convert";

$wgDiff3 = "/usr/bin/diff3";

?>