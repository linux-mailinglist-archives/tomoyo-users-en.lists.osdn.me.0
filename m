Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id 90D6091BD8E
	for <lists+tomoyo-users-en@lfdr.de>; Fri, 28 Jun 2024 13:36:34 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id 1385D144EE3;
	Fri, 28 Jun 2024 20:36:32 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id 8A476144E70
 for <tomoyo-users-en@lists.osdn.me>; Thu, 18 Jan 2024 23:46:54 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ip-10-232-20-202
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=7.0 tests=FREEMAIL_FROM,HTML_MESSAGE,
 T_DKIM_INVALID autolearn=disabled version=3.4.2
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
 [209.85.215.175]) by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Thu, 18 Jan 2024 23:46:54 +0900 (JST)
Received: by mail-pg1-f175.google.com with SMTP id
 41be03b00d2f7-5ce74ea4bf2so627900a12.0
 for <tomoyo-users-en@lists.osdn.me>; Thu, 18 Jan 2024 06:46:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1705589214; x=1706194014; darn=lists.osdn.me;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=DzfYkwIqCetuvj/K+4lV3xZTZ5nKQ6kWBRIkqqvqa24=;
 b=NXzC2MEyNLQ9FFq0Agq1mkMx1WgRLOCYaCNA2vh+HdqKYf9/xuPsPxJ/GozGtFv0l2
 7htuKUpSWFTKP/1s7sK0D8S44hE2WuJdTKS7I9VD3g/2xj/0fp0AewC/TEfI1p6LS4hL
 SyIGDj8zN6z3JHDGBr2P5hQwPIhqZadkHToGzUyraQGDGXmpydtmwIqh83q0JS+G0rM5
 UufIXjBnjGkM7NRTqeUICKXpCOah6TfCHy6UBQ/TihXo1rxAmQ3+FspbkM0SoVV0YLNv
 D+GVrbzyzrGX18y/Ok8dMGtdXYipqNCEkF7AMSoQOOcflFu8TdF7/5F3XDM0HYGzA7b/
 d0rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705589214; x=1706194014;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=DzfYkwIqCetuvj/K+4lV3xZTZ5nKQ6kWBRIkqqvqa24=;
 b=ncP5zM59yYXvuB3ykNp7nvk2IU1Dr8dKiDmxaCWeXoZDO2xgC65jpwIgGE5cDLLdYF
 vXYMM6dwg5aS6ZfHgdWt+p89PUpJEzAs9k9eb121yfVaqc2Xqfbi4eIzjl49N5VyC2w0
 3D2ufst+rIIGtH51nblz/yIVTRS8JbSnxXEyyD02WBeTokT1DiP8KesXLXxk+98L3fDD
 +e7GpU5FR9If68QshTf5fDfe9brVU3xI1q2nW833AIRhEX8LnQRPmwu+xFLs5jX8ynsF
 LdwCAL1/2vG9K7SLfwjvR2nlq3weUT1Kj/2NC51Smc72FDXM8iQ5DXP//n8wlCJKLW0D
 TZ4g==
X-Gm-Message-State: AOJu0YwxL3ZTQAW/JVkX1ZnJPH7hA7DQQO1Q7BKhk5u0BnXAH3Hg58Uy
 PB9aaWtnMKGlKr0U6c24oLDmPkCGeJ2QyjQcuXJRGr+k4QuCf5P50lvukpnOvxZt6MSB4OMnaaP
 GsE/Jy+P1OdNiuapuh8Hr/ZcxOUfoz2asIM6ZyQ==
X-Google-Smtp-Source: AGHT+IGnREo/1wbbHVdLE0eUXcvG7fvUStHF7l8U/N+eBonLJ9P4IwXfMtbAuQOQ9eezyXwxRdi4VXJIDCkFEZ4yCf8=
X-Received: by 2002:a17:90a:12c3:b0:28f:f249:3c4d with SMTP id
 b3-20020a17090a12c300b0028ff2493c4dmr1394140pjg.12.1705589213695; Thu, 18 Jan
 2024 06:46:53 -0800 (PST)
MIME-Version: 1.0
From: Esteban Gil <styf3000@gmail.com>
Date: Thu, 18 Jan 2024 15:46:37 +0100
Message-ID: <CA+aVzjPOkj+=e0zasxrDm6XQEUA10mcFo8ddeHJQRS3Rt-YrKQ@mail.gmail.com>
To: tomoyo-users-en@lists.osdn.me
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
X-Mailman-Approved-At: Fri, 28 Jun 2024 20:36:29 +0900
Subject: [tomoyo-users-en   752] Tomoyo/akari website down
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
Content-Type: multipart/mixed; boundary="===============1106148899671771391=="
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

--===============1106148899671771391==
Content-Type: multipart/alternative; boundary="000000000000371274060f396f42"

--000000000000371274060f396f42
Content-Type: text/plain; charset="UTF-8"

Hi,

I have noticed that the website http://tomoyo.osdn.jp/2.5/ has been down
for a while now.
I am sure you are aware of it, but I was wondering when it will be
available again as I need to access some documentation for my project.

Thanks,
Esteban.

--000000000000371274060f396f42
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I have noticed that the website=C2=
=A0<a href=3D"http://tomoyo.osdn.jp/2.5/">http://tomoyo.osdn.jp/2.5/</a>=C2=
=A0has been down for a while now.</div><div>I am sure you are aware of it, =
but I was wondering when it will be available again as I need to access som=
e documentation for my project.</div><div><br></div><div>Thanks,</div><div>=
Esteban.</div></div>

--000000000000371274060f396f42--


--===============1106148899671771391==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdG9tb3lvLXVz
ZXJzLWVuIG1haWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMub3Nkbi5tZQpodHRwczov
L2xpc3RzLm9zZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNlcnMtZW4K

--===============1106148899671771391==--

