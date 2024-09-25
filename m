Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id 0FA51985C94
	for <lists+tomoyo-users-en@lfdr.de>; Wed, 25 Sep 2024 14:50:06 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id D5576144ECD;
	Wed, 25 Sep 2024 21:50:04 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id A44EF144EBC
 for <tomoyo-users-en@lists.osdn.me>; Wed, 25 Sep 2024 21:50:03 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=FREEMAIL_FROM,T_DKIM_INVALID
 autolearn=disabled version=3.4.2
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50]) by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Wed, 25 Sep 2024 21:50:03 +0900 (JST)
Received: by mail-lf1-f50.google.com with SMTP id
 2adb3069b0e04-5365d3f9d34so6950461e87.3
 for <tomoyo-users-en@lists.osdn.me>; Wed, 25 Sep 2024 05:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1727268603; x=1727873403; darn=lists.osdn.me;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=kyexOjK4t4+icAZ3KrLZwvDy8q8cKnhN5qL20Xf6xns=;
 b=CecdgHr1SK9+44Or+/GEcGs4buCNg63GVNncQqAC9WTh5RuF4o71qIWVp07HrT5ldh
 hjnIEpHMSl3i/+ev+Ir/kej5xA6CG4Ir/fAHzxL0dwAWTKMGz2N2ttim+cffPE0CGTeD
 6ZuyRDlszaOSBxR9XldQtap6WE5fsGs5H1JEWjLgnbI0Mnq4AyStgKrFo035dC61jLt+
 BB2e0g4O4gNtU1aC0ty7g2vX8KZernOCHtcSqDQRXizU1RQ+mcLr5nqs7wPs7nZaPBwK
 jeFyR+fYeg6aiJIVposL47BvKjHYvsgl6/Tf4Rg99CKA7ZFAkavHA0NAyNggcDCCKP65
 0vtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727268603; x=1727873403;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=kyexOjK4t4+icAZ3KrLZwvDy8q8cKnhN5qL20Xf6xns=;
 b=RGLfqU+gZUF+cMPHVlTEwWfUt47A6qMfuTR0UMTRmIuPJwl55eO3V6Mdr8wXA1yI55
 cL75fS3z6zJhRVOM98SSDAFMybu4/zdVGrE0zsHk07d5WNZ62KPqHd/1TtpX0GWfDOZ8
 d53IeEbG6TEdrdzgbq93/yUddzFelzdoTJXlEfAJ6/CKyICgBgz0YgcB+M1JMn6A+bUM
 vs0Pfz4TrTsAspx5EQ/nfXP/tE618jWJhEzcLBVVQD8/p+STVCS8Zy+OwEzQkRE53bIc
 GXwNYVzGl9pT8TnkUi8kLntUqb1dVWja0uE7woIqYtZ2C6UmNbAxQa3+Ofn6O497iTfD
 aDaA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV1vpQ5y2mmDnc2ZlyF1HMPSliS/YPVt2iIKMoBLG5fzNTOOXGURlumOIpBf1WD16bel3bOnV7UzrTo+Xjdxiw=@lists.osdn.me
X-Gm-Message-State: AOJu0Yx14lxqEE2XPrgm5yMXHYuGqNRlTpDWMqJSQm6odrF+ekMLIM7f
 WrcqNQtHpcBLyXC3cWFIgG0K18p+dzFjq2at8hbE94Y7vTnZfKjV
X-Google-Smtp-Source: AGHT+IHS7UPocv1EVodImnUwDtxi2YESqToqKqHe3Puffex/s4KHj67GPKK2OwjO9I7fnZP1Mr6hOg==
X-Received: by 2002:a05:6512:12cf:b0:52e:be50:9c66 with SMTP id
 2adb3069b0e04-53877566158mr1456798e87.53.1727268602287; 
 Wed, 25 Sep 2024 05:50:02 -0700 (PDT)
Message-ID: <9ec5667e-6c3f-4f0f-b0a5-2047c3345a9b@gmail.com>
Date: Wed, 25 Sep 2024 14:49:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 tomoyo-users-en@lists.osdn.me, David Drysdale <drysdale@google.com>,
 linux-security-module <linux-security-module@vger.kernel.org>
References: <d26b117d-1e13-42d1-9580-6dd6ce034c21@gmail.com>
 <ca37ee54-574b-44ba-b967-ef6f8f2780f9@I-love.SAKURA.ne.jp>
From: Alfred Agrell <blubban@gmail.com>
In-Reply-To: <ca37ee54-574b-44ba-b967-ef6f8f2780f9@I-love.SAKURA.ne.jp>
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
Subject: [tomoyo-users-en 770] Re: [PATCH] tomoyo: fallback to realpath if
 symlink's pathname does not exist
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

SGVsbG8KClRoZSBlbnZpcm9ubWVudCBpbiB3aGljaCBJIGRpc2NvdmVyZWQgdGhpcyBpc3N1ZSBp
cyBhIGhvbWVtYWRlIApzYW5kYm94aW5nIHNvbHV0aW9uIHRoYXQgY2hyb290cyB0byBhbiBlbXB0
eSBkaXJlY3RvcnksIGFuZCB1c2VzIApzZWNjb21wLWJwZiBTSUdTWVMgdG8gZm9yd2FyZCBmaWxl
c3lzdGVtIG9wZXJhdGlvbnMgdG8gdGhlIHNhbmRib3ggCm1hbmFnZXIgcHJvY2Vzcy4gVGhlIGV4
ZWMgdGFyZ2V0IGlzIGEgc3RhdGljYWxseSBsaW5rZWQgYmluYXJ5IApzcGVjaWZpY2FsbHkgZGVz
aWduZWQgZm9yIHNhaWQgc2FuZGJveC4KCkkgZG9uJ3QgZXhwZWN0IHRoYXQgZXhlYyBvZiBhcmJp
dHJhcnkgcHJvZ3JhbXMgd2lsbCB3b3JrIChtb3N0IG9mIHRoZW0gCmhhdmUgLmludGVycCA9IC9s
aWI2NC9sZC1saW51eC14ODYtNjQuc28uMiwgd2hpY2ggZG9lc24ndCBleGlzdCBlaXRoZXIpLCAK
YnV0IEkgZG8gZXhwZWN0IHRoYXQgdGhpcyBzcGVjaWZpYyBwcm9ncmFtIHdvcmtzLgoKSSBkb24n
dCBrbm93IGVub3VnaCBhYm91dCB0aGUga2VybmVsIHRvIHNheSBhbnl0aGluZyBhYm91dCB0aGF0
IHBhdGNoOyAKaWYgeW91IHNheSBpdCB3b3JrcywgSSdsbCB0cnVzdCB0aGF0LiBUaGFua3MuCgot
LSBBbGZyZWQgQWdyZWxsCgpPbiAyMDI0LTA5LTI1IDEzOjAxLCBUZXRzdW8gSGFuZGEgd3JvdGU6
Cj4gQWxmcmVkIEFncmVsbCBmb3VuZCB0aGF0IFRPTU9ZTyBjYW5ub3QgaGFuZGxlIGV4ZWN2ZWF0
KEFUX0VNUFRZX1BBVEgpCj4gaW5zaWRlIGNocm9vdCBlbnZpcm9ubWVudCB3aGVyZSAvZGV2IGFu
ZCAvcHJvYyBhcmUgbm90IG1vdW50ZWQsIGZvcgo+IGNvbW1pdCA1MWYzOWExZjBjZWEgKCJzeXNj
YWxsczogaW1wbGVtZW50IGV4ZWN2ZWF0KCkgc3lzdGVtIGNhbGwiKSBtaXNzZWQKPiB0aGF0IFRP
TU9ZTyB0cmllcyB0byBjYW5vbmljYWxpemUgYXJndlswXSB3aGVuIHRoZSBmaWxlbmFtZSBmZWQg
dG8gdGhlCj4gZXhlY3V0ZWQgcHJvZ3JhbSBhcyBhcmd2WzBdIGlzIHN1cHBsaWVkIHVzaW5nIHBv
dGVudGlhbGx5IG5vbmV4aXN0ZW50Cj4gcGF0aG5hbWUuCj4gCj4gU2luY2UgIi9kZXYvZmQvPGZk
PiIgYWxyZWFkeSBsb3N0IHN5bWxpbmsgaW5mb3JtYXRpb24gdXNlZCBmb3Igb2J0YWluaW5nCj4g
dGhhdCA8ZmQ+LCBpdCBpcyB0b28gbGF0ZSB0byByZWNvbnN0cnVjdCBzeW1saW5rJ3MgcGF0aG5h
bWUuIEFsdGhvdWdoCj4gPGZpbGVuYW1lPiBwYXJ0IG9mICIvZGV2L2ZkLzxmZD4vPGZpbGVuYW1l
PiIgbWlnaHQgbm90IGJlIGNhbm9uaWNhbGl6ZWQsCj4gVE9NT1lPIGNhbm5vdCB1c2UgdG9tb3lv
X3JlYWxwYXRoX25vZm9sbG93KCkgd2hlbiAvZGV2IGlzIG5vdCBtb3VudGVkLgo+IAo+IFRoZXJl
Zm9yZSwgZmFsbGJhY2sgdG8gdG9tb3lvX3JlYWxwYXRoX2Zyb21fcGF0aCgpIHdoZW4KPiB0b21v
eW9fcmVhbHBhdGhfbm9mb2xsb3coKSBmYWlsZWQuIFRoaXMgY2hhbmdlIG1ha2VzIFRPTU9ZTyB1
bmFibGUgdG8KPiB1dGlsaXplIGFyZ3ZbMF0gZm9yIGNvbnRyb2xsaW5nIGRvbWFpbiB0cmFuc2l0
aW9ucyBmb3IgbXVsdGktY2FsbCBiaW5hcmllcwo+IChlLmcuIGJ1c3lib3gpLCBidXQgdGhpcyBj
aGFuZ2Ugd291bGQgYmUgYmV0dGVyIHRoYW4gZmFpbGluZyB0byBoYW5kbGUKPiBleGVjdmVhdChB
VF9FTVBUWV9QQVRIKSBpbnNpZGUgY2hyb290IGVudmlyb25tZW50Lgo+IAo+IFJlcG9ydGVkLWJ5
OiBBbGZyZWQgQWdyZWxsIDxibHViYmFuQGdtYWlsLmNvbT4KPiBDbG9zZXM6IGh0dHBzOi8vYnVn
cy5kZWJpYW4ub3JnL2NnaS1iaW4vYnVncmVwb3J0LmNnaT9idWc9MTA4MjAwMQo+IEZpeGVzOiA1
MWYzOWExZjBjZWEgKCJzeXNjYWxsczogaW1wbGVtZW50IGV4ZWN2ZWF0KCkgc3lzdGVtIGNhbGwi
KQo+IFNpZ25lZC1vZmYtYnk6IFRldHN1byBIYW5kYSA8cGVuZ3Vpbi1rZXJuZWxASS1sb3ZlLlNB
S1VSQS5uZS5qcD4KPiAtLS0KPiBBbGZyZWQsIHdoYXQgZG8geW91IHRoaW5rPyBUaGF0IGNvbW1p
dCBtZW50aW9uZWQKPiAKPiAgICBUaGlzIGRvZXMgaG93ZXZlciBtZWFuIHRoYXQgZXhlY3V0aW9u
IG9mIGEgc2NyaXB0IGluIGEgL3Byb2MtbGVzcwo+ICAgIGVudmlyb25tZW50IHdvbid0IHdvcmsK
PiAKPiAuIEFyZSB5b3UgZXhwZWN0aW5nIHRoYXQgZXhlY3V0aW9uIG9mIG5vbi1zY3JpcHRzIGlu
IGEgL2Rldi1sZXNzIGFuZAo+IC9wcm9jLWxlc3MgZW52aXJvbm1lbnQgd29yaz8gSSBndWVzcyB0
aGF0IG1ham9yaXR5IG9mIHByb2dyYW1zIGRlcGVuZAo+IG9uIC9kZXYgYW5kIC9wcm9jIGJlaW5n
IG1vdW50ZWQgZXZlbiBpbnNpZGUgY2hyb290IGVudmlyb25tZW50LiBCdXQKPiBpZiB5b3UgaGF2
ZSBwcm9ncmFtcyBpbnRlbmRlZCB0byBiZSBleGVjdXRlZCBpbiBhIC9kZXYtbGVzcyBhbmQKPiAv
cHJvYy1sZXNzIGNocm9vdCBlbnZpcm9ubWVudCwgdGhpcyBwYXRjaCBzaG91bGQgZml4IHRoaXMg
cHJvYmxlbS4uLgo+IAo+ICAgc2VjdXJpdHkvdG9tb3lvL2RvbWFpbi5jIHwgMTAgKysrKysrKy0t
LQo+ICAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvc2VjdXJpdHkvdG9tb3lvL2RvbWFpbi5jIGIvc2VjdXJpdHkvdG9tb3lv
L2RvbWFpbi5jCj4gaW5kZXggOTBiNTM1MDBhMjM2Li4yNzJlODQ3NGQxNWYgMTAwNjQ0Cj4gLS0t
IGEvc2VjdXJpdHkvdG9tb3lvL2RvbWFpbi5jCj4gKysrIGIvc2VjdXJpdHkvdG9tb3lvL2RvbWFp
bi5jCj4gQEAgLTcyMywxMCArNzIzLDE0IEBAIGludCB0b21veW9fZmluZF9uZXh0X2RvbWFpbihz
dHJ1Y3QgbGludXhfYmlucHJtICpicHJtKQo+ICAgCWVlLT5yLm9iaiA9ICZlZS0+b2JqOwo+ICAg
CWVlLT5vYmoucGF0aDEgPSBicHJtLT5maWxlLT5mX3BhdGg7Cj4gICAJLyogR2V0IHN5bWxpbmsn
cyBwYXRobmFtZSBvZiBwcm9ncmFtLiAqLwo+IC0JcmV0dmFsID0gLUVOT0VOVDsKPiAgIAlleGVu
YW1lLm5hbWUgPSB0b21veW9fcmVhbHBhdGhfbm9mb2xsb3cob3JpZ2luYWxfbmFtZSk7Cj4gLQlp
ZiAoIWV4ZW5hbWUubmFtZSkKPiAtCQlnb3RvIG91dDsKPiArCWlmICghZXhlbmFtZS5uYW1lKSB7
Cj4gKwkJLyogRmFsbGJhY2sgdG8gcmVhbHBhdGggaWYgc3ltbGluaydzIHBhdGhuYW1lIGRvZXMg
bm90IGV4aXN0LiAqLwo+ICsJCXJldHZhbCA9IC1FTk9NRU07Cj4gKwkJZXhlbmFtZS5uYW1lID0g
dG9tb3lvX3JlYWxwYXRoX2Zyb21fcGF0aCgmYnBybS0+ZmlsZS0+Zl9wYXRoKTsKPiArCQlpZiAo
IWV4ZW5hbWUubmFtZSkKPiArCQkJZ290byBvdXQ7Cj4gKwl9Cj4gICAJdG9tb3lvX2ZpbGxfcGF0
aF9pbmZvKCZleGVuYW1lKTsKPiAgIHJldHJ5Ogo+ICAgCS8qIENoZWNrICdhZ2dyZWdhdG9yJyBk
aXJlY3RpdmUuICovCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwp0b21veW8tdXNlcnMtZW4gbWFpbGluZyBsaXN0CnRvbW95by11c2Vycy1lbkBsaXN0cy5v
c2RuLm1lCmh0dHBzOi8vbGlzdHMub3Nkbi5tZS9tYWlsbWFuL2xpc3RpbmZvL3RvbW95by11c2Vy
cy1lbgo=
