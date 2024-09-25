Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id ADDE1985F65
	for <lists+tomoyo-users-en@lfdr.de>; Wed, 25 Sep 2024 15:57:18 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id 95FB5144ED1;
	Wed, 25 Sep 2024 22:57:17 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id 6D87D144EC7
 for <tomoyo-users-en@lists.osdn.me>; Wed, 25 Sep 2024 22:57:16 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=none autolearn=disabled
 version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Wed, 25 Sep 2024 22:57:16 +0900 (JST)
Received: from fsav414.sakura.ne.jp (fsav414.sakura.ne.jp [133.242.250.113])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 48PDv6df014770;
 Wed, 25 Sep 2024 22:57:06 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav414.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav414.sakura.ne.jp);
 Wed, 25 Sep 2024 22:57:06 +0900 (JST)
Message-ID: <b5381c2b-6b01-4257-8b6a-6417b2fef08e@I-love.SAKURA.ne.jp>
Date: Wed, 25 Sep 2024 22:57:08 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alfred Agrell <blubban@gmail.com>, tomoyo-users-en@lists.osdn.me,
 David Drysdale <drysdale@google.com>,
 linux-security-module <linux-security-module@vger.kernel.org>
References: <d26b117d-1e13-42d1-9580-6dd6ce034c21@gmail.com>
 <ca37ee54-574b-44ba-b967-ef6f8f2780f9@I-love.SAKURA.ne.jp>
 <9ec5667e-6c3f-4f0f-b0a5-2047c3345a9b@gmail.com>
Content-Language: en-US
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <9ec5667e-6c3f-4f0f-b0a5-2047c3345a9b@gmail.com>
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
Subject: [tomoyo-users-en 771] Re: [PATCH] tomoyo: fallback to realpath if
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

T24gMjAyNC8wOS8yNSAyMTo0OSwgQWxmcmVkIEFncmVsbCB3cm90ZToKPiBIZWxsbwo+IAo+IFRo
ZSBlbnZpcm9ubWVudCBpbiB3aGljaCBJIGRpc2NvdmVyZWQgdGhpcyBpc3N1ZSBpcyBhIGhvbWVt
YWRlIHNhbmRib3hpbmcKPiBzb2x1dGlvbiB0aGF0IGNocm9vdHMgdG8gYW4gZW1wdHkgZGlyZWN0
b3J5LCBhbmQgdXNlcyBzZWNjb21wLWJwZiBTSUdTWVMKPiB0byBmb3J3YXJkIGZpbGVzeXN0ZW0g
b3BlcmF0aW9ucyB0byB0aGUgc2FuZGJveCBtYW5hZ2VyIHByb2Nlc3MuIFRoZSBleGVjCj4gdGFy
Z2V0IGlzIGEgc3RhdGljYWxseSBsaW5rZWQgYmluYXJ5IHNwZWNpZmljYWxseSBkZXNpZ25lZCBm
b3Igc2FpZCBzYW5kYm94Lgo+IAo+IEkgZG9uJ3QgZXhwZWN0IHRoYXQgZXhlYyBvZiBhcmJpdHJh
cnkgcHJvZ3JhbXMgd2lsbCB3b3JrIChtb3N0IG9mIHRoZW0gaGF2ZQo+IC5pbnRlcnAgPSAvbGli
NjQvbGQtbGludXgteDg2LTY0LnNvLjIsIHdoaWNoIGRvZXNuJ3QgZXhpc3QgZWl0aGVyKSwgYnV0
IEkKPiBkbyBleHBlY3QgdGhhdCB0aGlzIHNwZWNpZmljIHByb2dyYW0gd29ya3MuCgpJIHNlZS4K
Cj4gCj4gSSBkb24ndCBrbm93IGVub3VnaCBhYm91dCB0aGUga2VybmVsIHRvIHNheSBhbnl0aGlu
ZyBhYm91dCB0aGF0IHBhdGNoOwo+IGlmIHlvdSBzYXkgaXQgd29ya3MsIEknbGwgdHJ1c3QgdGhh
dC4gVGhhbmtzLgoKSSBjb25maXJtZWQgdGhhdCB0aGlzIGNoYW5nZSBtYWtlcyB5b3VyIGV4YW1w
bGUgcHJvZ3JhbSB3b3JrLgpJIGFwcGxpZWQgdGhpcyBjaGFuZ2UgYXMKaHR0cHM6Ly9zb3VyY2Vm
b3JnZS5uZXQvcC90b21veW8vdG9tb3lvLmdpdC9jaS9hZGExOTg2ZDA3OTc2ZDYwYmVkNTAxN2Fh
MzhiN2Y3Y2YyNzg4M2Y3LyAuClBsZWFzZSByZXF1ZXN0IGZvciBiYWNrcG9ydCBhZnRlciB0aGlz
IGNoYW5nZSBpcyBhcHBsaWVkIHRvIGxpbnV4LmdpdCB0cmVlLgoKVGhhbmsgeW91IGZvciByZXBv
cnRpbmcgdGhpcyBidWcuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwp0b21veW8tdXNlcnMtZW4gbWFpbGluZyBsaXN0CnRvbW95by11c2Vycy1lbkBsaXN0
cy5vc2RuLm1lCmh0dHBzOi8vbGlzdHMub3Nkbi5tZS9tYWlsbWFuL2xpc3RpbmZvL3RvbW95by11
c2Vycy1lbgo=
