Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id 8AD225B09E5
	for <lists+tomoyo-users-en@lfdr.de>; Wed,  7 Sep 2022 18:16:18 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id 2544B144E2C;
	Thu,  8 Sep 2022 01:16:17 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id 40647144CC4
 for <tomoyo-users-en@lists.osdn.me>; Thu,  8 Sep 2022 01:16:15 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=FREEMAIL_FROM,T_DKIM_INVALID
 autolearn=disabled version=3.4.2
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com
 [209.85.221.182]) by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Thu,  8 Sep 2022 01:16:15 +0900 (JST)
Received: by mail-vk1-f182.google.com with SMTP id f76so1359346vkf.7
 for <tomoyo-users-en@lists.osdn.me>; Wed, 07 Sep 2022 09:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date; bh=1VIEi5N4iiv2sFbDU514BxRos4gWQULGQPej3cHItUc=;
 b=DpBfAem7TIGkVZ9xUyXyswffO4cfLQkzXXirvAqPuiDkOMHDlIfMKyC7lFIpxxaDka
 tXKJSYOvs4Hzq/nATss3937el5ELSiyjiarW8+UzXwSRaRdSIDc1kSlaq7I4qk/6xmo3
 q1t0vU2i+qZtrq+Jn2NvzIKZxeewYxeYbQE5mHazZH7CBFRDLv2cy2fsc6uE2dwc5c2e
 +0fE2vXgVYOJTUSFos0a8UJUUOREn2n3c5/sZoZc8bcQDZrTm147WoPYU3bWfex5ti8b
 i4UNGqPL381S7UulqP7vTH0Ehos5yYwCyyoZ72c0I94hNy7Gy1yiuzXrhaK67tk1Dbs2
 F0ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=1VIEi5N4iiv2sFbDU514BxRos4gWQULGQPej3cHItUc=;
 b=cXRjrqfnexZK93vzWxEDNKH8t9furHhdXVmr3uB9lJfbtf5W9UtRiPcJ2c/zldI0kK
 mWvPceX/QBW1Ld7K2nCtXKDiAW1OVUvMJdlO175f+nCARc/AqHKdAbBLZUSKgM6PGoIh
 sysFgsPX7K/bpz+q5HTkE1Mh9eSwx99C1LGT9y9WOC6+dxQOhsAoKoHAKmsyHi+xN1i3
 NNL5VMjQ945i1sK8Ry1BuQbDC5KjYcIigZ5X5LLHm+I2f2dvBF7/sg4D2NTix2Pw6Gdg
 XF4dn0Y4Jmp+yyHQzjIcPPw/qbSmRT8xQN5D/26myfXRkiijptvwjs6IeetDd5kpmF5d
 0zww==
X-Gm-Message-State: ACgBeo3QRSqDxj3JzR00RQspqYID6I7t9Koe+q7URx0X+z+lyGDhHYFx
 EsCJgq0wbU1A7CtJAFBohoOQet9lBAYaAXIp+QxLwxpBJVg=
X-Google-Smtp-Source: AA6agR5pygr1Tnq0yCKnxqe7FplK9d78CbUUm58vFuAvpd4c7dVrU/TORFzi9L1OqtvPPLa8EYBZome0U99XwtVV/4M=
X-Received: by 2002:a1f:9d17:0:b0:380:48b7:fa5 with SMTP id
 g23-20020a1f9d17000000b0038048b70fa5mr1570962vke.16.1662567374302; Wed, 07
 Sep 2022 09:16:14 -0700 (PDT)
MIME-Version: 1.0
From: Manuel Bessler <manuel.bessler@gmail.com>
Date: Wed, 7 Sep 2022 12:16:03 -0400
Message-ID: <CAKSdS8K1n=qp_=oqvKSqfut-FoPfQQJYJ7wmXJguM2sjamAdAw@mail.gmail.com>
To: tomoyo-users-en@lists.osdn.me
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
Subject: [tomoyo-users-en 743] Caitsith build issue on aarch64 on kernel >
 5.8
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

SSBob3BlIHRoaXMgaXMgdGhlIHJpZ2h0IHBsYWNlIHRvIGFzayBDYWl0aHNpdGggcXVlc3Rpb25z
Li4uCgpJIHJhbiBpbnRvIHRoZSBmb2xsb3dpbmcgYnVpbGQgaXNzdWUgb24gQVJNNjQgb24ga2Vy
bmVsID41LjggKDUuMTUgaW4KbXkgY2FzZSkgaW4gbHNtLTQuMTIuYyB0cnlpbmcgdG8gY29tcGls
ZSBjYWl0c2l0aC1tb2QtMC4yLTIwMjIwNjIxOgoKPT09PT09PT09PT09PT09PT09PT09PT09PT09
CnwgbWFrZTogRW50ZXJpbmcgZGlyZWN0b3J5ICcvYnVpbGRrZXJuZWwtYnVpbGQtYXJ0aWZhY3Rz
Jwp8ICAgQ0MgW01dICAvYnVpbGQvY2FpdHNpdGgtbW9kLzAuMi0yMDIyMDYyMS1yMC9jYWl0c2l0
aC90ZXN0Lm8KfCAgIENDIFtNXSAgL2J1aWxkL2NhaXRzaXRoLW1vZC8wLjItMjAyMjA2MjEtcjAv
Y2FpdHNpdGgvcHJvYmUubwp8ICAgQ0MgW01dICAvYnVpbGQvY2FpdHNpdGgtbW9kLzAuMi0yMDIy
MDYyMS1yMC9jYWl0c2l0aC9wZXJtaXNzaW9uLm8KfCAgIENDIFtNXSAgL2J1aWxkL2NhaXRzaXRo
LW1vZC8wLjItMjAyMjA2MjEtcjAvY2FpdHNpdGgvZ2Mubwp8IEdlbmVyYXRpbmcgYnVpbHQtaW4g
cG9saWN5IGZvciBDYWl0U2l0aCAwLjIuCnwgICBDQyBbTV0gIC9idWlsZC9jYWl0c2l0aC1tb2Qv
MC4yLTIwMjIwNjIxLXIwL2NhaXRzaXRoL3JlYWxwYXRoLm8KfCBDaGVja2luZyB3aGV0aGVyIHVt
b2RlX3QgaXMgdXNlZCBieSBpbmNsdWRlL2xpbnV4L3NlY3VyaXR5Lmggb3Igbm90Lgp8ICAgQ0Mg
W01dICAvYnVpbGQvY2FpdHNpdGgtbW9kLzAuMi0yMDIyMDYyMS1yMC9jYWl0c2l0aC9sc20ubwp8
ICAgQ0MgW01dICAvYnVpbGQvY2FpdHNpdGgtbW9kLzAuMi0yMDIyMDYyMS1yMC9jYWl0c2l0aC9w
b2xpY3lfaW8ubwp8ICAgTEQgW01dICAvYnVpbGQvY2FpdHNpdGgtbW9kLzAuMi0yMDIyMDYyMS1y
MC9jYWl0c2l0aC9jYWl0c2l0aF90ZXN0Lm8KfCBJbiBmaWxlIGluY2x1ZGVkIGZyb20gL2J1aWxk
L2NhaXRzaXRoLW1vZC8wLjItMjAyMjA2MjEtcjAvY2FpdHNpdGgvbHNtLmM6MTI6CnwgL2J1aWxk
L2NhaXRzaXRoLW1vZC8wLjItMjAyMjA2MjEtcjAvY2FpdHNpdGgvbHNtLTQuMTIuYzogSW4gZnVu
Y3Rpb24KJ2NoZWNrX3JvX3BhZ2VzJzoKfCAvYnVpbGQvY2FpdHNpdGgtbW9kLzAuMi0yMDIyMDYy
MS1yMC9jYWl0c2l0aC9sc20tNC4xMi5jOjEyODk6MTc6CmVycm9yOiBpbXBsaWNpdCBkZWNsYXJh
dGlvbiBvZiBmdW5jdGlvbiAncHJvYmVfa2VybmVsX3dyaXRlJzsgZGlkIHlvdQptZWFuICdrZXJu
ZWxfd3JpdGUnPyBbLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KfCAgMTI4
OSB8ICAgICAgICAgcmV0dXJuICFwcm9iZV9rZXJuZWxfd3JpdGUobGlzdCwgbGlzdCwgc2l6ZW9m
KHZvaWQgKikpOwp8ICAgICAgIHwgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fgp8
ICAgICAgIHwgICAgICAgICAgICAgICAgIGtlcm5lbF93cml0ZQp8IGNjMTogc29tZSB3YXJuaW5n
cyBiZWluZyB0cmVhdGVkIGFzIGVycm9ycwp8IG1ha2VbMV06ICoqKiBbL2J1aWxka2VybmVsLXNv
dXJjZS9zY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI4OToKL2J1aWxkL2NhaXRzaXRoLW1vZC8wLjIt
MjAyMjA2MjEtcjAvY2FpdHNpdGgvbHNtLm9dIEVycm9yIDEKfCBtYWtlWzFdOiAqKiogV2FpdGlu
ZyBmb3IgdW5maW5pc2hlZCBqb2JzLi4uLgp8IG1ha2U6ICoqKiBbL2J1aWxka2VybmVsLXNvdXJj
ZS9NYWtlZmlsZToxODkzOgovYnVpbGQvY2FpdHNpdGgtbW9kLzAuMi0yMDIyMDYyMS1yMC9jYWl0
c2l0aF0gRXJyb3IgMgo9PT09PT09PT09PT09PT09PT09PT09PT09PT0KCkl0IGxvb2tzIGxpa2Ug
dGhlIGNoZWNrX3JvX3BhZ2VzKCkgY29kZSBkaWZmZXJzIGZvciBYODYgYW5kIG90aGVyCnBsYXRm
b3JtcyBhbmQgaXMgbWlzc2luZyBhCiNpZiBMSU5VWF9WRVJTSU9OX0NPREUgPCBLRVJORUxfVkVS
U0lPTig1LCA4LCAwKQphcm91bmQgbGluZSAxMjg5LgpXaGF0IGlzIHRoZSBjb3JyZWN0IHdheSB0
byBmaXggdGhpcz8KClRoYW5rcywKTWFudWVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwp0b21veW8tdXNlcnMtZW4gbWFpbGluZyBsaXN0CnRvbW95by11
c2Vycy1lbkBsaXN0cy5vc2RuLm1lCmh0dHBzOi8vbGlzdHMub3Nkbi5tZS9tYWlsbWFuL2xpc3Rp
bmZvL3RvbW95by11c2Vycy1lbgo=
