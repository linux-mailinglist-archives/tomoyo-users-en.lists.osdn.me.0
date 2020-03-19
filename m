Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (gw0.osdn.jp [202.221.179.250])
	by mail.lfdr.de (Postfix) with ESMTP id D651B18B95B
	for <lists+tomoyo-users-en@lfdr.de>; Thu, 19 Mar 2020 15:29:27 +0100 (CET)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 sf-lists.priv.osdn.jp
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=FREEMAIL_FROM,T_DKIM_INVALID
 autolearn=disabled version=3.4.2
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com
 [209.85.221.177]) by sf-lists.priv.osdn.jp (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Thu, 19 Mar 2020 23:29:24 +0900 (JST)
Received: by mail-vk1-f177.google.com with SMTP id k63so766761vka.7
 for <tomoyo-users-en@lists.osdn.me>; Thu, 19 Mar 2020 07:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=WZRUp3ftXpR3KtuTFdAmnbyjIqCgrHyE/RKk1w41X8I=;
 b=l6PHOY8eThPImsJM9+qfcI/0Deoq6/qIqr6y10FvzkjBbU6nTAIzerOD1qE7BJEhT/
 yU30r/GsKlTz82NhnsLy+K0c7av0PP2/X/fJqCctZkz/HPHpyLSBbjanSAyJ8C4Baro0
 4iZ4BsuotFi25cGwx0wA8OhKcZZincKsx1YmtHE/vF5snt+iQvG3gQ1PewzDUIhUEnpJ
 UeBwYHcMjx7xJvvvbqumAvzC1T+XSj+m4yf73DP0D/wwH6Bb3Yqh39ygfrdg8v2puoMd
 Q/R5We6XOZO7/pHH/E/l8X9yY/ME3UzCGn9ZNkbamBbdu3kfkVLgm2RVwty27yD/To4a
 oS/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=WZRUp3ftXpR3KtuTFdAmnbyjIqCgrHyE/RKk1w41X8I=;
 b=dNy5gJnM3KFvKLQenfJPRWSiIWzLj6PpA9zDaTFOJ5OQ9geoW6StSPw4uUlxNH1Awy
 s2R9EmsMqG7Xo0llfU7ccL02Qr6kVELTlKq0dzfnIcKTGdQp1bMFUbg3ABZwbmt9vmZp
 RxTqB5Xb9A4p5y0eiot6dEwSeG4mvMm0HvjLFwpC8d7Dbld7XtOxYZBuPrzfwwgZciWt
 JLqUuFYGslliaXLd1TlYkxbnMRCKQt5Cyx+G3poJB180og7JAIOPDYHqRV55SkX6jcvR
 N2RPxT7fL29oIIKcTUZRxR76iVOcV/lLxQDErGoBcmgrAS62UyiIu2knBDE4wm3bGe8P
 6goA==
X-Gm-Message-State: ANhLgQ3XhnUvsjSW4N+8DxVQLg+DPwBdPeJ2zAxenwpYoM7fS3RIik5T
 wIzeAYEJkzlxQHIkczn6TuRrkJxgQwsZkw+5WwWhobXZ
X-Google-Smtp-Source: ADFU+vsKJZruUE9UZRKkVxjlr5ZOhI3GOmAs3M2BtVwp9U96FSoGL7XwMYj97dcC15LBIkDk3U3cVfPIrkBV2qrcJOk=
X-Received: by 2002:a1f:d084:: with SMTP id h126mr2524314vkg.25.1584628163259; 
 Thu, 19 Mar 2020 07:29:23 -0700 (PDT)
MIME-Version: 1.0
From: Manuel Bessler <manuel.bessler@gmail.com>
Date: Thu, 19 Mar 2020 10:29:12 -0400
Message-ID: <CAKSdS8LmFMvtWQ=chjLOODTyWtbtygkv5Jdt-xRCBeyjYHS8zw@mail.gmail.com>
To: tomoyo-users-en@lists.osdn.me
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.2/25756/Thu Mar 19 22:11:06 2020
Subject: [tomoyo-users-en   728] exception policy: aggregator behavior
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

SGksCgpJJ20gdHJ5aW5nIHRvIG1ha2UgdXNlIG9mIHRoZSBhZ2dyZWdhdG9yIGZlYXR1cmUgYnV0
IGVpdGhlciBJJ20KbWlzdW5kZXJzdGFuZGluZyBpdCBvciB1c2luZyBpdCB3cm9uZy4uLgoKRm9y
IGV4YW1wbGUgSSB3b3VsZCBsaWtlIHRvIHRyZWF0IC9iaW4vYmFzaCwgL2Jpbi9kYXNoLCBhbmQg
L2Jpbi9zaAp0aGUgc2FtZSwgYm90aCBmb3Igc2hlbGwgc2NyaXB0cyBhbmQgZXNwLiBmb3IgaW50
ZXJhY3RpdmUgc2hlbGxzLgpTbyBJIHB1dCB0aGlzIGludG8gbXkgZXhjZXB0aW9uIHBvbGljeToK
YWdncmVnYXRvciAvYmluL2Jhc2ggL2Jpbi9zaAphZ2dyZWdhdG9yIC9iaW4vZGFzaCAvYmluL3No
CgpBbmQgaW4gbXkgZG9tYWluIHBvbGljeSByZWZlcmVuY2UgdGhpbmdzIGp1c3QgYmUgYnkgL2Jp
bi9zaCwgZWc6CjxrZXJuZWw+IC91c3Ivc2Jpbi9zc2hkIC9iaW4vc2gKPGtlcm5lbD4gL2Jpbi9z
aCAvdXNyL2Jpbi9zdWRvIC9iaW4vc2gKPGtlcm5lbD4gL2Jpbi9zaAoKSSB3YXMgaG9waW5nIHRo
YXQgd291bGQgd29yayB3aGV0aGVyIGEgdXNlcidzIHNoZWxsIGlzIGJhc2gsIGRhc2gsIG9yIHNo
LgpIb3dldmVyLCBpdCBkb2VzIG5vdCB3b3JrLCBzc2gnaW5nIGluIGFzIGEgdXNlciB3aXRoIHNo
ZWxsIC9iaW4vYmFzaAppcyBub3QgYWxsb3dlZCB1bnRpbCBJIGV4cGxpY2l0bHkgYWxsb3cKPGtl
cm5lbD4gL3Vzci9zYmluL3NzaGQgL2Jpbi9iYXNoCgpJJ20gdXNpbmcgVG9tb3lvIDIuNS4KClRo
YW5rcywKTWFudWVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwp0b21veW8tdXNlcnMtZW4gbWFpbGluZyBsaXN0CnRvbW95by11c2Vycy1lbkBsaXN0cy5v
c2RuLm1lCmh0dHBzOi8vbGlzdHMub3Nkbi5tZS9tYWlsbWFuL2xpc3RpbmZvL3RvbW95by11c2Vy
cy1lbgo=
