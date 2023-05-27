Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id 86540713314
	for <lists+tomoyo-users-en@lfdr.de>; Sat, 27 May 2023 09:40:44 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id 54C22144F5F;
	Sat, 27 May 2023 16:40:43 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id 4553D144F5B
 for <tomoyo-users-en@lists.osdn.me>; Sat, 27 May 2023 16:40:42 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ip-10-232-20-202
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=none autolearn=disabled
 version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Sat, 27 May 2023 16:40:42 +0900 (JST)
Received: from fsav111.sakura.ne.jp (fsav111.sakura.ne.jp [27.133.134.238])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 34R7edCN084789;
 Sat, 27 May 2023 16:40:39 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav111.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav111.sakura.ne.jp);
 Sat, 27 May 2023 16:40:39 +0900 (JST)
Message-ID: <2d546e85-217e-1fbc-ad71-a6efdcd4e3e8@I-love.SAKURA.ne.jp>
Date: Sat, 27 May 2023 16:40:37 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: tomoyo-users-en@lists.osdn.me
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
Subject: [tomoyo-users-en 745] AKARI 1.0.48 and CaitSith 0.2-20230527
 released
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

SGVsbG8uCgpMdWl6IGZvdW5kIGEgYnVnIHRoYXQgd2hlbiBhbiBleGVjdmUoKSByZXF1ZXN0IHdh
cyByZWplY3RlZCBieSBDYWl0U2l0aCdzCnBvbGljeSwgcmV0cnlpbmcgdGhlIHNhbWUgZXhlY3Zl
KCkgcmVxdWVzdCBjYXVzZXMgYmVpbmcgZ3JhbnRlZCBkdWUgdG8KaW5jb21wbGV0ZSBlcnJvciBo
YW5kbGluZyBpbiBwcmV2aW91cyBleGVjdmUoKSByZXF1ZXN0LgoKRm9yIGV4YW1wbGUsIHRoaXMg
YnVnIGFmZmVjdHMgd2hlbiBydW5uaW5nIGEgcHJvZ3JhbSBzaG93biBiZWxvdyB3aGVuCnRoZXJl
IGlzIGEgQ2FpdFNpdGgncyBwb2xpY3kgd2hpY2ggcmVqZWN0cyBleGVjdXRpb24gb2YgL3Vzci9i
aW4vdG9wIC4KCi0tLS0tLS0tLS0KI2luY2x1ZGUgPHVuaXN0ZC5oPgoKaW50IG1haW4oaW50IGFy
Z2MsIGNoYXIgKmFyZ3ZbXSkKewogICAgICAgIGV4ZWNsKCIvdXNyL2Jpbi90b3AiLCAidG9wIiwg
TlVMTCk7IC8vIDw9IFJlamVjdGVkIGJ5IHBvbGljeS4KICAgICAgICBleGVjbCgiL3Vzci9iaW4v
dG9wIiwgInRvcCIsIE5VTEwpOyAvLyA8PSBCeSBlcnJvciBncmFudGVkLgogICAgICAgIHJldHVy
biAwOwp9Ci0tLS0tLS0tLS0KClRoaXMgYnVnIGV4aXN0ZWQgaW4gYm90aCBBS0FSSSBhbmQgTEtN
LWJhc2VkIExTTSB2ZXJzaW9uIG9mIENhaXRTaXRoCnNpbmNlIExpbnV4IDIuNi4yOSB3aGVyZSBh
IExTTSBob29rIHdoaWNoIGlzIGFsd2F5cyBjYWxsZWQgd2hlbiBhbgpleGVjdmUoKSByZXF1ZXN0
IGZpbmlzaGVzIHdhcyByZW1vdmVkLgoKVGhpcyBidWcgZG9lcyBub3QgZXhpc3QgaW4gVE9NT1lP
IDEuOCBhbmQgZnVsbHkgZmVhdHVyZWQgdmVyc2lvbiBvZgpDYWl0U2l0aC4gKEFLQVJJIGlzIExL
TS1iYXNlZCBMU00gdmVyc2lvbiBvZiBUT01PWU8gMS44LikKClRoZXJlZm9yZSwgcGxlYXNlIHVw
ZGF0ZSBpZiB5b3UgYXJlIHVzaW5nIEFLQVJJIG9yIExLTS1iYXNlZCBMU00gdmVyc2lvbgpvZiBD
YWl0U2l0aC4KClJlZ2FyZHMuCgpNRDUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRmls
ZW5hbWUKNjY2NjY3Mzg4Y2I1NDg4OTg1MjFjMmY2NGJjODQ5NzkgIGFrYXJpLTEuMC40OC0yMDIz
MDUyNy50YXIuZ3oKMzMzM2ZkMzg3MDEzMTliNjBhMGYzNWFlNDEzZWVhNDQgIGNhaXRzaXRoLXBh
dGNoLTAuMi0yMDIzMDUyNy50YXIuZ3oKYWFhYTAwYmNmNTI3MjMzYmU4MjZiNThiNTdkYzU4ZjYg
IGNjcy1wYXRjaC0xLjguOS0yMDIzMDUyNy50YXIuZ3oKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCnRvbW95by11c2Vycy1lbiBtYWlsaW5nIGxpc3QKdG9t
b3lvLXVzZXJzLWVuQGxpc3RzLm9zZG4ubWUKaHR0cHM6Ly9saXN0cy5vc2RuLm1lL21haWxtYW4v
bGlzdGluZm8vdG9tb3lvLXVzZXJzLWVuCg==
