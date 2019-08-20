Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (gw0.osdn.jp [202.221.179.250])
	by mail.lfdr.de (Postfix) with ESMTP id 49C7895FB0
	for <lists+tomoyo-users-en@lfdr.de>; Tue, 20 Aug 2019 15:16:07 +0200 (CEST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 sf-lists.priv.osdn.jp
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=none autolearn=disabled
 version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by sf-lists.priv.osdn.jp (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Tue, 20 Aug 2019 22:16:01 +0900 (JST)
Received: from fsav402.sakura.ne.jp (fsav402.sakura.ne.jp [133.242.250.101])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id x7KDG088074879
 for <tomoyo-users-en@lists.osdn.me>; Tue, 20 Aug 2019 22:16:00 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav402.sakura.ne.jp (F-Secure/fsigk_smtp/530/fsav402.sakura.ne.jp);
 Tue, 20 Aug 2019 22:16:00 +0900 (JST)
To: tomoyo-users-en@lists.osdn.me
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <a0e61e20-dbf3-82de-dbba-89d61092bb52@i-love.sakura.ne.jp>
Date: Tue, 20 Aug 2019 22:15:56 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.100.3/25547/Tue Aug 20 17:27:49 2019
Subject: [tomoyo-users-en 712] TOMOYO Linux 1.8.6 / AKARI 1.0.39 / CaitSith
 0.2.4 released.
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

SGVsbG8uCgpUbyBhZGRyZXNzIHBhdGhuYW1lIGNhbGN1bGF0aW9uIHByb2JsZW0gb24gcmVhZC1v
bmx5IGZpbGVzeXN0ZW1zCiggaHR0cHM6Ly9vc2RuLm5ldC9wcm9qZWN0cy90b21veW8vbGlzdHMv
YXJjaGl2ZS91c2Vycy1lbi8yMDE3LUp1bHkvMDAwNjg0Lmh0bWwgKSwKSSBjaGFuZ2VkIHBhdGhu
YW1lIGNhbGN1bGF0aW9uIHJ1bGUgaW4gVE9NT1lPIDIuNiAvIExpbnV4IDUuMgooIGh0dHBzOi8v
Z2l0Lmtlcm5lbC5vcmcvbGludXMvMjdkZjRiNGExYjVmZTJiZWY1NGViYzQ5ZDY0YmY1YjM5MTI1
ZjI2YSApLCBhbmQKSSBiYWNrcG9ydGVkIHRoYXQgY2hhbmdlIHRvIFRPTU9ZTyAxLjggLyBBS0FS
SSAvIENhaXRTaXRoIChhbG9uZyB3aXRoIG90aGVyIGJ1ZwpmaXhlcykuCgpTaW5jZSBwYXRobmFt
ZSBpbiB0aGUgcG9saWN5IGZpbGVzIG5lZWQgdG8gYmUgdXBkYXRlZCBvbiBlbnZpcm9ubWVudHMg
d2hpY2ggd2lsbApiZSBhZmZlY3RlZCBieSB0aGF0IGNoYW5nZSwgSSBidW1wZWQgdGhlIHZlcnNp
b24gdG8gMS44LjYgcmF0aGVyIHRoYW4gMS44LjVwMy4KCiAgY2NzLXBhdGNoLTEuOC42LTIwMTkw
ODIwLnRhci5neiAgICAgICAgICAgTUQ1OjExMTEzMDRiNDBmN2ZkMzcyNmJlMDgxNzY4ZDllMDBi
CiAgYWthcmktMS4wLjM5LTIwMTkwODIwLnRhci5neiAgICAgICAgICAgICAgTUQ1OjU1NTVmMGQy
NWFlNjAyODA3ZWJjOTQzZWY2OGUzMjA4CiAgY2FpdHNpdGgtcGF0Y2gtMC4yLTIwMTkwODIwLnRh
ci5neiAgICAgICAgTUQ1Ojc3NzcwNzk0MmFkZDI5NDE4ZTVkODNlNDBhY2M2ZjA0CgpQbGVhc2Ug
bGV0IG1lIGtub3cgaWYgeW91IGZvdW5kIGFueSBwcm9ibGVtcy4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnRvbW95by11c2Vycy1lbiBtYWlsaW5nIGxp
c3QKdG9tb3lvLXVzZXJzLWVuQGxpc3RzLm9zZG4ubWUKaHR0cHM6Ly9saXN0cy5vc2RuLm1lL21h
aWxtYW4vbGlzdGluZm8vdG9tb3lvLXVzZXJzLWVuCg==
