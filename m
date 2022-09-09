Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id AC7E25B3C60
	for <lists+tomoyo-users-en@lfdr.de>; Fri,  9 Sep 2022 17:51:42 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id 25325144E68;
	Sat, 10 Sep 2022 00:51:41 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id 33DC1144E57
 for <tomoyo-users-en@lists.osdn.me>; Sat, 10 Sep 2022 00:51:39 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=none autolearn=disabled
 version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Sat, 10 Sep 2022 00:51:38 +0900 (JST)
Received: from fsav116.sakura.ne.jp (fsav116.sakura.ne.jp [27.133.134.243])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 289Fpavl079502;
 Sat, 10 Sep 2022 00:51:36 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav116.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav116.sakura.ne.jp);
 Sat, 10 Sep 2022 00:51:36 +0900 (JST)
Message-ID: <421d906f-802a-3603-7d99-d1cff6c95dce@I-love.SAKURA.ne.jp>
Date: Sat, 10 Sep 2022 00:51:35 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: Manuel Bessler <manuel.bessler@gmail.com>
References: <CAKSdS8K1n=qp_=oqvKSqfut-FoPfQQJYJ7wmXJguM2sjamAdAw@mail.gmail.com>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <CAKSdS8K1n=qp_=oqvKSqfut-FoPfQQJYJ7wmXJguM2sjamAdAw@mail.gmail.com>
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
Subject: [tomoyo-users-en 744] Re: Caitsith build issue on aarch64 on kernel
 > 5.8
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

SGVsbG8uCgpPbiAyMDIyLzA5LzA4IDE6MTYsIE1hbnVlbCBCZXNzbGVyIHdyb3RlOgo+IEkgaG9w
ZSB0aGlzIGlzIHRoZSByaWdodCBwbGFjZSB0byBhc2sgQ2FpdGhzaXRoIHF1ZXN0aW9ucy4uLgoK
WWVzLCB5b3UgY2FuIGFzayBUT01PWU8vQUtBUkkvQ2FpdFNpdGggcXVlc3Rpb25zIGhlcmUuCgo+
IAo+IEkgcmFuIGludG8gdGhlIGZvbGxvd2luZyBidWlsZCBpc3N1ZSBvbiBBUk02NCBvbiBrZXJu
ZWwgPjUuOCAoNS4xNSBpbgo+IG15IGNhc2UpIGluIGxzbS00LjEyLmMgdHJ5aW5nIHRvIGNvbXBp
bGUgY2FpdHNpdGgtbW9kLTAuMi0yMDIyMDYyMToKPiAKPiBXaGF0IGlzIHRoZSBjb3JyZWN0IHdh
eSB0byBmaXggdGhpcz8KPiAKCkkgdXBkYXRlZCB0byB1c2UgY29weV90b19rZXJuZWxfbm9mYXVs
dCgpIChyZW5hbWVkIGZyb20gcHJvYmVfa2VybmVsX3dyaXRlKCkgaW4ga2VybmVsIDUuOCkuClBs
ZWFzZSB0cnkgaHR0cHM6Ly9vc2RuLm5ldC9wcm9qZWN0cy9jYWl0c2l0aC9zY20vc3ZuL3RyZWUv
MzcxL3RydW5rL2NhaXRzaXRoLXBhdGNoL2NhaXRzaXRoLyAuCgpCeSB0aGUgd2F5LCBpZiBJIHJl
Y2FsbCBjb3JyZWN0bHksIHByb2JlX3NlY3VyaXR5X2hvb2tfaGVhZHNfb25fYXJtNjQoKSBpbiBw
cm9iZS5jIG5lZWRzIHRvCmJlIHVwZGF0ZWQuIEJ1dCBJJ20gbm90IGZhbWlsaWFyIHdpdGggQVJN
IGFzc2VtYmx5LiBJcyBzb21lb25lIGZhbWlsaWFyIHdpdGggQVJNNjQgYXNzZW1ibHk/CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0b21veW8tdXNlcnMt
ZW4gbWFpbGluZyBsaXN0CnRvbW95by11c2Vycy1lbkBsaXN0cy5vc2RuLm1lCmh0dHBzOi8vbGlz
dHMub3Nkbi5tZS9tYWlsbWFuL2xpc3RpbmZvL3RvbW95by11c2Vycy1lbgo=
