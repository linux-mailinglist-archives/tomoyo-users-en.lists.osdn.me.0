Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id 19D3391BDAF
	for <lists+tomoyo-users-en@lfdr.de>; Fri, 28 Jun 2024 13:42:58 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id C6701144EF2;
	Fri, 28 Jun 2024 20:42:56 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id E6025144E82
 for <tomoyo-users-en@lists.osdn.me>; Fri, 28 Jun 2024 20:42:54 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=none autolearn=disabled
 version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Fri, 28 Jun 2024 20:42:54 +0900 (JST)
Received: from fsav414.sakura.ne.jp (fsav414.sakura.ne.jp [133.242.250.113])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 45SBgoQL088273;
 Fri, 28 Jun 2024 20:42:50 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav414.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav414.sakura.ne.jp);
 Fri, 28 Jun 2024 20:42:50 +0900 (JST)
Message-ID: <e606aa53-9942-40a6-8d9f-219ef0d98aae@I-love.SAKURA.ne.jp>
Date: Fri, 28 Jun 2024 20:42:46 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: tomoyo-users-en@lists.osdn.me, 0strodamus@cox.net
References: <4a8ae7e4-5aad-dae7-07bb-e6aa75dea141@cox.net>
Content-Language: en-US
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <4a8ae7e4-5aad-dae7-07bb-e6aa75dea141@cox.net>
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
Subject: [tomoyo-users-en   753] Re: util-linux 2.39 mount(2) failures
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

SGVsbG8uCgpQb3N0aW5nIHRvIFRPTU9ZTyBtYWlsaW5nIGxpc3RzIGJ5IG5vbiBNTCBtZW1iZXJz
IGlzIHByb2Nlc3NlZCBieSBsaXN0IG1vZGVyYXRvcnMuCkJ1dCBkdWUgdG8gYW4gdW5leHBlY3Rl
ZCBzeXN0ZW0gY29uZmlndXJhdGlvbiBjaGFuZ2Ugd2hpY2ggSSB3YXMgbm90IGF3YXJlIG9mLAps
aXN0IG1vZGVyYXRvcnMgd2VyZSBub3QgYWJsZSB0byByZWNlaXZlIG5vdGlmaWNhdGlvbiBtYWls
cyBmb3IgcGVuZGluZyByZXF1ZXN0cy4KQXMgYSByZXN1bHQsIGF0IGxlYXN0IHNpbmNlIEp1bmUg
MjAyMiwgYm90aCBzcGFtIGFuZCBub24tc3BhbSBwb3N0aW5ncyBoYWQgYmVlbgpsZWZ0IHVucHJv
Y2Vzc2VkLiBTb3JyeSBhcyBpZiBiZWhhdmluZyBsaWtlIGRlYWQgbWFpbGluZyBsaXN0cy4KCgoK
T24gMjAyMy8xMC8yMiAxMTowMCwgMHN0cm9kYW11c0Bjb3gubmV0IHdyb3RlOgo+IEkgYW0gZXhw
ZXJpZW5jaW5nICJtb3VudCgyKSBzeXN0ZW0gY2FsbCBmYWlsZWQ6IEZ1bmN0aW9uIG5vdCBpbXBs
ZW1lbnRlZC4iIGZhaWx1cmVzIHdpdGggdXRpbC1saW51eCAyLjM5KyBhbmQgCj4gY2NzLXBhdGNo
LTEuOC45LTIwMjMwNTI3IHdpdGggbGludXggTFRTIDYuMS40MiAtIDYuMS41OC4KClRoYW5rIHlv
dSBmb3IgcmVwb3J0aW5nIHByb2JsZW1zLgoKUGxlYXNlIHRyeSBodHRwczovL3NvdXJjZWZvcmdl
Lm5ldC9wL3RvbW95by9zdm4vNjk4NC8gKGZvciBUT01PWU8gMS44KSBvcgpodHRwczovL3NvdXJj
ZWZvcmdlLm5ldC9wL3RvbW95by9ha2FyaS83MTMvIChmb3IgQUtBUkkpIG9yCmh0dHBzOi8vc291
cmNlZm9yZ2UubmV0L3AvY2FpdHNpdGgvc3ZuLzQwMS8gKGZvciBDYWl0U2l0aCkuCgoKCkFsc28s
IGxpa2UgeW91IGFuZCByYXZlbjQgcmVwb3J0ZWQgdGhpcyB3ZWVrLCByZWNlbnQgY2NzLXBhdGNo
IHRhcmJhbGxzCmNvbnRhaW5lZCBhIE1ha2VmaWxlIGVycm9yIHRoYXQgY2F1c2VzIGEgYnVpbGQg
ZmFpbHVyZS4KCiAgSW4gZmlsZSBpbmNsdWRlZCBmcm9tIHNlY3VyaXR5L2Njc2VjdXJpdHkvbG9h
ZF9wb2xpY3kuYzo1NToKICBzZWN1cml0eS9jY3NlY3VyaXR5L2xzbTJjY3NlY3VyaXR5LmM6MTI6
MTA6IGZhdGFsIGVycm9yOiBjaGVja19zZWN1cml0eV9maWxlX2lvY3RsX2NvbXBhdC5oOiBObyBz
dWNoIGZpbGUgb3IgZGlyZWN0b3J5CgpUaGlzIGVycm9yIHdhcyBmaXhlZCBieSBodHRwczovL3Nv
dXJjZWZvcmdlLm5ldC9wL3RvbW95by9zdm4vNjk4MS8gKGZvciBUT01PWU8gMS44KS4KCgoKUmVn
YXJkcy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnRv
bW95by11c2Vycy1lbiBtYWlsaW5nIGxpc3QKdG9tb3lvLXVzZXJzLWVuQGxpc3RzLm9zZG4ubWUK
aHR0cHM6Ly9saXN0cy5vc2RuLm1lL21haWxtYW4vbGlzdGluZm8vdG9tb3lvLXVzZXJzLWVuCg==
