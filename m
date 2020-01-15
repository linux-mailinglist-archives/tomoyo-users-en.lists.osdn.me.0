Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (gw0.osdn.jp [202.221.179.250])
	by mail.lfdr.de (Postfix) with ESMTP id 9476413C86A
	for <lists+tomoyo-users-en@lfdr.de>; Wed, 15 Jan 2020 16:53:49 +0100 (CET)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 sf-lists.priv.osdn.jp
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=7.0 tests=FREEMAIL_FROM,HTML_MESSAGE,
 T_DKIM_INVALID autolearn=disabled version=3.4.2
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
 [209.85.208.52]) by sf-lists.priv.osdn.jp (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Thu, 16 Jan 2020 00:53:47 +0900 (JST)
Received: by mail-ed1-f52.google.com with SMTP id b8so15947242edx.7
 for <tomoyo-users-en@lists.osdn.me>; Wed, 15 Jan 2020 07:53:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Oh28/SX7ydrSjIYPB2wziRXCyRcegS6Dik9K6yQAQ5M=;
 b=dUnsSMjUyfrrib0IyAa0Y6mykHP4Ut7ImmukZnQ1ehOLTqKx8zvBCvZxe3loff7Uvc
 KFZkuky8Uf1O8DgYxvx7ReHmsZ2nfTnWBDxqnv8z8sDVnmDmgdSi1zotpCmM8RiYA2rw
 aYIu1gzHAuUFxAjhW1qlKUK05DCu+UUyQ45/3JUtrrPvZaLbM1XUwKuLLTqp+DOJgM5O
 vn5z73PGYP/3vp9DYB7NCs4k7MYa7JjSV3KaWPIHX9r58kr/aMb3HKHIoFmrUsoDtPbH
 L1xlvuMXE58KlPwx0E2TWLnFABC33rbxAF7P08ba+GYGwg0UeKu+HK6FN9qGFuQ21sOG
 bEzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Oh28/SX7ydrSjIYPB2wziRXCyRcegS6Dik9K6yQAQ5M=;
 b=kZL/wtTAExNmGoTtAqgbskCVM07ez6+uzB9YIyjOeLneAlLxvoXoAZS5VALFW2jJ0b
 PU3KD42cW6ZwQVkP8ger9w9Lm0iW3RCMGabutKU9wXCC9iWFrMNIIVKYgrERfTqln6Aa
 el9nPGKi44MFW9cJIu32HhxM1mi9B/8NlUWQeGA3g0/UsebcpizK/on86L5Sp40+P3cH
 +rYwOuhgXKIhp+/OEVS0XelFFY1q7YFmzAa3LDU+alpHADdtQlHaRlq5AkfloikbujbI
 P1bAqm/1OZzsuKdfDvixhXS04eJVeumW3vFpTcaRMXtIsu6YR8UoJQOhIanEZ81NqYTZ
 EiGQ==
X-Gm-Message-State: APjAAAWWXxcUcyQpkh9VtGl9rW97qUm963WLaMaR4pYQmq6PndS4o9X8
 TRKeS0dhE60Q/NT35E0UNzXL8KnOg+iCR5/Z8s8kCA==
X-Google-Smtp-Source: APXvYqxdojkar1uNeyIzquVY85uPIkINfmNGjyE09fH6s5dT/Vo3jAVMsMqjA9Gpx76ENqVCzu+/FmZDQdCoO9+DR8Q=
X-Received: by 2002:a17:906:27d3:: with SMTP id
 k19mr28268293ejc.290.1579103626783; 
 Wed, 15 Jan 2020 07:53:46 -0800 (PST)
MIME-Version: 1.0
References: <CALOzowteTGe1A62WZofCCbw1tQi+KdW19XHiHmxP7pJWvOfPHA@mail.gmail.com>
 <70f2bab6-d879-df05-6789-5906b3aaae26@i-love.sakura.ne.jp>
In-Reply-To: <70f2bab6-d879-df05-6789-5906b3aaae26@i-love.sakura.ne.jp>
From: Gabriel Borges Figuera <gbf.gmv@gmail.com>
Date: Wed, 15 Jan 2020 16:53:36 +0100
Message-ID: <CALOzowsvoM=v5i79g5v_5uSckqLpshjUC0aN5k1SOLFGXp_qwg@mail.gmail.com>
To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.101.4/25696/Wed Jan 15 22:34:23 2020
Subject: [tomoyo-users-en   719] Re: Akari load fails
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
Cc: tomoyo-users-en@lists.osdn.me
Content-Type: multipart/mixed; boundary="===============3928532234953893726=="
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

--===============3928532234953893726==
Content-Type: multipart/alternative; boundary="000000000000bcf1e4059c2fb655"

--000000000000bcf1e4059c2fb655
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It worked!! Thank you very much Tetsuo!

El mi=C3=A9., 15 ene. 2020 a las 12:26, Tetsuo Handa (<
penguin-kernel@i-love.sakura.ne.jp>) escribi=C3=B3:

> Hello.
>
> On 2020/01/15 19:16, Gabriel Borges Figuera wrote:
> > The problem that I have is that when I modify the file lsm-4.12.c (just
> > adding a printk()) and recompile it, the module load fails. It seems to
> > confuse akari with tomoyo and shows that is necessary the user-space
> tools
> > for tomoyo 1.8.6.
>
> It seems to me that loading of AKARI module was successful, but since
> AKARI was built with CONFIG_CCSECURITY_OMIT_USERSPACE_LOADER defined,
> policy loader was not executed when AKARI module was loaded.
> Please try without defining CONFIG_CCSECURITY_OMIT_USERSPACE_LOADER.


>

--000000000000bcf1e4059c2fb655
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div>It worked!! Thank you very much Tet=
suo!<div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">El mi=C3=A9., 15 ene. 2020 a las 12:26, Tetsuo Handa (&lt;<a href=3D"mai=
lto:penguin-kernel@i-love.sakura.ne.jp" target=3D"_blank">penguin-kernel@i-=
love.sakura.ne.jp</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">Hello.<br>
<br>On 2020/01/15 19:16, Gabriel Borges Figuera wrote:<br>&gt; The problem =
that I have is that when I modify the file lsm-4.12.c (just<br>&gt; adding =
a printk()) and recompile it, the module load fails. It seems to<br>&gt; co=
nfuse akari with tomoyo and shows that is necessary the user-space tools<br=
>&gt; for tomoyo 1.8.6.<br><br>It seems to me that loading of AKARI module =
was successful, but since<br>
AKARI was built with CONFIG_CCSECURITY_OMIT_USERSPACE_LOADER defined,<br>
policy loader was not executed when AKARI module was loaded.<br>
Please try without defining CONFIG_CCSECURITY_OMIT_USERSPACE_LOADER.=C2=A0<=
/blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br></blockqu=
ote><div>=C2=A0</div></div></div></div>

--000000000000bcf1e4059c2fb655--


--===============3928532234953893726==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdG9tb3lvLXVz
ZXJzLWVuIG1haWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMub3Nkbi5tZQpodHRwczov
L2xpc3RzLm9zZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNlcnMtZW4K

--===============3928532234953893726==--

