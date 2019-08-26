Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (gw0.osdn.jp [202.221.179.250])
	by mail.lfdr.de (Postfix) with ESMTP id C0F119CBE2
	for <lists+tomoyo-users-en@lfdr.de>; Mon, 26 Aug 2019 10:49:59 +0200 (CEST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 sf-lists.priv.osdn.jp
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=7.0 tests=FREEMAIL_FROM,HTML_MESSAGE,
 T_DKIM_INVALID autolearn=disabled version=3.4.2
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com
 [209.85.217.43]) by sf-lists.priv.osdn.jp (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Mon, 26 Aug 2019 17:49:50 +0900 (JST)
Received: by mail-vs1-f43.google.com with SMTP id x20so10193145vsx.13
 for <tomoyo-users-en@lists.osdn.me>; Mon, 26 Aug 2019 01:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=XuQgph5PhCEW1KzwX4NWDioRWsJtENqihvHvCzbuimc=;
 b=lOnkR0abd6Cy54yGBJYZRNq+6a0P/OFGqAAzVPuxn7N1Bpvh9e97OE7yK2svtqzNU0
 kSeC3KuAkMGiRtaUxwdBMonKMqcrfkRNKYCJ7ePMa0LAeaTu1E60q535TQWzA8ilfw/P
 vGe3cq8gMhs8oN+nS1wSU59/X4McGNMXm5+YwV235osPaZ4902MXFa+wvXspL0BoXbjG
 Im6H4TGK3bzOT5vw8nhjKAviUFLCyXHsIGE0CAzZSa4jtlVpl4ECQ0tByvItQVMQWtwH
 2zKl1ql2HywVkcMxoHZqcbHOgJIeZk6rQbNcTQB0i0+QUX+WclWfC6pHi7dG5qToubLU
 1jvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=XuQgph5PhCEW1KzwX4NWDioRWsJtENqihvHvCzbuimc=;
 b=IGQ+JyOAatwOGuaOL2VmH8iBwUQBlD7LayC03Mo2k04Posj7YYUSNEYKddDXJ3SvcB
 U+eqKjefa1v1ecniSDghqFO1PwvS3LV/YxBv+ERJZXVs/lJiQYLeJCsI/RTPSgwRKDM2
 ZwEfgDwrZzjbkXKwgBhaWOzF7dT7M47/p6B/kx6QLu90637J66f8gTlgiYVFb1loml2n
 vh1oWqhIGiPlcZV+g5Ny0XA0EHOfHQ8xn9Yq3cdsJqNdS3BKlK9GJcJ4sziUHZgYTqI3
 Nj0SrcWHwUjH2Q/oZIHptXJ2XJPzLlS9QN/gYMYwSbmz6YI6+kMY1G93KBWz5JCJu2CM
 vJaA==
X-Gm-Message-State: APjAAAWqbj12FelfAHOruR1FqRsnNRaPr/jzvyFcUGvyUElWOcUNGbfd
 cS3hYcnzARre9v9sGZhY4ZnB7K6lyR9cDidqxfTO6PDe3DI=
X-Google-Smtp-Source: APXvYqwUoXSxFp4fdb3HLt5+ul7hNQJAewLL1N4oFCMjaIRsEAOypG2V2xvxx5HJudaJ4cSL9KGDmoUE+uncgF3P2x0=
X-Received: by 2002:a67:d38c:: with SMTP id b12mr10088461vsj.154.1566809389405; 
 Mon, 26 Aug 2019 01:49:49 -0700 (PDT)
MIME-Version: 1.0
From: Luigi Tarantino <l.tarantino098@gmail.com>
Date: Mon, 26 Aug 2019 10:49:38 +0200
Message-ID: <CAH8kxZjt+RGONmTS9_nWwHbL4jhfV_9JWpAntZ2AX4JkfuhXvg@mail.gmail.com>
To: tomoyo-users-en@lists.osdn.me
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.100.3/25552/Sun Aug 25 17:24:59 2019
Subject: [tomoyo-users-en   713] tomoyo with docker
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
Content-Type: multipart/mixed; boundary="===============8847685179965414559=="
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

--===============8847685179965414559==
Content-Type: multipart/alternative; boundary="000000000000161c010591013daa"

--000000000000161c010591013daa
Content-Type: text/plain; charset="UTF-8"

Hello,
  Can tomoyo play nicely with container technologies like docker?

In other words is it possible to deploy a tomoyo policy that only applies
to a specific container?
This would mean that a process in the container may for example issue an
open("/etc/x.conf", ...), in its own mount namespace, and I want to allow
that open only in that container, but not for instance in the host (where
"/etc/x.conf" is a different file, if it exists), or in other containers
running on the same host.

Thanks,
  Vincenzo

--000000000000161c010591013daa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div>=C2=A0 Can tomoyo play nicely with c=
ontainer technologies like docker?</div><div><br></div><div>In other words =
is it possible to deploy a tomoyo policy that only applies to a specific co=
ntainer?<br></div><div>This would mean that a process in the container may =
for example issue an open(&quot;/etc/x.conf&quot;, ...), in its own mount n=
amespace, and I want to allow that open only in that container, but not for=
 instance in the host (where &quot;/etc/x.conf&quot; is a different file, i=
f it exists), or in other containers running on the same host.</div><div><b=
r></div><div>Thanks,</div><div>=C2=A0 Vincenzo<br></div><div><br></div><div=
><br></div></div>

--000000000000161c010591013daa--


--===============8847685179965414559==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdG9tb3lvLXVz
ZXJzLWVuIG1haWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMub3Nkbi5tZQpodHRwczov
L2xpc3RzLm9zZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNlcnMtZW4K

--===============8847685179965414559==--

