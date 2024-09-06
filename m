Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id DB71B96F1F6
	for <lists+tomoyo-users-en@lfdr.de>; Fri,  6 Sep 2024 12:55:36 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id C57FE144E66;
	Fri,  6 Sep 2024 19:55:35 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id 62644144E5E;
 Fri,  6 Sep 2024 19:55:34 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=none autolearn=disabled
 version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by lists.osdn.me (Postfix) with ESMTP;
 Fri,  6 Sep 2024 19:55:34 +0900 (JST)
Received: from fsav315.sakura.ne.jp (fsav315.sakura.ne.jp [153.120.85.146])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 486AtUFp073718;
 Fri, 6 Sep 2024 19:55:30 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav315.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav315.sakura.ne.jp);
 Fri, 06 Sep 2024 19:55:30 +0900 (JST)
Message-ID: <939e984a-8c5d-456d-a986-26e242e45488@I-love.SAKURA.ne.jp>
Date: Fri, 6 Sep 2024 19:55:30 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
To: Paul Moore <paul@paul-moore.com>
References: <caafb609-8bef-4840-a080-81537356fc60@I-love.SAKURA.ne.jp>
 <CAHC9VhT_eBGJq5viU8R_HVWT=BTcxesWAi3nLcMgG8NfswKesA@mail.gmail.com>
 <d16cd3d1-4b32-487e-b116-419c19941472@I-love.SAKURA.ne.jp>
Content-Language: en-US
In-Reply-To: <d16cd3d1-4b32-487e-b116-419c19941472@I-love.SAKURA.ne.jp>
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
Subject: [tomoyo-users-en 763] Re: [PATCH] LSM: allow loadable kernel module
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

T24gMjAyNC8wOS8wNiAxNjo0MywgVGV0c3VvIEhhbmRhIHdyb3RlOgo+IE9uIDIwMjQvMDkvMDQg
MjM6MjMsIFBhdWwgTW9vcmUgd3JvdGU6Cj4+IFBhdGNoZXMgdGhhdCBhZGQgY29tcGxleGl0eSB0
byB0aGUgTFNNIGZyYW1ld29yayB3aXRob3V0IGFueSBiZW5lZml0Cj4+IHRvIHRoZSB1cHN0cmVh
bSwgaW4tdHJlZSBMU01zLCBvciB0aGUgdXBzdHJlYW0ga2VybmVsIGluIGdlbmVyYWwsIGFyZQo+
PiBub3QgZ29vZCBjYW5kaWRhdGVzIGZvciBpbmNsdXNpb24gaW4gdGhlIHVwc3RyZWFtIGtlcm5l
bC4KClRoaXMgcGF0Y2ggYWRkcyBhIGNsZWFyIHZhbHVlIGZvciBMaW51eCB1c2VycyB0aGF0IHBl
b3BsZSBnZXQgbW9yZSBjaGFuY2VzIHRvCnVzZSBMU00gbW9kdWxlcyB3aGljaCBtYXRjaCB0aGVp
ciBuZWVkcy4KClF1b3RpbmcgZnJvbSBbMV06CgogIFJlZ2FyZGluZyBDT05GSUdfTU9EVUxFUz15
LAogICJWZW5kb3ItQSBlbmFibGVzIG1vZHVsZS1BIiA9PSAiVmVuZG9yLUEgcHJvdmlkZXMgc3Vw
cG9ydCBmb3IgbW9kdWxlLUEiIGFuZAogICJWZW5kb3ItQiBlbmFibGVzIG1vZHVsZS1CIiA9PSAi
VmVuZG9yLUIgcHJvdmlkZXMgc3VwcG9ydCBmb3IgbW9kdWxlLUIiLgoKICBSZWdhcmRpbmcgQ09O
RklHX1NFQ1VSSVRZPXkgKG5hbWVseSBpbiB0aGUgUkggd29ybGQpLAogICJEaXN0cmlidXRvci1B
IGVuYWJsZXMgTFNNLUEiID09ICJEaXN0cmlidXRvci1BIHByb3ZpZGVzIHN1cHBvcnQgZm9yIExT
TS1BIi4KICBIb3dldmVyLCAiRGlzdHJpYnV0b3ItQSBkb2VzIG5vdCBlbmFibGUgTFNNLUIiID09
ICJTb21lIHZlbmRvciBpcyBpbXBvc3NpYmxlIHRvCiAgcHJvdmlkZSBzdXBwb3J0IGZvciBMU00t
QiIuCgogICJEaXN0cmlidXRvci1BIGRvZXMgbm90IGVuYWJsZSBtb2R1bGUtQiIgPT0gIkRpc3Ry
aWJ1dG9yLUEgaXMgbm90IHJlc3BvbnNpYmxlIGZvcgogIHByb3ZpZGluZyBzdXBwb3J0IGZvciBt
b2R1bGUtQiIgYW5kICJWZW5kb3ItQiBlbmFibGVzIExTTS1CIiA9PSAiVmVuZG9yLUIgcHJvdmlk
ZXMKICBzdXBwb3J0IGZvciBMU00tQiIgYXJlIHdoYXQgSSBleHBlY3QuCgogIEN1cnJlbnQgTFNN
IGludGVyZmFjZSBkb2VzIG5vdCBhbGxvdyBMU00tQiB0byBleGlzdCBpbiBEaXN0cmlidXRvci1B
J3Mgc3lzdGVtcy4KICBUaGUgImVuYWJsZSIgPT0gInN1cHBvcnQiIG1vZGVsIHNob3VsZCBiZSBh
bGxvd2VkIGZvciBMU00gaW50ZXJmYWNlIGFzIHdlbGwuCiAgV2hhdCBhIHN0cmFuZ2UgYXN5bW1l
dHJ5IHJ1bGUhCgpZb3VyICJhbnkgYmVuZWZpdCB0byBpbi10cmVlIExTTXMiIGlzIGNvbXBsZXRl
bHkgaWdub3JpbmcgTGludXggdXNlcnMuCkxTTSBpcyBmb3IgYWxsIExpbnV4IHVzZXJzLCBMU00g
aXMgbm90IG9ubHkgZm9yIExTTSBkZXZlbG9wZXJzLgoKCgpMaW5rOiBodHRwczovL2xrbWwua2Vy
bmVsLm9yZy9yL2MyYTMyNzlkLTQ1MWQtMjNkZi0wOTExLWU1NDVkMjE0OTJlNkBJLWxvdmUuU0FL
VVJBLm5lLmpwIFsxXQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KdG9tb3lvLXVzZXJzLWVuIG1haWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMu
b3Nkbi5tZQpodHRwczovL2xpc3RzLm9zZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNl
cnMtZW4K
