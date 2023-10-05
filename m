Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id EB4B591BD8C
	for <lists+tomoyo-users-en@lfdr.de>; Fri, 28 Jun 2024 13:36:33 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id D0B3A144E9A;
	Fri, 28 Jun 2024 20:36:31 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id 8EE6F144F0F
 for <tomoyo-users-en@lists.osdn.me>; Thu,  5 Oct 2023 23:54:52 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ip-10-232-20-202
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=7.0 tests=FREEMAIL_FROM,HTML_MESSAGE,
 T_DKIM_INVALID autolearn=disabled version=3.4.2
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com
 [209.85.161.50]) by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Thu,  5 Oct 2023 23:54:52 +0900 (JST)
Received: by mail-oo1-f50.google.com with SMTP id
 006d021491bc7-57ad95c555eso557473eaf.3
 for <tomoyo-users-en@lists.osdn.me>; Thu, 05 Oct 2023 07:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696517692; x=1697122492; darn=lists.osdn.me;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=QggqyrKcWx5AHWf6BDyGFEd2JqNAsFuzW2Dg+OIoCY8=;
 b=a094LqHb30dWy/tH2D5SRTbF/GMLKklCOSe+hQGpDytOiGvfZOTjIuLfqZvu5kcPJ1
 z5PZB1E/ky8eUrDrrBDXsOUc9nOwllUDYxc4HyJ26xqYCgiv9Q3xBxHxZl2iLbldcNsE
 BFuuQ2EGXkopf49xj0XDWHjhdI8DU0pPXgKyWV6pPI3Sqhcp3q9pSY0GJ+WfR9vJXEmq
 upvUadXMr/ZYnOCEB/3w6vegvfoiFTPiUVopTTu5NfD+uPnPORBkJhyiywvKeGUveLh1
 8I17cmADrajaIuEZGYBGIoj6vKXos3fLgb1CNeh846dnGs6V6y4hlcxGrZgqxk0UKJo2
 K7ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696517692; x=1697122492;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=QggqyrKcWx5AHWf6BDyGFEd2JqNAsFuzW2Dg+OIoCY8=;
 b=TddNXGNa6rugAg+iuRwNqp/PRclojTZygs8A0l8L3M90ZC+di5C2zFuRCdV4dntbhz
 vGazfN8TEn+mkV6+hkQV+YG+TdEJm/tdo+EcRy3DJS+YvFPYPu8Utw87zH8kbCPSopuR
 KOBAokMfyIW3AfMbghbGMbGfZ/nSQ/8qXlnBb1mRozwCp7TbWE+yLRwpNBnARKcG8epB
 HxHgeeGcZMWhcRdpwjH4A0v6vDbnfwDWrx+qeImGYqHbfuG5wqa+iYxGSnW3ZHle41q+
 cXF0NTZVYvDF+r2cujFoz2ryMM981/iGVIGaucIqc0iIZ+vmOhVDzPbC1BvIJbg+Um0k
 8JSw==
X-Gm-Message-State: AOJu0Yw/3s7WbLSGvCHVfjoVoAo6xQ5PY1QUpX1i1/TgRFQ5OZBbc2RO
 LvevDD5Kc156YfK00DDUUWp+08fywRZCtD49434I1BuQCo8=
X-Google-Smtp-Source: AGHT+IG1p8mwnXW2hJtOAzZymZQlNJBu9aqaMjJCvP/NHrNwb8FX3aknCDAIUDjT1JjNq1Zc1hxC7M+ldDDYkN97np4=
X-Received: by 2002:a05:6358:419c:b0:141:ca1:cc62 with SMTP id
 w28-20020a056358419c00b001410ca1cc62mr6374926rwc.27.1696517691581; Thu, 05
 Oct 2023 07:54:51 -0700 (PDT)
MIME-Version: 1.0
From: Esteban Gil <styf3000@gmail.com>
Date: Thu, 5 Oct 2023 16:54:31 +0200
Message-ID: <CA+aVzjOwMez3OHY6ftpc1cb_D0zoFZH0hO15Gv1V5gXECFsj+A@mail.gmail.com>
To: tomoyo-users-en@lists.osdn.me
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
X-Mailman-Approved-At: Fri, 28 Jun 2024 20:36:29 +0900
Subject: [tomoyo-users-en   750] Process execution control by user
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
Content-Type: multipart/mixed; boundary="===============1213308440588405856=="
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

--===============1213308440588405856==
Content-Type: multipart/alternative; boundary="0000000000005ca7380606f94ea1"

--0000000000005ca7380606f94ea1
Content-Type: text/plain; charset="UTF-8"

Hello!

While digging into the audit logs, I noticed that "file execute" events
dump envp[] info, which contains the variable USERNAME that shows which
user has launched the process.
This tells me that Akari is able to know which user is launching the
program. I was wondering if implementing some sort of process execution
restriction by user is something that is
being considered or if it has ever been considered and discarded. Curious
to know, since I think it could be quite powerful and useful.

Thanks and cheers,
Esteban.

--0000000000005ca7380606f94ea1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello!<div><br></div><div>While digging into the audit log=
s, I noticed that &quot;file execute&quot; events dump envp[] info, which c=
ontains=C2=A0the variable USERNAME that shows which user has launched the p=
rocess.</div><div>This tells me that Akari is able to know which=C2=A0user =
is launching the program. I was wondering if implementing some sort of proc=
ess execution restriction by user is something that is</div><div>being cons=
idered or if it has ever been considered and discarded. Curious to know, si=
nce I think it could be quite powerful=C2=A0and useful.</div><div><br></div=
><div>Thanks and cheers,</div><div>Esteban.</div></div>

--0000000000005ca7380606f94ea1--


--===============1213308440588405856==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdG9tb3lvLXVz
ZXJzLWVuIG1haWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMub3Nkbi5tZQpodHRwczov
L2xpc3RzLm9zZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNlcnMtZW4K

--===============1213308440588405856==--

