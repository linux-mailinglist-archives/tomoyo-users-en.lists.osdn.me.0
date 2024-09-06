Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id 6405396EC44
	for <lists+tomoyo-users-en@lfdr.de>; Fri,  6 Sep 2024 09:43:22 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id 41DA0144E59;
	Fri,  6 Sep 2024 16:43:21 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id BA01F144E51;
 Fri,  6 Sep 2024 16:43:19 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: *
X-Spam-Status: No, score=1.0 required=7.0 tests=ENCODING_8BIT
 autolearn=disabled version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by lists.osdn.me (Postfix) with ESMTP;
 Fri,  6 Sep 2024 16:43:19 +0900 (JST)
Received: from fsav120.sakura.ne.jp (fsav120.sakura.ne.jp [27.133.134.247])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 4867hGwF087759;
 Fri, 6 Sep 2024 16:43:16 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav120.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav120.sakura.ne.jp);
 Fri, 06 Sep 2024 16:43:16 +0900 (JST)
Message-ID: <d16cd3d1-4b32-487e-b116-419c19941472@I-love.SAKURA.ne.jp>
Date: Fri, 6 Sep 2024 16:43:15 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Moore <paul@paul-moore.com>
References: <caafb609-8bef-4840-a080-81537356fc60@I-love.SAKURA.ne.jp>
 <CAHC9VhT_eBGJq5viU8R_HVWT=BTcxesWAi3nLcMgG8NfswKesA@mail.gmail.com>
Content-Language: en-US
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <CAHC9VhT_eBGJq5viU8R_HVWT=BTcxesWAi3nLcMgG8NfswKesA@mail.gmail.com>
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
Subject: [tomoyo-users-en 762] Re: [PATCH] LSM: allow loadable kernel module
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

T24gMjAyNC8wOS8wNCAyMzoyMywgUGF1bCBNb29yZSB3cm90ZToKPiBPbiBXZWQsIFNlcCA0LCAy
MDI0IGF0IDM6MTDigK9BTSBUZXRzdW8gSGFuZGEKPiA8cGVuZ3Vpbi1rZXJuZWxAaS1sb3ZlLnNh
a3VyYS5uZS5qcD4gd3JvdGU6Cj4+Cj4+IFVudGlsIDIuNi4yMywgaXQgd2FzIG9mZmljaWFsbHkg
cG9zc2libGUgdG8gcmVnaXN0ZXIvdW5yZWdpc3RlciBMU00gbW9kdWxlcwo+PiB0aGF0IGFyZSBp
bXBsZW1lbnRlZCBhcyBsb2FkYWJsZSBrZXJuZWwgbW9kdWxlcy4KPiAKPiAuLi4KPiAKPj4gUGF1
bCBNb29yZSBoYXMgY29tbWVudGVkCj4+Cj4+ICAgSSBkbyBub3QgaW50ZW50aW9uYWxseSBwbGFu
IHRvIG1ha2UgbGlmZSBkaWZmaWN1bHQgZm9yIHRoZSBvdXQtb2YtdHJlZQo+PiAgIExTTXMsIGJ1
dCBpZiB0aGF0IGhhcHBlbnMgYXMgYSByZXN1bHQgb2YgZGVzaWduIGRlY2lzaW9ucyBpbnRlbmRl
ZCB0bwo+PiAgIGJlbmVmaXQgaW4tdHJlZSBMU01zIHRoYXQgaXMgYWNjZXB0YWJsZSBhcyBmYXIg
YXMgSSBhbSBjb25jZXJuZWQuCj4gCj4gUGF0Y2hlcyB0aGF0IGFkZCBjb21wbGV4aXR5IHRvIHRo
ZSBMU00gZnJhbWV3b3JrIHdpdGhvdXQgYW55IGJlbmVmaXQKPiB0byB0aGUgdXBzdHJlYW0sIGlu
LXRyZWUgTFNNcywgb3IgdGhlIHVwc3RyZWFtIGtlcm5lbCBpbiBnZW5lcmFsLCBhcmUKPiBub3Qg
Z29vZCBjYW5kaWRhdGVzIGZvciBpbmNsdXNpb24gaW4gdGhlIHVwc3RyZWFtIGtlcm5lbC4KPiAK
ClRoZSBpZGVhIGFuZCBpbXBsZW1lbnRhdGlvbiBmb3IgdXNpbmcgTFNNIGZyb20gbG9hZGFibGUg
a2VybmVsIG1vZHVsZXMgaXMgd2hhdApJIGRlbW9uc3RyYXRlZCB5b3UgaW4gYSBsaWdodGVuaW5n
IHRhbGsgc2Vzc2lvbiBpbiBMaW51eENvbiBOb3J0aCBBbWVyaWNhIDIwMTAuCkl0IGlzIDE0IHll
YXJzIHNpbmNlIHdlIGxlYXJuZWQgbXkgY29uY2VybiwgYW5kIHlvdSBoYWQgYmVlbiBpZ25vcmlu
ZyBteSBjb25jZXJuCnVudGlsIG5vdy4KClRoZSBmaXJzdCBzb2x1dGlvbiBpcyAiZG8gbm90IHVz
ZSBzdGF0aWMgY2FsbHMiLiBCdXQgeW91IHdvbid0IGFncmVlIGl0LiBBbHNvLApJJ20gbm90IGFn
YWluc3QgdXNlIG9mIHN0YXRpYyBjYWxscyBhcyBsb25nIGFzIExLTS1iYXNlZCBMU00gaXMgc3Vw
cG9ydGVkLgoKVGhlIHNlY29uZCBzb2x1dGlvbiBpcyAiZXhwb3J0IHN0YXRpYyBjYWxscyIgKGFu
ZCBsZWF2ZSBob3cgaXQgaXMgdXNlZCBieQpMS00tYmFzZWQgTFNNcykuIEJ1dCBzb21lIG9mIExT
TSBwZW9wbGUgZG8gbm90IGxpa2Ugc29sdXRpb25zIHRoYXQgY2FuIGFsbG93CkxLTXMgdG8gZGlz
YWJsZSBidWlsdC1pbiBMU01zLgoKVGhlIHRoaXJkIHNvbHV0aW9uIGlzICJjb250aW51ZSB1c2lu
ZyBsaW5rZWQgbGlzdCBmb3IgTEtNLWJhc2VkIExTTXMiIHdoaWNoIHdhcwpzdWdnZXN0ZWQgYnkg
S1AgU2luZ2ggWzFdLiBJJ20gT0sgd2l0aCB0aGlzIHNvbHV0aW9uLCB0aG91Z2ggaXQgaXMgdW5s
dWNreSB0aGF0CkxLTS1iYXNlZCBMU01zIGNhbid0IGJlIGJlbmVmaXRlZCBmcm9tICJzdGF0aWMg
Y2FsbHMiLgoKSWYgeW91IGlnbm9yZSBteSBjb25jZXJuLCBJIGhhdmUgdG8gTkFDSyB0aGUgc3Rh
dGljIGNhbGwgY2hhbmdlcyB5b3UgYXJlCmdvaW5nIHRvIHNlbmQgaW4gdGhlIHVwY29taW5nIG1l
cmdlIHdpbmRvdy4KCgoKTGluazogaHR0cHM6Ly9sa21sLmtlcm5lbC5vcmcvci9DQUNZa3pKN2do
dDY2ODAyd1FGS3pva2ZKS01LRE9vYllnZWFDcHU1R3g9aVgwRXVKVmdAbWFpbC5nbWFpbC5jb20g
WzFdCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0b21v
eW8tdXNlcnMtZW4gbWFpbGluZyBsaXN0CnRvbW95by11c2Vycy1lbkBsaXN0cy5vc2RuLm1lCmh0
dHBzOi8vbGlzdHMub3Nkbi5tZS9tYWlsbWFuL2xpc3RpbmZvL3RvbW95by11c2Vycy1lbgo=
