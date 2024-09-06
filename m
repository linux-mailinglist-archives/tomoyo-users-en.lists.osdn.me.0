Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id 8E56596F698
	for <lists+tomoyo-users-en@lfdr.de>; Fri,  6 Sep 2024 16:24:43 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id B0E89144E72;
	Fri,  6 Sep 2024 23:24:42 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id 73C08144B81
 for <tomoyo-users-en@lists.osdn.me>; Fri,  6 Sep 2024 23:24:41 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=T_DKIM_INVALID
 autolearn=disabled version=3.4.2
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com
 [209.85.128.171]) by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Fri,  6 Sep 2024 23:24:41 +0900 (JST)
Received: by mail-yw1-f171.google.com with SMTP id
 00721157ae682-6d6e2b2fbc4so20124387b3.0
 for <tomoyo-users-en@lists.osdn.me>; Fri, 06 Sep 2024 07:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore.com; s=google; t=1725632681; x=1726237481; darn=lists.osdn.me;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VNbaUU5vwP/wbzjKIGwlz0vt3Em9od+pl2HUlcVAsXU=;
 b=JxyaKgj6JRVKYmv8uxq5li7MW42zLSpsfzR++mV0MUxpHDY41Ko9B2QIflRMlfprUI
 HY/QaFh+2THm4lAj+zWWBJnFcHZXPZgE7gYDZVMFS2B5Ixbtvp26/s+O8AAFiQvHVMjj
 aNal6aRsP42zVnVmH/9QWnpe78oruoGv6wUr+VLjQUnpFlTXnIzZfc1ufSSud3xhpAXa
 hvm48kOygRpB+i2WmSjTHfzWEpHA6cCBg2fvf6GIg5jsK10N5mgY9ES8xlQo+PLS340p
 tmDdgwrNvduq9uazgq91ncDiS+63JOnhMeNqkTNNEoQU2iscLc9q3CV98qMbs3lUlUcE
 w5wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725632681; x=1726237481;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=VNbaUU5vwP/wbzjKIGwlz0vt3Em9od+pl2HUlcVAsXU=;
 b=fpsg/vWyDvao0rZvbzYfxuKzSkG4RwksFWCnBhoeDtzXct3lUzygyYacYhAAii3ugD
 cUow2bniLQ/HjmaYOBrX3kQuxHswuhknSyRJb9ZxP7G3G3K6LrQRNiCv7rAW7zzyG9+p
 ENKxBQBE+eMUMZs5IMx43NUxJz+2n7NfbUSHDS73950Qd0JO0QPFPWFsxhP9qSE3L9vS
 /3/NXvEr0hA0EgjFqFqnyLPsSUbDAg4e6i2dWFsCOiSVNv0tmB02IcUesEhbc34BLBmY
 PjAj+bBV5+ccogKfMUN6JwLtwdg6wMvr7VUokG3XlTHPttKwxQ8P6/xY/FJ8iVfAU0Dk
 59SA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUIjtnkyoI0M+PXl71WNhcqXFXCeM8PTmS8UmN119T2AI7ZgXJkytpxH6Bi5iyL19OIoJ6IV1vmEPTgAsjCVSk=@lists.osdn.me
X-Gm-Message-State: AOJu0YyQPoOiLbl6T+ziQOfp/wcOHVP8C4cxSNYK0XO/y69OjpGKCuV5
 2dibXnfDXxICr9RY/aCpwzWxLJGg4Q/1+UrqLx84KdPD+MowHx1R3IzHRWuydEeibz6oAzjencO
 qChxPOAjhdLxRCiVxqT917YEycVE5P4iKd+vB
X-Google-Smtp-Source: AGHT+IHkwUfgBd2GCUq4Ewk11aR7nvtoUcy0CcLvqAJSfxsI0EpdJKKQsnFEMsEDRxPJNpbCavId6DYQUks2DIdCYS4=
X-Received: by 2002:a05:690c:4604:b0:6ae:2f25:8bc4 with SMTP id
 00721157ae682-6db44f2c242mr27205497b3.16.1725632680764; Fri, 06 Sep 2024
 07:24:40 -0700 (PDT)
MIME-Version: 1.0
References: <caafb609-8bef-4840-a080-81537356fc60@I-love.SAKURA.ne.jp>
 <CAHC9VhT_eBGJq5viU8R_HVWT=BTcxesWAi3nLcMgG8NfswKesA@mail.gmail.com>
 <d16cd3d1-4b32-487e-b116-419c19941472@I-love.SAKURA.ne.jp>
In-Reply-To: <d16cd3d1-4b32-487e-b116-419c19941472@I-love.SAKURA.ne.jp>
From: Paul Moore <paul@paul-moore.com>
Date: Fri, 6 Sep 2024 10:24:30 -0400
Message-ID: <CAHC9VhRdQAoiKMVVUiDyCbEd4EDL9ppH3V4xRGhoOoFmHFy8nQ@mail.gmail.com>
To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
Subject: [tomoyo-users-en 764] Re: [PATCH] LSM: allow loadable kernel module
 based LSM modules
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
Cc: tomoyo-dev-en@lists.osdn.me,
 linux-security-module <linux-security-module@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, tomoyo-users-en@lists.osdn.me,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

T24gRnJpLCBTZXAgNiwgMjAyNCBhdCAzOjQz4oCvQU0gVGV0c3VvIEhhbmRhCjxwZW5ndWluLWtl
cm5lbEBpLWxvdmUuc2FrdXJhLm5lLmpwPiB3cm90ZToKPiBPbiAyMDI0LzA5LzA0IDIzOjIzLCBQ
YXVsIE1vb3JlIHdyb3RlOgo+ID4gT24gV2VkLCBTZXAgNCwgMjAyNCBhdCAzOjEw4oCvQU0gVGV0
c3VvIEhhbmRhCj4gPiA8cGVuZ3Vpbi1rZXJuZWxAaS1sb3ZlLnNha3VyYS5uZS5qcD4gd3JvdGU6
CgouLi4KCj4gSWYgeW91IGlnbm9yZSBteSBjb25jZXJuLCBJIGhhdmUgdG8gTkFDSyB0aGUgc3Rh
dGljIGNhbGwgY2hhbmdlcyB5b3UgYXJlCj4gZ29pbmcgdG8gc2VuZCBpbiB0aGUgdXBjb21pbmcg
bWVyZ2Ugd2luZG93LgoKSSdtIG5vdCBpZ25vcmluZyB5b3VyIGNvbmNlcm4sIEkndmUgcmVzcG9u
ZGVkIHRvIHlvdXIgZW1haWxzIGFuZApwYXRjaGVzIG9uIHRoZSB0b3BpYyBvdmVyLCBhbmQgb3Zl
ciwgYW5kIG92ZXIsIGFuZCBvdmVyIGFnYWluIGJ5CnRyeWluZyB0byBleHBsYWluIHRvIHlvdSB0
aGF0IHlvdXIgZ29hbCBvZiBzdXBwb3J0aW5nIG91dC1vZi10cmVlIExTTXMKcmVnYXJkbGVzcyBv
ZiB0aGUgaW1wYWN0IHRvIHRoZSB1cHN0cmVhbSBMU00gZWZmb3J0IGlzIG5vdCBzb21ldGhpbmcK
dGhhdCBpcyBhY2NlcHRhYmxlIHRvIHRoZSB1cHN0cmVhbSBMU00gZWZmb3J0LCBvciB0aGUgTGlu
dXgga2VybmVsIGluCmdlbmVyYWwuCgpJJ3ZlIGFscmVhZHkgcmVjb3JkZWQgeW91ciBOQUNLIG9u
IHNldmVyYWwgcGF0Y2hlcyBvbiB0d28gb2YgdGhlIGZvdXIKc3RhdGljIGNhbGwgY29tbWl0cywg
aWYgeW91IGxpa2UgSSBjYW4gYWRkIGl0IHRvIHRoZSBvdGhlciB0d28gcGxlYXNlCmxldCBtZSBr
bm93IGFuZCBJJ2xsIGJlIHN1cmUgdG8gZG8gdGhhdC4gIEkndmUgcmVjb3JkZWQgeW91ciBOQUNL
cyBvbgpvdGhlciBwYXRjaGVzIGluIHRoZSBwYXN0IGFuZCBtZW50aW9uZWQgdGhvc2UgTkFDS3Mg
dG8gTGludXMgd2hlbgpzZW5kaW5nIHRoZSBwdWxsIHJlcXVlc3QsIGFuZCBJIHdpbGwgZG8gc28g
YWdhaW4gZHVyaW5nIHRoaXMgdXBjb21pbmcKbWVyZ2Ugd2luZG93LgoKLS0gCnBhdWwtbW9vcmUu
Y29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0b21v
eW8tdXNlcnMtZW4gbWFpbGluZyBsaXN0CnRvbW95by11c2Vycy1lbkBsaXN0cy5vc2RuLm1lCmh0
dHBzOi8vbGlzdHMub3Nkbi5tZS9tYWlsbWFuL2xpc3RpbmZvL3RvbW95by11c2Vycy1lbgo=
