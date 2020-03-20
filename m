Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (gw0.osdn.jp [202.221.179.250])
	by mail.lfdr.de (Postfix) with ESMTP id 0A82318D8DD
	for <lists+tomoyo-users-en@lfdr.de>; Fri, 20 Mar 2020 21:13:44 +0100 (CET)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 sf-lists.priv.osdn.jp
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=7.0 tests=FREEMAIL_FROM,HTML_MESSAGE,
 T_DKIM_INVALID autolearn=disabled version=3.4.2
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
 [209.85.167.182]) by sf-lists.priv.osdn.jp (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Sat, 21 Mar 2020 05:13:37 +0900 (JST)
Received: by mail-oi1-f182.google.com with SMTP id r7so7942507oij.0
 for <tomoyo-users-en@lists.osdn.me>; Fri, 20 Mar 2020 13:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=m3hHSFmIeQBL4liuv46gUBs3ECLhbMj2EqguzyUKblU=;
 b=LojcGZzLzRu35gmI3r59/rGECUwVrQbARQD6y+6JxawVaihgi3Bctb76RhKCWTqVNy
 Kr6OJ8Cjz1aUygqVxIVFE3eWaW1+tyhrnZDbJi451Wwvy0rUTh0Mh5BddN3SoULaGOeB
 aouDWBoRPfjlWkQcIaj0ij7qc8BwRVl3WJD/Retmedh2gPoN13W+69zRdMgn5ihWWmvr
 ttPeHYt4nr2LIxSkwoVnyAmC9C1PxvW2jWQv65dTzRjMdpcLwHJYeI3URbvhMOHk0z68
 8/Zh+qP76KVCn2Y2mGJru3b/Z87HuDW10L5rdqVMAksahzTPCiOm6YGJvviqmhnF7dIc
 tOqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=m3hHSFmIeQBL4liuv46gUBs3ECLhbMj2EqguzyUKblU=;
 b=PzGLwZ89VBF+HFhNFTH7N1opO6//QyHzF3qUYpdtD3i7wROONf6BzidvoA0mXHcRUq
 k+rG/pkLwjEf6wNZrw7vsfOoqhIFv2cwCeDHFUPgQPMZiKI487NBsrh9aP5CyQ1uy9Oo
 tPPvl4F9Obsjm8HD4v4tTEK98vawGPhLgNqvxUyIc8+EUlBo1E2GVX/lLlvWpAr2+95d
 ssBmcw+bjM8hQGSYYpD5Lm7S8sNgnI5yRLQs6IEE8e5cx1gIWfYIzaxRV0+yr2IsOFSA
 j2RUk38xz9kYXm5bG0ydOuhk4sGMK9D5MPGL5YlesyiFsCWTG2y2dosPGS47kcv4xq9J
 zQlw==
X-Gm-Message-State: ANhLgQ0x1T11bSHYJ6a2CxHMMWDfRh4Un6vzl6v1MdHoesMI/Zt7E8o3
 ekhpEuCCTyIHkTmGULT7g6XLGeeUrrX6TyIacHdr5mx6
X-Google-Smtp-Source: ADFU+vtUT/kaFcbRHAawaj9WvTr11wqxHnSljh1jD9GhmFG/CJAn5X1iQ96TtdMDbs7cNqwm2VZtNgO11M7dsteRRPg=
X-Received: by 2002:aca:cc81:: with SMTP id c123mr7877254oig.74.1584735216057; 
 Fri, 20 Mar 2020 13:13:36 -0700 (PDT)
MIME-Version: 1.0
From: Matthew Zilvar <mattzilvar@gmail.com>
Date: Fri, 20 Mar 2020 20:13:25 +0000
Message-ID: <CAD3FP-O4oqpvpxZ=kqH60K2skiCQR+MOS90TX+3ndzGJ+ZQN=g@mail.gmail.com>
To: tomoyo-users-en@lists.osdn.me
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.2/25757/Fri Mar 20 22:13:59 2020
Subject: [tomoyo-users-en   730] Contribution for Tomoyo Learning Mode
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
Content-Type: multipart/mixed; boundary="===============9007924531337434161=="
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

--===============9007924531337434161==
Content-Type: multipart/alternative; boundary="0000000000009dc1aa05a14eebea"

--0000000000009dc1aa05a14eebea
Content-Type: text/plain; charset="UTF-8"

I saw a recent tomoyo user requesting domain policy contributions.

Since file-systems tend to be different from platform to platform due to
differences in hardware, applications and such I went about what Manuel was
trying to do differently.

I instead approached this by working towards creation of a patternize.conf
that can create the desired domain policy while using tomoyo's learning
mode.

The work I began is incomplete, but I've decided to host it here:

https://github.com/beaker23/tomoyo

In case it is useful to anyone else.

- Matthew

--0000000000009dc1aa05a14eebea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I saw a recent tomoyo user requesting domain policy c=
ontributions.</div><div><br></div><div>Since file-systems tend to be differ=
ent from platform to platform due to differences in hardware, applications =
and such I went about what Manuel was trying to do differently.</div><div><=
br></div><div>I instead approached this by working towards creation of a pa=
tternize.conf that can create the desired domain policy while using tomoyo&=
#39;s learning mode.</div><div><br></div><div>The work I began is incomplet=
e, but I&#39;ve decided to host it here:</div><div><br></div><div><a href=
=3D"https://github.com/beaker23/tomoyo">https://github.com/beaker23/tomoyo<=
/a></div><div><br></div><div>In case it is useful to anyone else.</div><div=
><br></div><div>- Matthew<br></div></div>

--0000000000009dc1aa05a14eebea--


--===============9007924531337434161==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdG9tb3lvLXVz
ZXJzLWVuIG1haWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMub3Nkbi5tZQpodHRwczov
L2xpc3RzLm9zZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNlcnMtZW4K

--===============9007924531337434161==--

