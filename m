Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id 7286E91BFE0
	for <lists+tomoyo-users-en@lfdr.de>; Fri, 28 Jun 2024 15:46:48 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id A473F144F15;
	Fri, 28 Jun 2024 22:46:47 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id 04AF6144F0D
 for <tomoyo-users-en@lists.osdn.me>; Fri, 28 Jun 2024 22:46:46 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=none autolearn=disabled
 version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Fri, 28 Jun 2024 22:46:45 +0900 (JST)
Received: from fsav112.sakura.ne.jp (fsav112.sakura.ne.jp [27.133.134.239])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 45SDkgvE010152;
 Fri, 28 Jun 2024 22:46:42 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav112.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav112.sakura.ne.jp);
 Fri, 28 Jun 2024 22:46:42 +0900 (JST)
Message-ID: <080a1816-8313-4487-9853-9081d286ca8f@I-love.SAKURA.ne.jp>
Date: Fri, 28 Jun 2024 22:46:38 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: tomoyo-users-en@lists.osdn.me, Esteban Gil <styf3000@gmail.com>
References: <CA+aVzjN+mwNBDOQn_Fbfcg=7AnfH-i7enHT4JqET9XRk-Om7qg@mail.gmail.com>
Content-Language: en-US
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <CA+aVzjN+mwNBDOQn_Fbfcg=7AnfH-i7enHT4JqET9XRk-Om7qg@mail.gmail.com>
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
Subject: [tomoyo-users-en   754] Re: Save policy to disk before reboot
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

SGVsbG8uCgpPbiAyMDIzLzEwLzA1IDIzOjIxLCBFc3RlYmFuIEdpbCB3cm90ZToKPiBIaSEKPiAK
PiBJIGFtIHVzaW5nIEFrYXJpIGFuZCBJIHdhbnRlZCB0byBjYXB0dXJlIGEgZnVsbCByZWJvb3Qg
c2VxdWVuY2UgaW4gbGVhcm5pbmcKPiBtb2RlLCBhbmQgdGhlbiBvbmNlIHRoZSBzeXN0ZW0gYm9v
dHMgYWdhaW4sIGJlIGFibGUgdG8gcGljayB1cCB0aGUgcG9saWN5Cj4gd2hlcmUgaXQgbGVmdCBv
ZmYuCj4gSXMgdGhlcmUgYW55IHdheSBmb3IgQWthcmkgdG8gYXV0b21hdGljYWxseSBzYXZlIHRo
ZSBjdXJyZW50IHBvbGljeSB0byBkaXNrCj4gYmVmb3JlIHNodXR0aW5nIGRvd24/Cj4gSSB3YXMg
dGhpbmtpbmcgYWJvdXQgY3JlYXRpbmcgYSBzeXN0ZW1kIHNlcnZpY2UgdGhhdCB0cmlnZ2VycyBi
ZWZvcmUKPiByZWJvb3Qvc2h1dGRvd24gIGFuZCBzYXZlcyB0aGUgcG9saWN5IHRvIC9ldGMvY2Nz
LCBidXQgSSB3b3VsZCBsaWtlIHRvIGtub3cKPiBpZiB0aGVyZSBpcyBhbiBBa2FyaSB3YXkKPiBv
ZiBkb2luZyB0aGlzLgoKVGhlcmUgaXMgbm8gVE9NT1lPL0FLQVJJIHNwZWNpZmljIHdheSB0byBk
byBpdC4KCkEgaGludCBmb3IgZG9pbmcgaXQgaXMgdGhhdCB5b3Ugd291bGQgbmVlZCB0byByZW1v
dW50IHRoZSByb290IGZpbGVzeXN0ZW0KcmVhZC13cml0ZSBiZWZvcmUgcnVubmluZyBjY3Mtc2F2
ZXBvbGljeSBhbmQgcmVtb3VudCB0aGUgcm9vdCBmaWxlc3lzdGVtCnJlYWQtb25seSBhZnRlciBy
dW5uaW5nIGNjcy1zYXZlcG9saWN5ICwgZm9yIHRoZSByb290IGZpbGVzeXN0ZW0gc2hvdWxkIGJl
CmFscmVhZHkgcmVtb3VudGVkIHJlYWQtb25seSBieSB0aGUgbW9tZW50IHJlYm9vdCgpIHN5c3Rl
bSBjYWxsIGlzIGNhbGxlZC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCnRvbW95by11c2Vycy1lbiBtYWlsaW5nIGxpc3QKdG9tb3lvLXVzZXJzLWVuQGxp
c3RzLm9zZG4ubWUKaHR0cHM6Ly9saXN0cy5vc2RuLm1lL21haWxtYW4vbGlzdGluZm8vdG9tb3lv
LXVzZXJzLWVuCg==
