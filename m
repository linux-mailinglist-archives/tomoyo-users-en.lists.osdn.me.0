Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (gw0.osdn.jp [202.221.179.250])
	by mail.lfdr.de (Postfix) with ESMTP id 24F4F35BF0
	for <lists+tomoyo-users-en@lfdr.de>; Wed,  5 Jun 2019 13:47:16 +0200 (CEST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 sf-lists.priv.osdn.jp
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=7.0 tests=HTML_MESSAGE
 autolearn=disabled version=3.4.2
Received: from ige-mx-01.igefa.de (ige-mx-01.igefa.de [87.191.32.109])
 by sf-lists.priv.osdn.jp (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Wed,  5 Jun 2019 20:47:11 +0900 (JST)
X-Virus-Scanned: clamav-milter 0.101.2 at ige-mx-01
Received: from IGE-EXC-02.igefa.zentrale (10.64.1.100) by
 IGE-EXC-02.igefa.zentrale (10.64.1.100) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 5 Jun 2019 13:47:07 +0200
Received: from IGE-EXC-02.igefa.zentrale ([::1]) by IGE-EXC-02.igefa.zentrale
 ([fe80::4996:7f83:c932:544e%16]) with mapi id 15.00.1395.000;
 Wed, 5 Jun 2019 13:47:07 +0200
From: "Pannbacker, Ole" <Ole.Pannbacker@igefa.de>
To: "tomoyo-users-en@lists.osdn.me" <tomoyo-users-en@lists.osdn.me>
Thread-Topic: Set profile in a child process
Thread-Index: AQHVG5A2uXKvhrSU3EuxoF0Vu6XqvaaM8XFA
Date: Wed, 5 Jun 2019 11:47:06 +0000
Message-ID: <1559735226372.94278@igefa.de>
References: <188bc3bc420c4e11a9ea148077c370a9@IGE-EXC-02.igefa.zentrale>
In-Reply-To: <188bc3bc420c4e11a9ea148077c370a9@IGE-EXC-02.igefa.zentrale>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.64.1.56]
x-ci-mailpolicy-key: 2acbd59cc89831a8bb716212a729d546;
 1b43bd61-1e49-445a-80ab-62232dd4ddb0; IGE-EXC-02
MIME-Version: 1.0
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.100.3/25471/Wed Jun 5 17:12:21 2019
Subject: [tomoyo-users-en   707] Set profile in a child process
X-BeenThere: tomoyo-users-en@lists.osdn.me
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <tomoyo-users-en.lists.osdn.me>
List-Unsubscribe: <https://lists.osdn.me/mailman/options/tomoyo-users-en>,
 <mailto:tomoyo-users-en-request@lists.osdn.me?subject=unsubscribe>
List-Archive: <https://lists.osdn.me/mailman/archives/tomoyo-users-en>
List-Post: <mailto:tomoyo-users-en@lists.osdn.me>
List-Help: <mailto:tomoyo-users-en-request@lists.osdn.me?subject=help>
List-Subscribe: <https://lists.osdn.me/mailman/listinfo/tomoyo-users-en>,
 <mailto:tomoyo-users-en-request@lists.osdn.me?subject=subscribe>
Reply-To: tomoyo-users-en@lists.osdn.me
Content-Type: multipart/mixed; boundary="===============7378645488317425606=="
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

--===============7378645488317425606==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_155973522637294278igefade_"

--_000_155973522637294278igefade_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



I recently started using TOMOYO and tried to set sshd to learning mode, how=
ever the child processes stayed on mode 0.


5: 1 +- sshd (4093) <kernel> /usr/sbin/sshd
6: 0 +- bash (4101) <kernel> /usr/sbin/sshd /bin/bash
7: 0 +- tomoyo-editpoli (4125) <kernel> /usr/sbin/sshd /bin/bash /usr/sbin/=
tomoyo-editpolicy
8: 1 +- sshd (4171) <kernel> /usr/sbin/sshd
9: 0 +- bash (4176) <kernel> /usr/sbin/sshd /bin/bash


Kind regards

Ole Pannbacker

--_000_155973522637294278igefade_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}--></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<div dir=3D"ltr" style=3D"font-size:12pt; color:#000000; background-color:#=
FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"></font>&nbsp;
</div>
<div>
<p>I recently started using TOMOYO and tried to set sshd to learning mode, =
however the child processes stayed on mode 0.<br>
<br>
<br>
5: 1 &#43;- sshd (4093) &lt;kernel&gt; /usr/sbin/sshd<br>
6: 0 &#43;- bash (4101) &lt;kernel&gt; /usr/sbin/sshd /bin/bash<br>
7: 0 &#43;- tomoyo-editpoli (4125) &lt;kernel&gt; /usr/sbin/sshd /bin/bash =
/usr/sbin/tomoyo-editpolicy<br>
8: 1 &#43;- sshd (4171) &lt;kernel&gt; /usr/sbin/sshd<br>
9: 0 &#43;- bash (4176) &lt;kernel&gt; /usr/sbin/sshd /bin/bash<br>
<br>
<br>
Kind regards<br>
<br>
Ole Pannbacker<br>
</p>
</div>
</div>
</body>
</html>

--_000_155973522637294278igefade_--


--===============7378645488317425606==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdG9tb3lvLXVz
ZXJzLWVuIG1haWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMub3Nkbi5tZQpodHRwczov
L2xpc3RzLm9zZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNlcnMtZW4K

--===============7378645488317425606==--

