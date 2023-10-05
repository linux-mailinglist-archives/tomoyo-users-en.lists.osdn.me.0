Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id 6140891BD8A
	for <lists+tomoyo-users-en@lfdr.de>; Fri, 28 Jun 2024 13:36:33 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id B6ECF144E81;
	Fri, 28 Jun 2024 20:36:31 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id BF70E144E5E
 for <tomoyo-users-en@lists.osdn.me>; Thu,  5 Oct 2023 23:22:05 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ip-10-232-20-202
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=7.0 tests=FREEMAIL_FROM,HTML_MESSAGE,
 T_DKIM_INVALID autolearn=disabled version=3.4.2
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
 [209.85.216.53]) by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Thu,  5 Oct 2023 23:22:05 +0900 (JST)
Received: by mail-pj1-f53.google.com with SMTP id
 98e67ed59e1d1-27762a19386so698095a91.2
 for <tomoyo-users-en@lists.osdn.me>; Thu, 05 Oct 2023 07:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696515724; x=1697120524; darn=lists.osdn.me;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=c5KE3mU14izONRd+nsDeFkj510FbAzYyDcfWu6v9fwQ=;
 b=WElkxQ+rE2dzt8DTqR1pYua2/mcrkNO2U0lL2QI8qmsaH6AmihBNVH/6T3hfECU6OY
 kt8t9O/hJCsoyFY2x7UyMX8woEwXBuNZ1wt4FNiwdKMIV0vwE9yCi58jNLbJbRq7qlW/
 faChnPQ440jIQh+H/SJ+waiq7VvVbo840dWF4QfgVKhZVwh+SLJfKTFI3cIDy1LcJ/Tg
 gUXlbS0OhJQUGgf95F0EGz8bmQ2LZC9LcfiWMIa28ULVdGqm2OI0zmDJlVskwIC4nlbk
 U4WkmjR+6DSvt7tv27VNpCNZtMGU+dDsISxTwTvznf9ohINSqh/aY7/grLf7f86WfngE
 3cBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696515724; x=1697120524;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=c5KE3mU14izONRd+nsDeFkj510FbAzYyDcfWu6v9fwQ=;
 b=EKurQNav0bT5QEUPsgV1pa2yFrh9OglJs7AjLthklNCeXHI2ovCh2WjWhD8usr3+ZM
 xCROBlKX/kqCOBGhup5kFzpJvO+1IhcTYclBEx0IWuH1ySu4ZNzAM8wsDqyhSDzhkjH3
 9mp1lWBJM/t+FUxstBN0jjIAu4RhQX9m7/UCptZMDmtzOeyZmf4Zph2+cqunzhwkrYRv
 r6nJV8M03d6GPV6g6LnPxelgYaTH+P1iWuzSeEPKzFs1Cgv7psDtTgrSdrUDC/96wUrn
 L3oYy+0g043IqBFqSu2RZipEw7ElJliWXgOeuH1KNls5z0jGtYxhQvn7d/ZJnkIaNAQj
 fZcw==
X-Gm-Message-State: AOJu0YyNiV9MUbhGyeAtDV8h4UBFrAP1rrSfi1XcgYiQ9Rm4ReTbmJR9
 DYlTylPhW0sXhXJt4Yz/415VxI646vjdtMWF5sH7XEXr
X-Google-Smtp-Source: AGHT+IFFazXTfuhk0IKjpav9MYpvjKGvKHIss8b6H3RZYunT/dV2O+2BZu64uhJafsrsUWQNbia/ljtHsPtDYnqSSBY=
X-Received: by 2002:a17:90b:1e51:b0:26b:49de:13bd with SMTP id
 pi17-20020a17090b1e5100b0026b49de13bdmr5133547pjb.36.1696515723673; Thu, 05
 Oct 2023 07:22:03 -0700 (PDT)
MIME-Version: 1.0
From: Esteban Gil <styf3000@gmail.com>
Date: Thu, 5 Oct 2023 16:21:39 +0200
Message-ID: <CA+aVzjN+mwNBDOQn_Fbfcg=7AnfH-i7enHT4JqET9XRk-Om7qg@mail.gmail.com>
To: tomoyo-users-en@lists.osdn.me
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
X-Mailman-Approved-At: Fri, 28 Jun 2024 20:36:29 +0900
Subject: [tomoyo-users-en   749] Save policy to disk before reboot
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
Content-Type: multipart/mixed; boundary="===============0710786491843135029=="
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

--===============0710786491843135029==
Content-Type: multipart/alternative; boundary="00000000000010c6e50606f8d91f"

--00000000000010c6e50606f8d91f
Content-Type: text/plain; charset="UTF-8"

Hi!

I am using Akari and I wanted to capture a full reboot sequence in learning
mode, and then once the system boots again, be able to pick up the policy
where it left off.
Is there any way for Akari to automatically save the current policy to disk
before shutting down?
I was thinking about creating a systemd service that triggers before
reboot/shutdown  and saves the policy to /etc/ccs, but I would like to know
if there is an Akari way
of doing this.

Thanks in advance.
Cheers,
Esteban.

--00000000000010c6e50606f8d91f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>I am using Akari and I wanted to ca=
pture a full reboot sequence in learning mode, and then once the system boo=
ts again, be able to pick up the policy where it left off.</div><div>Is the=
re any way for Akari to automatically save the current policy to disk befor=
e shutting down?</div><div>I was thinking about creating a systemd service =
that triggers before reboot/shutdown=C2=A0 and saves the policy to /etc/ccs=
, but I would like to know if there is an Akari way</div><div>of doing this=
.</div><div><br></div><div>Thanks in=C2=A0advance.</div><div>Cheers,</div><=
div>Esteban.</div></div>

--00000000000010c6e50606f8d91f--


--===============0710786491843135029==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdG9tb3lvLXVz
ZXJzLWVuIG1haWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMub3Nkbi5tZQpodHRwczov
L2xpc3RzLm9zZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNlcnMtZW4K

--===============0710786491843135029==--

