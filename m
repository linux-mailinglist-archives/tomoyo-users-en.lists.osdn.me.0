Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (gw0.osdn.jp [202.221.179.250])
	by mail.lfdr.de (Postfix) with ESMTP id 81A3618B949
	for <lists+tomoyo-users-en@lfdr.de>; Thu, 19 Mar 2020 15:21:52 +0100 (CET)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 sf-lists.priv.osdn.jp
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=FREEMAIL_FROM,T_DKIM_INVALID
 autolearn=disabled version=3.4.2
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com
 [209.85.222.45]) by sf-lists.priv.osdn.jp (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Thu, 19 Mar 2020 23:21:47 +0900 (JST)
Received: by mail-ua1-f45.google.com with SMTP id b2so829560uas.13
 for <tomoyo-users-en@lists.osdn.me>; Thu, 19 Mar 2020 07:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=+t4gX6nNYhk3hyqHPAPsFTljywcz1MP+B3b0wVLt9aQ=;
 b=mSHL43x1c6UKqEf6Uz/cCwTlssqzbX0ArNzV1c7pVHiX56RNX0x6xe9wUeC2W/T0ig
 vnScYaPP5TOVtKHVbdoP/LJfydLdnp/6L2oD8bhf/5IhGJOkasmARCdPgq7sFxx0OPRP
 md4PW9tUVmlxlicWtcPA2vsLhKDdg9FS+lgce4l4aZXlPhPb7CvMs34iq1RPiNXDq7rm
 RZk9dLjvqmAxGIozUZrt77wz1pFZzQ/NkCGa39lwB5RLCqxhzkXLhx0HdKtn8pDzuVJs
 lqk9Tl+3aj6cbrkT+qBTpJDh19enoxg5bWesB1N5r/U4I5zOL6/SS7Ea1S4fGWheFICy
 Wbjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=+t4gX6nNYhk3hyqHPAPsFTljywcz1MP+B3b0wVLt9aQ=;
 b=SHpl3YxZiDvnOXly1r2sH0w+IwDQ6FYU1UR44W4q9idSKw68U+qDjNxXD03YA3Xd6h
 yT9mwizxho2IvWt5rvg9gK2qeqD5h5/fnzr5Yjfn3EuyxGCer/B5VeUrOTOp+g6QOWKn
 GV6wS9eF3QVCu4HELXg2psxQ12Z65s6tH8AuPYOyj9mhn/NKUX3F34VkG0Bl3SS3//WB
 Tw0zVa2M3Hg68GAxLFJWBBqXBgWsB+tQ2b5v2NIkz0nbleVe5iZ2ATMIRYbHQ04etbFD
 aYu0bFrXBm1ecPmgE8bli5Yp2j6lAFU3gxxWsRGs0+aOZ1qIgwa/pPQ85k61kN2fY93N
 W2wQ==
X-Gm-Message-State: ANhLgQ1BG3HMy9njjzW1emvLdtpaGvX6cUtU/fcSLfNwO/JXIYGBrnjf
 ojbk/vYwv7v7KJydRb9ttCnjJqS28qp/MmUr8dphbA==
X-Google-Smtp-Source: ADFU+vs67lMDkOOdqVbog2tNqCL85KTKqiTaIwdZBbU6B8YUMOsHu7J6Se6l16eqx9/bWWWJ9sIep44wAAUj1xZm4pI=
X-Received: by 2002:ab0:7792:: with SMTP id x18mr1986067uar.116.1584627706138; 
 Thu, 19 Mar 2020 07:21:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAKSdS8LsdbQT7CfRSkDRYQ_5wKOH4Aj8euZ9+e5ZBqSZyO+SZA@mail.gmail.com>
 <a7c70b14-cfd0-b007-b0c7-c075237aaccc@i-love.sakura.ne.jp>
In-Reply-To: <a7c70b14-cfd0-b007-b0c7-c075237aaccc@i-love.sakura.ne.jp>
From: Manuel Bessler <manuel.bessler@gmail.com>
Date: Thu, 19 Mar 2020 10:21:34 -0400
Message-ID: <CAKSdS8Ka1_eoRdiUbFDa=GdQfwbZSg4mvCbt8dE8=VphugMXSg@mail.gmail.com>
To: tomoyo-users-en@lists.osdn.me
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.2/25756/Thu Mar 19 22:11:06 2020
Subject: [tomoyo-users-en 727] Re: domain_policy output from learning mode
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

T24gU2F0LCBNYXIgMTQsIDIwMjAgYXQgNjoyMiBBTSBUZXRzdW8gSGFuZGEKPHBlbmd1aW4ta2Vy
bmVsQGktbG92ZS5zYWt1cmEubmUuanA+IHdyb3RlOgo+IE9uIDIwMjAvMDMvMTQgMTo0OSwgTWFu
dWVsIEJlc3NsZXIgd3JvdGU6Cj4gPiAyLiBUaGVyZSB3YXMgYSBwYXRjaCB0byBjY3MtcGF0Y2gg
aW4gMjAxNSBhZGRpbmcgc3VwcG9ydCBmb3IgbXVsdGlwbGUgdXNlX2dyb3VwIDxuPiBwZXIgZG9t
YWluLgo+ID4gICAgIERpZCB0aGlzIGV2ZXIgbWFrZSBpdCBpbnRvIFRvbW95bz8gRnJvbSBhIHF1
aWNrIGdsYW5jZSwgaXQgZG9lc24ndCBsb29rIGxpa2UgaXQsIGJ1dAo+ID4gICAgIEkgd2FudGVk
IHRvIG1ha2Ugc3VyZSBiZWZvcmUgSSBnZXQgZGVlcCBpbnRvIHBvbGljeSB3cml0aW5nLgo+Cj4g
SWYgeW91IGFyZSB0YWxraW5nIGFib3V0IFRPTU9ZTyAyLngsIGl0IGlzIGF2YWlsYWJsZSBpbiBU
T01PWU8gMi42IChMaW51eCA1LjEgYW5kIGxhdGVyKS4KPiBJZiB5b3UgYXJlIHRhbGtpbmcgYWJv
dXQgVE9NT1lPIDEueCwgaXQgaXMgYXZhaWxhYmxlIGluIFRPTU9ZTyAxLjggKExpbnV4IDIuNC4z
NyAvIDIuNi4yNyBhbmQgbGF0ZXIpLgoKVGhhbmtzLCBJIHdpbGwga2VlcCB0aGF0IGluIG1pbmQu
Cgo+ID4gSSB3YXMgYWxzbyB3b25kZXJpbmcgaWYgdGhlcmUgd2FzIGEgcGxhY2UgKGllLiBnaXRo
dWIgcmVwbykgd2hlcmUgZXhhbXBsZQo+ID4gcG9saWNpZXMgZm9yIGNvbW1vbiBwcm9ncmFtcyBh
cmUga2VwdD8KPgo+IE5vLiBTaW5jZSBJJ20gbm90IGEgbWVtYmVyIG9mIExpbnV4IGRpc3RyaWJ1
dGlvbnMsIEkgY2FuJ3QgYWZmb3JkIHByb3ZpZGluZwo+IHJlYWR5LW1hZGUgcG9saWNpZXMuIENv
bnRyaWJ1dGlvbnMgZnJvbSB1c2VycyBhcmUgd2VsY29tZWQuCj4gPgo+ID4gRm9yIGV4YW1wbGUs
IHRvIHJ1biBOZ2lueCB3ZWJzZXJ2ZXIsIHRoZXJlIGFyZSBmZXcgdGhpbmdzIHRoYXQgYXJlIGNv
bW1vbgo+ID4gYWNyb3NzIGFsbCBpbnN0YWxscyB0aGF0IHdvdWxkIG1ha2UgaXQgcG9zc2libGUg
dG8gcmV1c2UsIGFuZCB0aHVzIG9uZSBkb2VzCj4gPiBub3QgaGF2ZSB0byBzdGFydCBmcm9tIHNj
cmF0Y2guLi4KPgo+IFlvdSBjYW4gcHVibGlzaCB0aGVtIGluIHlvdXIgcmVwb3NpdG9yaWVzLgoK
VGhpcyBpcyB3aHkgSSB3YXMgaG9waW5nIGZvciBhIGNlbnRyYWwgcGxhY2UgdG8gY29udHJpYnV0
ZSBhbmQgY29sbGVjdAp0aGVzZS4gSWYgZXZlcnlvbmUgcHV0IHRoZW0gaW4gbXkgb3duIHJlcG8s
IGl0J2xsIGJlIGhhcmRlciB0byBmaW5kCmNvbnRyaWJ1dGlvbnMgZnJvbSBtdWx0aXBsZSBmb2xr
cy4KClRoYW5rcywKTWFudWVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwp0b21veW8tdXNlcnMtZW4gbWFpbGluZyBsaXN0CnRvbW95by11c2Vycy1lbkBs
aXN0cy5vc2RuLm1lCmh0dHBzOi8vbGlzdHMub3Nkbi5tZS9tYWlsbWFuL2xpc3RpbmZvL3RvbW95
by11c2Vycy1lbgo=
