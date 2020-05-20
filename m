Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (gw0.osdn.jp [202.221.179.250])
	by mail.lfdr.de (Postfix) with ESMTP id 6EC8C1DABE9
	for <lists+tomoyo-users-en@lfdr.de>; Wed, 20 May 2020 09:24:02 +0200 (CEST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 sf-lists.priv.osdn.jp
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=7.0 tests=FREEMAIL_FROM,HTML_MESSAGE,
 T_DKIM_INVALID autolearn=disabled version=3.4.2
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
 [209.85.208.51]) by sf-lists.priv.osdn.jp (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Wed, 20 May 2020 16:23:59 +0900 (JST)
Received: by mail-ed1-f51.google.com with SMTP id d24so1771860eds.11
 for <tomoyo-users-en@lists.osdn.me>; Wed, 20 May 2020 00:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=w74C4q0S2ViM8IWW5RPp8Ev+qvjnJ7hhJbFiy1pim5Y=;
 b=eM9wxDfRp1CuTCtnuN6MbMDtmNX//9vrsSHXvs3Hg7MCxCRHDt4eG2byXNfOYj9tcn
 pmQhJqJfCwFCfWWlVvb+bkGMKcPVRBMCXzzQJbuhwMjeHnjAewbdLdjWSy3Gyz9nw1U8
 693FXyjx+/PpHJrNa8aRAXydDTk/+7ectmAaEp9FBRtv0MNtVE6Os+AlNAyjyHhvtb1E
 5jydNJ1oWaRB6hDB9yYXeQrbhwym4i49vY6XwjklmgnnEyYOUp8uD2fLj7qFSBZKr5gK
 gtvJceF7UenR4WQWp1Oi1QI6BWeIeR7y1zcpkj9dxjQJYyiPZtFDb7dMBFe10lafQpVO
 9bUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=w74C4q0S2ViM8IWW5RPp8Ev+qvjnJ7hhJbFiy1pim5Y=;
 b=B8Z1UrWZLzLAzu3bymYf2sO/GNgIl6GdbwhEZAPnlCHpNW0aQVzehOk7GaTsd4lurZ
 yRzb7E5zgy6VQQIX2fcBFJ3uLa3XJXcDz5fR5M4Q1uMYegRY0XhQ2RB4vkF9cSY7A7WA
 KSmm1jrNIL5BVDgcgMFepfCa/jV+PTFeVfWrokvKZFWogSLNwF0pUNVz5egEn+81FsVO
 LNEKL4sl4WSnFLxxsj9tNdW/I5bpoNnCLJp19yzUcvBp+hmsPsbFRLGIX0pXCWB3HssU
 JnuaH67mttM5ctbKJbtr0UHyHqbvejN98Vhko1aZIy4jVQZVWZwkXNEqF2EGZ3hqderZ
 5giw==
X-Gm-Message-State: AOAM531ASdQTsA+h6UuvmEnR+G5bE8olRgL77vVZarRA8/0/WLTjk4iy
 veNfPSAhsMWzvdXW8A4ZOuxaiNhV63SSeCvn0rzGF5/d
X-Google-Smtp-Source: ABdhPJwkbkRU5DywDMmpa1XuMEQwRYb+84ii0nAe5ENHf9WYyLGjCzXnflGM6qkeHzKn3Bd1aFNAu289jFNnsEMexjI=
X-Received: by 2002:a05:6402:3185:: with SMTP id
 di5mr2165280edb.330.1589959438030; 
 Wed, 20 May 2020 00:23:58 -0700 (PDT)
MIME-Version: 1.0
From: Gabriel Borges Figuera <gbf.gmv@gmail.com>
Date: Wed, 20 May 2020 09:23:47 +0200
Message-ID: <CALOzowtXPQikYpM7c0fjA2QAa=UC-Ewubnw0TSEseCLGn+2q_A@mail.gmail.com>
To: tomoyo-users-en@lists.osdn.me
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.2/25817/Tue May 19 21:16:16 2020
Subject: [tomoyo-users-en   731] Akari IPC signals control for bash shell
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
Content-Type: multipart/mixed; boundary="===============3813218396568615227=="
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

--===============3813218396568615227==
Content-Type: multipart/alternative; boundary="00000000000082db7c05a60f4753"

--00000000000082db7c05a60f4753
Content-Type: text/plain; charset="UTF-8"

Hello Tetsuo!

I Hope everything is fine at this hard moment,

Recently, I have been trying to develop an Akari policy but I have
encountered a problem when I try to restrict the "kill" comand from the
bash shell. If I use /bin/kill or /usr/bin/kill from command line, I can
control what happens because these programs have a self domain in
domainpolicy, but when I use the shell built-in command "kill"  It does not
have a self domain, so if the bash shell is permitted in a certain domain
it can kill every process without that explicit permission. How can I avoid
or prevent that?

I have been watching the AKARI documentation pages and I miss the "ipc
signal" directive, but in Tomoyo 1.8 It is present. And in the comparison
table between AKARI/Tomoyo seems that Akari can control IPC signals.

Is there a way to control the ipc signals sended from shell bash?

Best Regards.

Gabriel Borges.

--00000000000082db7c05a60f4753
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Tetsuo!<div><br><div>I Hope everything is fine at th=
is hard moment,</div><div><br></div><div><div>Recently, I have been trying =
to develop an Akari policy but=C2=A0I have encountered a problem when I try=
 to restrict the &quot;kill&quot; comand from the bash shell. If I use /bin=
/kill or /usr/bin/kill from command line, I can control what happens becaus=
e these programs have a self domain in domainpolicy, but when I use the she=
ll built-in command &quot;kill&quot; =C2=A0It does not have a self domain, =
so if the bash shell is permitted in a certain domain it can kill every pro=
cess without that explicit permission. How can I avoid or prevent that?<br>=
<br>I have been watching the AKARI documentation pages and I miss the &quot=
;ipc signal&quot; directive, but in Tomoyo 1.8 It is present. And in the co=
mparison table between AKARI/Tomoyo seems that Akari can control IPC signal=
s.<br></div><div><br></div><div>Is there a way to control the ipc signals s=
ended from shell bash?</div><div><br></div><div>Best Regards.</div><div><br=
></div><div>Gabriel Borges.</div><div><br></div></div></div></div>

--00000000000082db7c05a60f4753--


--===============3813218396568615227==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdG9tb3lvLXVz
ZXJzLWVuIG1haWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMub3Nkbi5tZQpodHRwczov
L2xpc3RzLm9zZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNlcnMtZW4K

--===============3813218396568615227==--

