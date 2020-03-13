Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (gw0.osdn.jp [202.221.179.250])
	by mail.lfdr.de (Postfix) with ESMTP id 78E79184CF4
	for <lists+tomoyo-users-en@lfdr.de>; Fri, 13 Mar 2020 17:50:15 +0100 (CET)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 sf-lists.priv.osdn.jp
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=7.0 tests=FREEMAIL_FROM,HTML_MESSAGE,
 T_DKIM_INVALID autolearn=disabled version=3.4.2
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com
 [209.85.217.50]) by sf-lists.priv.osdn.jp (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Sat, 14 Mar 2020 01:50:11 +0900 (JST)
Received: by mail-vs1-f50.google.com with SMTP id k26so6601051vso.5
 for <tomoyo-users-en@lists.osdn.me>; Fri, 13 Mar 2020 09:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=bBkxLP+znJFrLsc/92CJXicqVgGf3YLZMfYL7WKnH6M=;
 b=EodPJJY79ygCVITwnT0VU/mUqmqJKuYm24wMhdPW0wcwhrYMqlG6Le2pdDpEgTUc0w
 x1WvgnAsL3XO6Io8rDn8WibflVQ9V2DtJVCZbn4FHjCOgVq2t8VEHBJXdRs8a8kR7gMM
 /4kTbXk8OhmPmd5fUCjngSuUcVcrabxQ1glcYwu6oPW940LHEsrstlFDWMF47dNmEkcY
 O18eAuLa12AmneUPD0ddU1C0wzHF/98+p9gNfeNScgFFKWklWGXySzHvRL1yMX2dQ29S
 BioAjkeGY2UkwegvGRuxUaaHJAgYjVGd0aAAILnv9xzR4Ajgikx0+WG9XVY9SQobs7+s
 roTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=bBkxLP+znJFrLsc/92CJXicqVgGf3YLZMfYL7WKnH6M=;
 b=L6HdpaN9ISFChYKDF+dzX+Z5avgte0Z2GCLSU0kiU88/tbaOnD/rI3f1n43s6W61GC
 f6iVSYMqmcqFqiAPTpyHx3kRWa199+yIrNo9lsheFxT4n40Y2s63PBP3EIJtF7u+rsun
 hGnRw/IgMgTgP0CC1TZZ7EQFFTwXldBnJdThu76cHFF7cqdgu5xHQW8Di7uCgG9TeEBg
 EiwkjX1Dc5ELzZA1CTZ7yoytCVJrrQw7BvGtwYEW3PyKIyHdH06bksvyacA+DykP9D/I
 es0zoV/e3JmZEl5VIKi4endy0WoOlvGHmEVyMx0zhniX00lBO4FsyhnXgUP4DaV1VZ1F
 hpig==
X-Gm-Message-State: ANhLgQ2Eem17uPAprpgdzh79/TP7HE+QP+x3EzOFoEG//Cvb76oM6PDM
 rSWQ4rjrB8IDNKOLd/ZlZUK57abMn0aet56yK05AMod5
X-Google-Smtp-Source: ADFU+vvCmEk78tHVNx0MMxLNyPciE8ev14Z1Br2YF1ghLvGYlCS6pow1pf1hohNLrxhn1/aoTYMnmCQq2//LHK/u5FM=
X-Received: by 2002:a67:2ed2:: with SMTP id u201mr9108748vsu.209.1584118209719; 
 Fri, 13 Mar 2020 09:50:09 -0700 (PDT)
MIME-Version: 1.0
From: Manuel Bessler <manuel.bessler@gmail.com>
Date: Fri, 13 Mar 2020 12:49:58 -0400
Message-ID: <CAKSdS8LsdbQT7CfRSkDRYQ_5wKOH4Aj8euZ9+e5ZBqSZyO+SZA@mail.gmail.com>
To: tomoyo-users-en@lists.osdn.me
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.2/25750/Fri Mar 13 22:03:09 2020
Subject: [tomoyo-users-en   725] domain_policy output from learning mode
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
Content-Type: multipart/mixed; boundary="===============6429961050993024871=="
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

--===============6429961050993024871==
Content-Type: multipart/alternative; boundary="0000000000002c3df605a0bf43d7"

--0000000000002c3df605a0bf43d7
Content-Type: text/plain; charset="UTF-8"

Hi,

thank you for your work on this awesome project, I really like Tomoyo, esp
its learning mode.
Also thank you specifically for the documentation section "TOMOYO Linux on
Yocto"

I'd like to understand a few things, and I could not find a reference in
the documentation...

1. The learning-mode generated domain policy has a couple of combinations
of rules added like
   file getattr <file>
   file read/getattr <file>
   file getattr/truncate <file>
   file read/write/getattr <file>
   file read/write <file>
   file append/getattr <file>

   Can I just list these separately, or combine then in different ways to
make ? For example:
   file getattr <any-file>
   file create/append/write/truncate/rename <write-file>
   file read <readonly-file>

   Or even just:
   file
getattr/read/write/append/trucate/execute/unlink/symlink/rename/create
<file>

2. There was a patch to ccs-patch in 2015 adding support for multiple
use_group <n>
    per domain.
    Did this ever make it into Tomoyo? From a quick glance, it doesn't look
like it, but
    I wanted to make sure before I get deep into policy writing.

3. Can the various groupings (path_group, number_group, address_group...)
be used recursively?
    For example
    path_group LIBS /lib/lib\*.so\*
    path_group MYAPP /etc/myapp/\*
    path_group MYAPP @LIBS


I was also wondering if there was a place (ie. github repo) where example
policies for common programs are kept?
For example, to run Nginx webserver, there are few things that are common
across all installs that would make it possible to reuse, and thus one does
not have to start from scratch...

Thanks,
Manuel

--0000000000002c3df605a0bf43d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>thank you for your work =
on this awesome project, I really like Tomoyo, esp its learning mode.</div>=
<div>Also thank you specifically for the documentation section &quot;TOMOYO=
 Linux on Yocto&quot;</div><div><br></div><div>I&#39;d like to understand a=
 few things, and I could not find a reference in the documentation...</div>=
<div><br></div><div>1. The learning-mode generated domain policy has a coup=
le of combinations of rules added like</div><div>=C2=A0=C2=A0 file getattr =
&lt;file&gt;</div><div>=C2=A0=C2=A0 file read/getattr &lt;file&gt;<br></div=
><div>=C2=A0=C2=A0 file getattr/truncate &lt;file&gt;</div><div>=C2=A0=C2=
=A0 file read/write/getattr &lt;file&gt;</div><div>=C2=A0=C2=A0 file read/w=
rite &lt;file&gt;</div><div>=C2=A0=C2=A0 file append/getattr &lt;file&gt;</=
div><div><br></div><div>=C2=A0=C2=A0 Can I just list these separately, or c=
ombine then in different ways to make ? For example:</div><div>=C2=A0=C2=A0=
 file getattr &lt;any-file&gt;</div><div>=C2=A0=C2=A0 file create/append/wr=
ite/truncate/rename &lt;write-file&gt;<br></div><div>=C2=A0=C2=A0 file read=
 &lt;readonly-file&gt;</div><div><br></div><div>=C2=A0=C2=A0 Or even just:<=
/div><div>=C2=A0=C2=A0 file getattr/read/write/append/trucate/execute/unlin=
k/symlink/rename/create &lt;file&gt;<br></div><div>=C2=A0=C2=A0 <br></div><=
div>2. There was a patch to ccs-patch in 2015 adding support for multiple u=
se_group &lt;n&gt; <br></div><div>=C2=A0=C2=A0=C2=A0 per domain. <br></div>=
<div>=C2=A0=C2=A0=C2=A0 Did this ever make it into Tomoyo? From a quick gla=
nce, it doesn&#39;t look like it, but</div><div>=C2=A0=C2=A0=C2=A0 I wanted=
 to make sure before I get deep into policy writing.</div><div><br></div><d=
iv>3. Can the various groupings (path_group, number_group, address_group...=
) be used recursively?</div><div>=C2=A0=C2=A0=C2=A0 For example</div><div>=
=C2=A0=C2=A0=C2=A0 path_group LIBS /lib/lib\*.so\*</div><div>=C2=A0=C2=A0=
=C2=A0 path_group MYAPP /etc/myapp/\*</div><div>=C2=A0=C2=A0=C2=A0 path_gro=
up MYAPP @LIBS</div><div><br></div><div><br></div><div>I was also wondering=
 if there was a place (ie. github repo) where example policies for common p=
rograms are kept? <br></div><div>For example, to run Nginx webserver, there=
 are few things that are common across all installs that would make it poss=
ible to reuse, and thus one does not have to start from scratch...</div><di=
v><br></div><div>Thanks,</div><div>Manuel<br></div></div>

--0000000000002c3df605a0bf43d7--


--===============6429961050993024871==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdG9tb3lvLXVz
ZXJzLWVuIG1haWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMub3Nkbi5tZQpodHRwczov
L2xpc3RzLm9zZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNlcnMtZW4K

--===============6429961050993024871==--

