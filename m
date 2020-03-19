Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (gw0.osdn.jp [202.221.179.250])
	by mail.lfdr.de (Postfix) with ESMTP id 0839218BC4B
	for <lists+tomoyo-users-en@lfdr.de>; Thu, 19 Mar 2020 17:20:40 +0100 (CET)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 sf-lists.priv.osdn.jp
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=FREEMAIL_FROM,T_DKIM_INVALID
 autolearn=disabled version=3.4.2
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com
 [209.85.217.45]) by sf-lists.priv.osdn.jp (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Fri, 20 Mar 2020 01:20:38 +0900 (JST)
Received: by mail-vs1-f45.google.com with SMTP id y138so2052759vsy.0
 for <tomoyo-users-en@lists.osdn.me>; Thu, 19 Mar 2020 09:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=MJoUL4/S0lYnXceTzxgxPthzqX5CBpwVzLdqg4B7lIE=;
 b=SDruWfP1zoR+fdRF17Av6thRY1XuvlWBgqo+tcH6kSYTjNrQ9lwGB1iVIKCFcaxZXt
 F6Ta9SzgcYz5DOav6BRekWtVo9c5NH4s/Fumo1x18naC5Uo3fscMme/OJQEZjLZXFRHh
 GIeT8pdrbqkgB2x9XnjSLPJoxiXXTSfOByCm4oMiS5OH+4E/P/JNDfQgNrCxy4ZFTuBb
 vRKTRWFSXc5Rs2F9HhBSvsRU0kB7H6IX6NeM15/1yOvf/qVHHhOjaUsK7Bf/auhz6Xe5
 Emcn2YhQ2ihNB6ysH965ClC58nSjJUv/f8UgZzTtZ9rY7jKqmc+4Sjn8e/9t9Sz8s0y6
 aBvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=MJoUL4/S0lYnXceTzxgxPthzqX5CBpwVzLdqg4B7lIE=;
 b=XynkTy4uFz7/5SIuIeNJFmxCIFIhy8/urSwhyTG5R9FlfvKEarR2BKgxzrF7vTDc2e
 fmDd42Py3RebK0QQDJyEz8qxyu5NtTYwHiEF0Q5rUn/Y1McenqZf0GGTJlQcGOutvt7d
 ALRiVQKAuFZBnKz7Pvw3KpaP7qLnJZMLN1GLeLMFvTTebrZB4YJwRp7ONYOtfODRXNzW
 OJ6P3tzyqG1WAiA6d10wWp0vqmT7G9rYeCtn1WLX38qKVm+7eTz75Ms8Q9171uqrLLqO
 wp4JRszLgsqjcett1RPNo78OwjaW9kgj2zi93Q7Y3ior9f0xVF3yjrA1erW7Fm1vLquc
 7D2g==
X-Gm-Message-State: ANhLgQ3Jh1Y6s6T8Dy4kZqw8sUY2Ln5ShQiibxbNtesqzYvEmej4oWWI
 Z1O3OPNoUYpVcS5UBaLhT4KQ/3t6XD6MjINVwJdDPw==
X-Google-Smtp-Source: ADFU+vu4zhx8aOwcQoAjKkC5I80zxdXMK4UKzMHrdYlYj+7TXQx8kMlv2PPBFjK0ay8pP78n5EoTUO3QNyO2QVb/QG8=
X-Received: by 2002:a67:2ed2:: with SMTP id u201mr2821904vsu.209.1584634836528; 
 Thu, 19 Mar 2020 09:20:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAKSdS8LmFMvtWQ=chjLOODTyWtbtygkv5Jdt-xRCBeyjYHS8zw@mail.gmail.com>
In-Reply-To: <CAKSdS8LmFMvtWQ=chjLOODTyWtbtygkv5Jdt-xRCBeyjYHS8zw@mail.gmail.com>
From: Manuel Bessler <manuel.bessler@gmail.com>
Date: Thu, 19 Mar 2020 12:20:24 -0400
Message-ID: <CAKSdS8LKnUhZsX=Wi6fbU++WQCGOf-g60UvVtwcpBKTxUb1Bvg@mail.gmail.com>
To: tomoyo-users-en@lists.osdn.me
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.2/25756/Thu Mar 19 22:11:06 2020
Subject: [tomoyo-users-en   729] Re: exception policy: aggregator behavior
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

TmV2ZXIgbWluZCwgSSBmb3VuZCB0aGF0IHRoZSBzc2hkIHJ1bGUgd2FzIGVuZm9yY2luZyBidXQg
bWlzc2VkIGFuCidmaWxlIGV4ZWN1dGUnIGVudHJ5IGZvciAvYmluL2Jhc2gKCk9uIFRodSwgTWFy
IDE5LCAyMDIwIGF0IDEwOjI5IEFNIE1hbnVlbCBCZXNzbGVyCjxtYW51ZWwuYmVzc2xlckBnbWFp
bC5jb20+IHdyb3RlOgo+Cj4gSGksCj4KPiBJJ20gdHJ5aW5nIHRvIG1ha2UgdXNlIG9mIHRoZSBh
Z2dyZWdhdG9yIGZlYXR1cmUgYnV0IGVpdGhlciBJJ20KPiBtaXN1bmRlcnN0YW5kaW5nIGl0IG9y
IHVzaW5nIGl0IHdyb25nLi4uCj4KPiBGb3IgZXhhbXBsZSBJIHdvdWxkIGxpa2UgdG8gdHJlYXQg
L2Jpbi9iYXNoLCAvYmluL2Rhc2gsIGFuZCAvYmluL3NoCj4gdGhlIHNhbWUsIGJvdGggZm9yIHNo
ZWxsIHNjcmlwdHMgYW5kIGVzcC4gZm9yIGludGVyYWN0aXZlIHNoZWxscy4KPiBTbyBJIHB1dCB0
aGlzIGludG8gbXkgZXhjZXB0aW9uIHBvbGljeToKPiBhZ2dyZWdhdG9yIC9iaW4vYmFzaCAvYmlu
L3NoCj4gYWdncmVnYXRvciAvYmluL2Rhc2ggL2Jpbi9zaAo+Cj4gQW5kIGluIG15IGRvbWFpbiBw
b2xpY3kgcmVmZXJlbmNlIHRoaW5ncyBqdXN0IGJlIGJ5IC9iaW4vc2gsIGVnOgo+IDxrZXJuZWw+
IC91c3Ivc2Jpbi9zc2hkIC9iaW4vc2gKPiA8a2VybmVsPiAvYmluL3NoIC91c3IvYmluL3N1ZG8g
L2Jpbi9zaAo+IDxrZXJuZWw+IC9iaW4vc2gKPgo+IEkgd2FzIGhvcGluZyB0aGF0IHdvdWxkIHdv
cmsgd2hldGhlciBhIHVzZXIncyBzaGVsbCBpcyBiYXNoLCBkYXNoLCBvciBzaC4KPiBIb3dldmVy
LCBpdCBkb2VzIG5vdCB3b3JrLCBzc2gnaW5nIGluIGFzIGEgdXNlciB3aXRoIHNoZWxsIC9iaW4v
YmFzaAo+IGlzIG5vdCBhbGxvd2VkIHVudGlsIEkgZXhwbGljaXRseSBhbGxvdwo+IDxrZXJuZWw+
IC91c3Ivc2Jpbi9zc2hkIC9iaW4vYmFzaAo+Cj4gSSdtIHVzaW5nIFRvbW95byAyLjUuCj4KPiBU
aGFua3MsCj4gTWFudWVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwp0b21veW8tdXNlcnMtZW4gbWFpbGluZyBsaXN0CnRvbW95by11c2Vycy1lbkBsaXN0
cy5vc2RuLm1lCmh0dHBzOi8vbGlzdHMub3Nkbi5tZS9tYWlsbWFuL2xpc3RpbmZvL3RvbW95by11
c2Vycy1lbgo=
