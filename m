Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id A04C79316F0
	for <lists+tomoyo-users-en@lfdr.de>; Mon, 15 Jul 2024 16:38:39 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id 0826F144E9D;
	Mon, 15 Jul 2024 23:38:39 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id E20EE144E95
 for <tomoyo-users-en@lists.osdn.me>; Mon, 15 Jul 2024 23:38:37 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=none autolearn=disabled
 version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Mon, 15 Jul 2024 23:38:37 +0900 (JST)
Received: from fsav314.sakura.ne.jp (fsav314.sakura.ne.jp [153.120.85.145])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 46FEcb6Y068405
 for <tomoyo-users-en@lists.osdn.me>; Mon, 15 Jul 2024 23:38:37 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav314.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav314.sakura.ne.jp);
 Mon, 15 Jul 2024 23:38:37 +0900 (JST)
Message-ID: <5e7086b8-a573-4a23-b901-097d3f024a74@I-love.SAKURA.ne.jp>
Date: Mon, 15 Jul 2024 23:38:37 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: tomoyo-users-en@lists.osdn.me
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
Subject: [tomoyo-users-en 757] TOMOYO 1.8.11 / AKARI 1.0.50 / CaitSith
 0.2-20240715 released
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

SGVsbG8uCgpJIHJlbGVhc2VkIFRPTU9ZTyAxLjguMTEgLyBBS0FSSSAxLjAuNTAgLyBDYWl0U2l0
aCAwLjIuMTMgd2hpY2ggZml4ZWQgYnVncyByZXBvcnRlZAphdCBodHRwczovL29zZG4ubmV0L3By
b2plY3RzL3RvbW95by9saXN0cy9hcmNoaXZlL3VzZXJzLWVuLzIwMjMtT2N0b2Jlci8wMDA3NDgu
aHRtbCAuCgogIGFrYXJpLTEuMC41MC0yMDI0MDcxNS50YXIuZ3ogICAgICAgTUQ1OiBkZGRkYWYz
NjA3Y2I3M2E1OGQxNzIyMTRlMGNhZTU2NAogIGNhaXRzaXRoLXBhdGNoLTAuMi0yMDI0MDcxNS50
YXIuZ3ogTUQ1OiA1NTU1YWRmOTA4MmRkNzYwYWU1ZmYzOGZiOWE2Y2I1OQogIGNjcy1wYXRjaC0x
LjguMTEtMjAyNDA3MTUudGFyLmd6ICAgTUQ1OiA1NTU1ODczODFmYmNhYTA1NWM3NTE0OWNkNjhl
YWRiNQoKUmVnYXJkcy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCnRvbW95by11c2Vycy1lbiBtYWlsaW5nIGxpc3QKdG9tb3lvLXVzZXJzLWVuQGxpc3Rz
Lm9zZG4ubWUKaHR0cHM6Ly9saXN0cy5vc2RuLm1lL21haWxtYW4vbGlzdGluZm8vdG9tb3lvLXVz
ZXJzLWVuCg==
