Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id D4F9F944F9E
	for <lists+tomoyo-users-en@lfdr.de>; Thu,  1 Aug 2024 17:47:49 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id 6448B144F99;
	Fri,  2 Aug 2024 00:47:48 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id D3357144F90
 for <tomoyo-users-en@lists.osdn.me>; Fri,  2 Aug 2024 00:47:46 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=7.0 tests=FREEMAIL_FROM,HTML_MESSAGE,
 T_DKIM_INVALID autolearn=disabled version=3.4.2
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175]) by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Fri,  2 Aug 2024 00:47:46 +0900 (JST)
Received: by mail-lj1-f175.google.com with SMTP id
 38308e7fff4ca-2f0271b0ae9so85504581fa.1
 for <tomoyo-users-en@lists.osdn.me>; Thu, 01 Aug 2024 08:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1722527265; x=1723132065; darn=lists.osdn.me;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=JiyhyUuGWmJMhXhpGx3CTcxRvoLN4Ot3BjYKDXnFQBM=;
 b=RMJuGOCv9fx5WUGng7vAo75txtkOgEx3jTbmNb/QfDt7Bp6tKl95RRp0GK1nTba+wh
 tnD8P3FFHFEItqE0oX+d3jJ+N1fvkR8p8TfWcRZRMRfk6v71fTn+V2FQ3xt++W0WYA1j
 7fozdOofQxSlrLI34yQlpDO4E6BmEijH07jvIAdVJJjkVi5Xzz3SK9Q7wOndVJJA+tB1
 JS2YwoWyxkPtOL7w/0sbUva8www1fiyiiZCa8uG1gVZma4xEJgNSt/JB6npzAeboMuyI
 FS1Fz/3ourV9SqQGMnM/ImToNoLE/t35AWfbsxIZs8yUbrUop67A/yQLGJWgGlTHgN1Z
 UZxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722527265; x=1723132065;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=JiyhyUuGWmJMhXhpGx3CTcxRvoLN4Ot3BjYKDXnFQBM=;
 b=ImtYmD0Y6EZcVI7b5v5M4ciuX4G0otHiWVEGfCCgzhyQaOsFzI5Ex+24ANwIu6ky2B
 Y0gjVgQmUQ9QZ2afrUv0vXEzAOf66tLO9aGsIzexk+ZNKGYn4gQzZbLSIGNsuyblmWSB
 wA2rvswDoc/8xj9S7qPqLeOYb+3mFs75pOl2KrWzxkz8gw2fDY2C3P5h3vaX0tqh0Swv
 Zdh+RaG2LYQhDRVt0W1wBVhNh+G53byVGw/p4VsyIjBhgdPtYwBTjtHdc1gufAw1D/+8
 m3NTS7qwb1wz+ef1D4ex/78wEUinE4oiH0d54gsH9cS24HGitycJeZr5RaHyoGCv9IR7
 50og==
X-Gm-Message-State: AOJu0YxpgTSmgLYOIxvyzvTHzS/HrXbj09YElrIs+6EcVuVvAliANLPk
 XTcjAqzXO53zsvHyBpBneYTwQSEbF9GkozDDzD4YpsyxMFyW7ctdxzUD5bFIQyAV5tKv4ljAP53
 CYv4Wwil5gDFzJAV5ICuovmf8EmtrUHUd
X-Google-Smtp-Source: AGHT+IFCy42XfugplwXTb7gJysJOReSsnneyU4oHUf6pG67APwChFvnNXT4WZ/XxXMaLs0plH/XXrtj6exsBNE5hTMk=
X-Received: by 2002:a2e:9606:0:b0:2f0:3cff:30ce with SMTP id
 38308e7fff4ca-2f15a9f0284mr5215921fa.0.1722527265231; Thu, 01 Aug 2024
 08:47:45 -0700 (PDT)
MIME-Version: 1.0
From: Esteban Gil <styf300@gmail.com>
Date: Thu, 1 Aug 2024 17:47:34 +0200
Message-ID: <CAL2A2Va_Of1oyFEPwHhdy2Y7G8QAj7d=jwF-2SAbjvtk9uV_8g@mail.gmail.com>
To: tomoyo-users-en@lists.osdn.me
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
Subject: [tomoyo-users-en   758] Policy namespaces
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
Content-Type: multipart/mixed; boundary="===============7405816679293534732=="
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

--===============7405816679293534732==
Content-Type: multipart/alternative; boundary="000000000000c2a7c2061ea121a8"

--000000000000c2a7c2061ea121a8
Content-Type: text/plain; charset="UTF-8"

Hello,
I am developing an ACL with Akari for my server that is running several
Docker containers and I wanna be able to clearly differentiate the domains
from the host machine from the ones in containers.
Since I have it configured to always initialize new domains
(initialize_domain any from any) because I find it easier to work with, I
thought of using namespaces to achieve this.
However, by reading the docs I understood that you also need to define new
exception and profile policies for every new namespace you introduce. In my
case that would mean duplicating the existing ones for each namespace and
adding the appropriate namespace prefix. I was wondering if there is a way
of telling Akari/Tomoyo to ignore namespaces in exception and profile
policies and just use the built-in one. If not, what would be the code
changes necessary to achieve this?

Thank you!

--000000000000c2a7c2061ea121a8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div>I am developing an ACL with Akari for my server=
 that is running several Docker containers and I wanna be able to clearly d=
ifferentiate=C2=A0the domains from the host machine from the ones in contai=
ners.=C2=A0</div><div>Since I have it configured to always initialize new d=
omains (initialize_domain any from any)=C2=A0because=C2=A0I find it easier =
to work with, I thought of using namespaces to achieve this.</div><div>Howe=
ver, by reading the docs I understood that you also need to define new exce=
ption and profile policies for every new namespace you introduce. In my cas=
e that would mean duplicating the existing ones for each namespace and addi=
ng the appropriate namespace prefix. I was wondering if there is a way of t=
elling Akari/Tomoyo to ignore namespaces in exception and profile policies =
and just use the built-in one. If not, what would be the code changes neces=
sary=C2=A0to achieve this?</div><div><br></div><div>Thank you!</div><div><b=
r></div></div>

--000000000000c2a7c2061ea121a8--


--===============7405816679293534732==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdG9tb3lvLXVz
ZXJzLWVuIG1haWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMub3Nkbi5tZQpodHRwczov
L2xpc3RzLm9zZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNlcnMtZW4K

--===============7405816679293534732==--

