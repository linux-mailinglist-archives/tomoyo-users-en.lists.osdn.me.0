Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id 9190197237C
	for <lists+tomoyo-users-en@lfdr.de>; Mon,  9 Sep 2024 22:18:37 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id 21A0D144E8D;
	Tue, 10 Sep 2024 05:18:36 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id 656AC144E70
 for <tomoyo-users-en@lists.osdn.me>; Tue, 10 Sep 2024 05:18:35 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=T_DKIM_INVALID
 autolearn=disabled version=3.4.2
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com
 [209.85.128.169]) by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Tue, 10 Sep 2024 05:18:35 +0900 (JST)
Received: by mail-yw1-f169.google.com with SMTP id
 00721157ae682-6db449f274fso35256897b3.2
 for <tomoyo-users-en@lists.osdn.me>; Mon, 09 Sep 2024 13:18:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore.com; s=google; t=1725913115; x=1726517915; darn=lists.osdn.me;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CcszTB3xWQWU9WxKt8ijDXvzGMr0WMOou1WzUjCJso8=;
 b=MeABqDFCs3lE+0E84NSDXBbmu50tN0t9KAel2XDabubms7FOYPJK5WH5Ms+tmjICGm
 Ozoo8g2YcK0ejjZ96OuOW7fIP3Wm+6qZKI8FdRqgzsgINFUGTYS7dgc9ZDscAG6Z4ra3
 CNU1oj3ve9efKhePi/bT4hTDo5bwzBnYSTu9a3Oo9fu63j7NKMijh2GfLZHUwRomf1/I
 zuesAMTnRIxZKZ9B8p7otanNCkkOu5e779vis+QDPBQPJdIkeDSR/mNUJEiG0+uaH0Ag
 K5F+pNikoy7xw4ePp0Cl+ZqaTj4BbwnNyAs9YCaxuW0+pQJuO7YPBTiEhZ5MzHF+axKh
 0LoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725913115; x=1726517915;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=CcszTB3xWQWU9WxKt8ijDXvzGMr0WMOou1WzUjCJso8=;
 b=emXZgFh47CVjW3U6X0rGLw1pfMsURVjmGFu2hM3SOgrhk+gwF/lQlHNXVlh15Egd5d
 /nS32VbMiIo01mZl+ZQSbtjOZ3Q1CiLtpRC0LWptlYq5gtvsWFjYQi35NvvdsuiqW0P1
 Per9XoX0C/tyBLRoY7hnh0BgXrjfSO6JJdAihscCQ5pEJbWhOO4LMvVN73cULckSVrf6
 fk2KPZTBvxo1POYk/7sJbgXTMaktB7zcHf6dA0r9Jr8/L5BMSnTi/rk74vPYNA5lsfsE
 pmKf6E5DL7YFXonDgXYj6Ha4gr67yRxn1zWEeFrS/QFGhZ2xawUIxJwk/zuvHv69ARuP
 wC1A==
X-Forwarded-Encrypted: i=1;
 AJvYcCVW+kCIu1ilhTaXiW7ypZdJbeMqZ37dBQ3mIe9IP9UZYSDIDgmeNyxuAbNgpq4+0/XP4fsXB6Qa4dZ4MHUcsic=@lists.osdn.me
X-Gm-Message-State: AOJu0YyjgacU4ZSMTsdvvNtNN7LV+hhznYQ+tlusVI94+R9pgjBu6r4T
 ksMTvvQ14z/R2wqo8xbYAxF38b0AvAdGrdYqRBOs2VeUb1cUwmBC62DWDkmEXpxuHqCTSvetcyy
 ifOpIYLJxikh8nAuorJTzimNk9+f1FgCm9NNy
X-Google-Smtp-Source: AGHT+IHc4L6JkqeFSBB9BK6rAsGL3YeNds05C7S+maiUQFeSVRh+xQunmNUj1DuCD0ouJglzxHFEDUTi5DIW1HiKjR0=
X-Received: by 2002:a05:690c:102:b0:6d3:d842:5733 with SMTP id
 00721157ae682-6db4516beb6mr137303177b3.35.1725913114540; Mon, 09 Sep 2024
 13:18:34 -0700 (PDT)
MIME-Version: 1.0
References: <caafb609-8bef-4840-a080-81537356fc60@I-love.SAKURA.ne.jp>
 <CAHC9VhT_eBGJq5viU8R_HVWT=BTcxesWAi3nLcMgG8NfswKesA@mail.gmail.com>
 <d16cd3d1-4b32-487e-b116-419c19941472@I-love.SAKURA.ne.jp>
 <CAHC9VhRdQAoiKMVVUiDyCbEd4EDL9ppH3V4xRGhoOoFmHFy8nQ@mail.gmail.com>
 <d1e5b74a-5161-4906-96eb-4987ff440d19@I-love.SAKURA.ne.jp>
In-Reply-To: <d1e5b74a-5161-4906-96eb-4987ff440d19@I-love.SAKURA.ne.jp>
From: Paul Moore <paul@paul-moore.com>
Date: Mon, 9 Sep 2024 16:18:23 -0400
Message-ID: <CAHC9VhRuG5V=ccdH6Ti-2+KhU7brnh+TQ-iqNrpJNY-jJN79Mw@mail.gmail.com>
To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
Subject: [tomoyo-users-en 767] Re: [PATCH] LSM: allow loadable kernel module
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

T24gU2F0LCBTZXAgNywgMjAyNCBhdCA2OjE04oCvQU0gVGV0c3VvIEhhbmRhCjxwZW5ndWluLWtl
cm5lbEBpLWxvdmUuc2FrdXJhLm5lLmpwPiB3cm90ZToKPiBPbiAyMDI0LzA5LzA2IDIzOjI0LCBQ
YXVsIE1vb3JlIHdyb3RlOgo+ID4gT24gRnJpLCBTZXAgNiwgMjAyNCBhdCAzOjQz4oCvQU0gVGV0
c3VvIEhhbmRhCj4gPiA8cGVuZ3Vpbi1rZXJuZWxAaS1sb3ZlLnNha3VyYS5uZS5qcD4gd3JvdGU6
Cj4gPj4gSWYgeW91IGlnbm9yZSBteSBjb25jZXJuLCBJIGhhdmUgdG8gTkFDSyB0aGUgc3RhdGlj
IGNhbGwgY2hhbmdlcyB5b3UgYXJlCj4gPj4gZ29pbmcgdG8gc2VuZCBpbiB0aGUgdXBjb21pbmcg
bWVyZ2Ugd2luZG93Lgo+ID4KPiA+IEknbSBub3QgaWdub3JpbmcgeW91ciBjb25jZXJuLCBJJ3Zl
IHJlc3BvbmRlZCB0byB5b3VyIGVtYWlscyBhbmQKPiA+IHBhdGNoZXMgb24gdGhlIHRvcGljIG92
ZXIsIGFuZCBvdmVyLCBhbmQgb3ZlciwgYW5kIG92ZXIgYWdhaW4gYnkKPiA+IHRyeWluZyB0byBl
eHBsYWluIHRvIHlvdSB0aGF0IHlvdXIgZ29hbCBvZiBzdXBwb3J0aW5nIG91dC1vZi10cmVlIExT
TXMKPiA+IHJlZ2FyZGxlc3Mgb2YgdGhlIGltcGFjdCB0byB0aGUgdXBzdHJlYW0gTFNNIGVmZm9y
dCBpcyBub3Qgc29tZXRoaW5nCj4gPiB0aGF0IGlzIGFjY2VwdGFibGUgdG8gdGhlIHVwc3RyZWFt
IExTTSBlZmZvcnQsIG9yIHRoZSBMaW51eCBrZXJuZWwgaW4KPiA+IGdlbmVyYWwuCj4KPiBJIHdh
bnQgTEtNLWJhc2VkIExTTSBzdXBwb3J0IGluIG9yZGVyIHRvIGFsbG93IG9uZSBvZiBpbi10cmVl
IExTTXMgKG5hbWVseQo+IFRPTU9ZTykgdG8gYmUgZGVsaXZlcmVkIHRvIG15IGludGVuZGVkIHVz
ZXJzIC4uLgoKQXMgZGlzY3Vzc2VkIG1hbnkgdGltZXMgYWxyZWFkeSwgdGhlIHNvbHV0aW9uIHRv
IGluLXRyZWUgTFNNcyBub3QKYmVpbmcgZW5hYmxlZCBpcyB0byBzaW1wbHkgZW5hYmxlIHRoZW0g
aW4gYSBrZXJuZWwgZm9yIHlvdXIgdXNlcnMuICBJZgp5b3VyIHVzZXJzIGFyZSBsaW1pdGVkIHRv
IGEgc3BlY2lmaWMga2VybmVsIGNvbmZpZ3VyYXRpb24gZHVlIHRvCmRpc3RybyBzdXBwb3J0IGlz
c3Vlcy9jb250cmFjdHMsIHRoYXQgaXMgYSBwcm9ibGVtIHlvdSBuZWVkIHRvIGFkZHJlc3MKd2l0
aCB0aGUgcmVsZXZhbnQgZGlzdHJpYnV0aW9uLiAgSWYgdGhlIGRpc3RyaWJ1dGlvbiBpcyB1bndp
bGxpbmcgdG8KYWx0ZXIgdGhlaXIga2VybmVsIGNvbmZpZ3VyYXRpb24gdG8gc3VpdCB5b3VyIG5l
ZWRzLCBvciB5b3VyIHVzZXJzLAp0aGF0IHN0aWxsIGRvZXMgbm90IG1ha2UgdGhpcyBhbiB1cHN0
cmVhbSBwcm9ibGVtLCBpdCBpcyBhIHByb2JsZW0KYmV0d2VlbiB5b3UsIHlvdXIgdXNlcnMsIGFu
ZCB0aGUgZGlzdHJpYnV0aW9uLgoKPiBBZGRpbmcgTmFja2VkLWJ5OiBsaW5lcyBpcyBub3QgYW4g
aW5kdWxnZW5jZSBmb3IgaWdub3JpbmcgbXkgY29uY2VybnMuCgpBZGRpbmcgTkFDS3MsIGp1c3Qg
bGlrZSBhZGRpbmcgQUNLcyBvciBhbnkgb3RoZXIgcGF0Y2ggbWV0YWRhdGEsIGlzIG15CnJlc3Bv
bnNpYmlsaXR5LCBub3RoaW5nIG1vcmUsIG5vdGhpbmcgbGVzcy4KCj4gQ29tbWl0IGYzYjg3ODhj
ZGU2MSAoIkxTTTogSWRlbnRpZnkgbW9kdWxlcyBieSBtb3JlIHRoYW4gbmFtZSIpIGlzIGFuIGV4
YW1wbGUKPiB5b3UgYWRkZWQgTmFja2VkLWJ5OiBsaW5lIHdpdGhvdXQgYWRkaW5nIGhpbnRzIGZv
ciB3aHkgSSBuYWNrZWQgaXQgKGUuZy4KPiBsaW5rcyB0byBteSBwb3N0cykuCgpQbGVhc2Ugc2Vl
IHRoZSBhc3NvY2lhdGVkIHB1bGwgcmVxdWVzdCBlbWFpbCBJIHNlbnQgdG8gTGludXMgd2hlcmUg
SQp3cm90ZSBzZXZlcmFsIHNlbnRlbmNlcyBhYm91dCB5b3VyIG9iamVjdGlvbnM6CgpodHRwczov
L2xvcmUua2VybmVsLm9yZy9saW51eC1zZWN1cml0eS1tb2R1bGUvM2Y1YTdiYzQ2N2QyMjE1NDM0
NDRhMjY4ZGQxYTFmZTBAcGF1bC1tb29yZS5jb20KCiJTdXBwb3J0IGFtb25nc3QgdGhlIGluZGl2
aWR1YWwgTFNNIGRldmVsb3BlcnMgaGFzIGJlZW4gbmVhcmx5CnVuYW5pbW91cywgd2l0aCBhIHNp
bmdsZSBvYmplY3Rpb24gY29taW5nIGZyb20gVGV0c3VvIChUT01PWU8pIGFzIGhlCmlzIHdvcnJp
ZWQgdGhhdCB0aGUgTFNNX0lEX1hYWCB0b2tlbiBjb25jZXB0IHdpbGwgbWFrZSBpdCBtb3JlCmRp
ZmZpY3VsdCBmb3Igb3V0LW9mLXRyZWUgTFNNcyB0byBzdXJ2aXZlLiAgU2V2ZXJhbCBtZW1iZXJz
IG9mIHRoZSBMU00KIGNvbW11bml0eSBoYXZlIGRlbW9uc3RyYXRlZCB0aGUgYWJpbGl0eSBmb3Ig
b3V0LW9mLXRyZWUgTFNNcyB0bwpjb250aW51ZSB0byBleGlzdCBieSBwaWNraW5nIGhpZ2gvdW51
c2VkIExTTV9JRCB2YWx1ZXMgYXMgd2VsbCBhcwpwb2ludGluZyBvdXQgdGhhdCBtYW55IGtlcm5l
bCBBUElzIHJlbHkgb24gaW50ZWdlciBpZGVudGlmaWVycywgZS5nLgpzeXNjYWxscyAoISksIGJ1
dCB1bmZvcnR1bmF0ZWx5IFRldHN1bydzIG9iamVjdGlvbnMgcmVtYWluLiAgTXkKcGVyc29uYWwg
b3BpbmlvbiBpcyB0aGF0IHdoaWxlIEkgaGF2ZSBubyBpbnRlcmVzdCBpbiBwZW5hbGl6aW5nCm91
dC1vZi10cmVlIExTTXMsIEknbSBub3QgZ29pbmcgdG8gcGVuYWxpemUgaW4tdHJlZSBkZXZlbG9w
bWVudCB0bwpzdXBwb3J0IG91dC1vZi10cmVlIGRldmVsb3BtZW50LCBhbmQgSSB2aWV3IHRoaXMg
YXMgYSBuZWNlc3Nhcnkgc3RlcApmb3J3YXJkIHRvIHN1cHBvcnQgdGhlIHB1c2ggZm9yIGV4cGFu
ZGVkIExTTSBzdGFja2luZyBhbmQgcmVkdWNlIG91cgpyZWxpYW5jZSBvbiAvcHJvYyBhbmQgL3N5
cyB3aGljaCBoYXMgb2NjYXNzaW9uYWxseSBiZWVuIHByb2JsZW1hdGljCmZvciBzb21lIGNvbnRh
aW5lciB1c2Vycy4iCgpVbmxlc3MgeW91IHByZXNlbnQgYW55IG5ldyBpZGVhcyBpbiB0aGlzIHRo
cmVhZCwgd2hpY2ggSSBjb25zaWRlcgpoaWdobHkgdW5saWtlbHkgYXQgdGhpcyBwb2ludCwgdGhp
cyB3aWxsIGJlIG15IGxhc3QgZW1haWwgdG8geW91IGluCnRoaXMgdGhyZWFkLiAgQXMgbWVudGlv
bmVkIHByZXZpb3VzbHksIGlmIHlvdSB3b3VsZCBsaWtlIHRvIHNlZSB5b3VyCk5BQ0sgcmVjb3Jk
ZWQgaW4gdGhlIHN0YXRpYyBjYWxsIHBhdGNoLCBsZXQgbWUga25vdy4KCi0tIApwYXVsLW1vb3Jl
LmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdG9t
b3lvLXVzZXJzLWVuIG1haWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMub3Nkbi5tZQpo
dHRwczovL2xpc3RzLm9zZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNlcnMtZW4K
