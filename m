Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id A4CE794688B
	for <lists+tomoyo-users-en@lfdr.de>; Sat,  3 Aug 2024 09:38:28 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id 25153144F65;
	Sat,  3 Aug 2024 16:38:27 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id 08C2F144F61
 for <tomoyo-users-en@lists.osdn.me>; Sat,  3 Aug 2024 16:38:25 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=none autolearn=disabled
 version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Sat,  3 Aug 2024 16:38:24 +0900 (JST)
Received: from fsav415.sakura.ne.jp (fsav415.sakura.ne.jp [133.242.250.114])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 4737cLNW045658;
 Sat, 3 Aug 2024 16:38:21 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav415.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav415.sakura.ne.jp);
 Sat, 03 Aug 2024 16:38:21 +0900 (JST)
Message-ID: <1de1f959-51e4-4af3-93f8-645775a9c6b0@I-love.SAKURA.ne.jp>
Date: Sat, 3 Aug 2024 16:38:21 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Esteban Gil <styf300@gmail.com>
References: <CAL2A2Va_Of1oyFEPwHhdy2Y7G8QAj7d=jwF-2SAbjvtk9uV_8g@mail.gmail.com>
Content-Language: en-US
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <CAL2A2Va_Of1oyFEPwHhdy2Y7G8QAj7d=jwF-2SAbjvtk9uV_8g@mail.gmail.com>
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
Subject: [tomoyo-users-en   759] Re: Policy namespaces
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
Cc: tomoyo-users-en@lists.osdn.me
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

SGVsbG8uCgpPbiAyMDI0LzA4LzAyIDA6NDcsIEVzdGViYW4gR2lsIHdyb3RlOgo+IEhlbGxvLAo+
IEkgYW0gZGV2ZWxvcGluZyBhbiBBQ0wgd2l0aCBBa2FyaSBmb3IgbXkgc2VydmVyIHRoYXQgaXMg
cnVubmluZyBzZXZlcmFsCj4gRG9ja2VyIGNvbnRhaW5lcnMgYW5kIEkgd2FubmEgYmUgYWJsZSB0
byBjbGVhcmx5IGRpZmZlcmVudGlhdGUgdGhlIGRvbWFpbnMKPiBmcm9tIHRoZSBob3N0IG1hY2hp
bmUgZnJvbSB0aGUgb25lcyBpbiBjb250YWluZXJzLgo+IFNpbmNlIEkgaGF2ZSBpdCBjb25maWd1
cmVkIHRvIGFsd2F5cyBpbml0aWFsaXplIG5ldyBkb21haW5zCj4gKGluaXRpYWxpemVfZG9tYWlu
IGFueSBmcm9tIGFueSkgYmVjYXVzZSBJIGZpbmQgaXQgZWFzaWVyIHRvIHdvcmsgd2l0aCwgSQo+
IHRob3VnaHQgb2YgdXNpbmcgbmFtZXNwYWNlcyB0byBhY2hpZXZlIHRoaXMuCgpJIGNhbiBzZWUg
eW91IHdhbnQgdG8gZG8gc29tZXRoaW5nIGZvciBwcm9jZXNzZXMgcnVuIGluIGNvbnRhaW5lcnMu
CkJ1dCBJIGNhbid0IHNlZSB3aHkgeW91IGFyZSB1c2luZyAiaW5pdGlhbGl6ZV9kb21haW4gYW55
IGZyb20gYW55Ii4KUGxlYXNlIGVudW1lcmF0ZSB3aGF0IHlvdSB3YW50IHRvIGRvIHVzaW5nIGJ1
bGxldCBwb2ludC4KCkRvIHlvdSB3YW50IHRvIGFwcGx5IHNvbWUgcmVzdHJpY3Rpb25zIGZvciBw
cm9jZXNzZXMgb3V0c2lkZSBvZiBkb2NrZXI/CklmIG5vLCBJIHdvbmRlciB3aHkgeW91IHdhbnQg
dG8gc3BsaXQgZG9tYWlucyBmb3IgcHJvY2Vzc2VzIG91dHNpZGUgb2YKZG9ja2VyOyBJIGd1ZXNz
IHRoYXQga2VlcF9kb21haW4gd291bGQgZml0IGJldHRlciBmb3Igc3VjaCBwcm9jZXNzZXMKKGFu
ZCBpbiB0aGF0IGNhc2UgaXQgaXMgcG9zc2libGUgdGhhdCB5b3UgZG9uJ3QgbmVlZCB0byB1c2Ug
bmFtZXNwYWNlcwphdCBhbGwpLgoKRG8geW91IHdhbnQgdG8gYXBwbHkgc29tZSByZXN0cmljdGlv
bnMgZm9yIHByb2Nlc3NlcyBpbnNpZGUgb2YgZG9ja2VyPwpJZiB5ZXMsIEkgd29uZGVyIHdoeSB5
b3UgaGF2ZSB0cm91YmxlcyB3aXRoIHNwbGl0dGluZyBuYW1lc3BhY2VzIGZvcgpwcm9jZXNzZXMg
aW5zaWRlIG9mIGRvY2tlci4KCj4gSG93ZXZlciwgYnkgcmVhZGluZyB0aGUgZG9jcyBJIHVuZGVy
c3Rvb2QgdGhhdCB5b3UgYWxzbyBuZWVkIHRvIGRlZmluZSBuZXcKPiBleGNlcHRpb24gYW5kIHBy
b2ZpbGUgcG9saWNpZXMgZm9yIGV2ZXJ5IG5ldyBuYW1lc3BhY2UgeW91IGludHJvZHVjZS4gSW4g
bXkKPiBjYXNlIHRoYXQgd291bGQgbWVhbiBkdXBsaWNhdGluZyB0aGUgZXhpc3Rpbmcgb25lcyBm
b3IgZWFjaCBuYW1lc3BhY2UgYW5kCj4gYWRkaW5nIHRoZSBhcHByb3ByaWF0ZSBuYW1lc3BhY2Ug
cHJlZml4LiBJIHdhcyB3b25kZXJpbmcgaWYgdGhlcmUgaXMgYSB3YXkKPiBvZiB0ZWxsaW5nIEFr
YXJpL1RvbW95byB0byBpZ25vcmUgbmFtZXNwYWNlcyBpbiBleGNlcHRpb24gYW5kIHByb2ZpbGUK
PiBwb2xpY2llcyBhbmQganVzdCB1c2UgdGhlIGJ1aWx0LWluIG9uZS4gSWYgbm90LCB3aGF0IHdv
dWxkIGJlIHRoZSBjb2RlCj4gY2hhbmdlcyBuZWNlc3NhcnkgdG8gYWNoaWV2ZSB0aGlzPwoKSSBj
YW4ndCBpbnRlcnByZXQgImlnbm9yZSBuYW1lc3BhY2VzIGluIGV4Y2VwdGlvbiBhbmQgcHJvZmls
ZSBwb2xpY2llcyBhbmQganVzdAp1c2UgdGhlIGJ1aWx0LWluIG9uZSIuIEJ1dCBJJ20gbm90IGdv
aW5nIHRvIG1vZGlmeSBBS0FSSS9UT01PWU8gcG9zc2libGUgdG8gdXNlCmV4Y2VwdGlvbiBwb2xp
Y3kgYW5kIHByb2ZpbGUgcG9saWN5IGluIGRpZmZlcmVudCBuYW1lc3BhY2VzLCBmb3IgYSBuYW1l
c3BhY2UgaXMKYnkgZGVmaW5pdGlvbiBhbiBpbmRlcGVuZGVudCBzZXQgb2YgcG9saWN5IHRoYXQg
Y2FuIGJlIG1pZ3JhdGVkIHVzaW5nIGRvbWFpbgp0cmFuc2l0aW9uIGNvbnRyb2wgZGlyZWN0aXZl
cy4KUGxlYXNlIHNlZSBodHRwczovL3RvbW95by5zb3VyY2Vmb3JnZS5uZXQvYWthcmkvMS4wL2No
YXB0ZXItMTUuaHRtbC5lbiMxNS40IC4KCkR1cGxpY2F0aW5nIHBvbGljeSBmb3IgbmFtZXNwYWNl
cyBpcyBiYXNpY2FsbHkgYSBtYXR0ZXIgb2YKcy88c291cmNlX25hbWVzcGFjZT4vPGRlc3RfbmFt
ZXNwYWNlPi8gb2YgZXhpc3RpbmcvdGVtcGxhdGUgcG9saWN5LgpXaHkgaXMgdGhhdCBkaWZmaWN1
bHQ/IEFyZSB5b3UgdHJ5aW5nIHRvIGNyZWF0ZSB1bnByZWRpY3RhYmxlIG51bWJlcgpvZiBuYW1l
c3BhY2VzIGF0IHJ1biB0aW1lIGJlY2F1c2UgeW91IHdhbnQgdG8gYXNzaWduIGEgZGVkaWNhdGVk
Cm5hbWVzcGFjZSBmb3IgZWFjaCBjb250YWluZXIgaW5zdGFuY2UgYXQgcnVuIHRpbWU/CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0b21veW8tdXNlcnMt
ZW4gbWFpbGluZyBsaXN0CnRvbW95by11c2Vycy1lbkBsaXN0cy5vc2RuLm1lCmh0dHBzOi8vbGlz
dHMub3Nkbi5tZS9tYWlsbWFuL2xpc3RpbmZvL3RvbW95by11c2Vycy1lbgo=
