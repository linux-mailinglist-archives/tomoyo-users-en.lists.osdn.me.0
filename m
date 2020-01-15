Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (gw0.osdn.jp [202.221.179.250])
	by mail.lfdr.de (Postfix) with ESMTP id 4495A13BE54
	for <lists+tomoyo-users-en@lfdr.de>; Wed, 15 Jan 2020 12:26:31 +0100 (CET)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 sf-lists.priv.osdn.jp
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=none autolearn=disabled
 version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by sf-lists.priv.osdn.jp (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Wed, 15 Jan 2020 20:26:28 +0900 (JST)
Received: from fsav109.sakura.ne.jp (fsav109.sakura.ne.jp [27.133.134.236])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 00FBQQQM088517;
 Wed, 15 Jan 2020 20:26:26 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav109.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav109.sakura.ne.jp);
 Wed, 15 Jan 2020 20:26:26 +0900 (JST)
To: Gabriel Borges Figuera <gbf.gmv@gmail.com>
References: <CALOzowteTGe1A62WZofCCbw1tQi+KdW19XHiHmxP7pJWvOfPHA@mail.gmail.com>
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <70f2bab6-d879-df05-6789-5906b3aaae26@i-love.sakura.ne.jp>
Date: Wed, 15 Jan 2020 20:26:19 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CALOzowteTGe1A62WZofCCbw1tQi+KdW19XHiHmxP7pJWvOfPHA@mail.gmail.com>
Content-Language: en-US
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.101.4/25695/Tue Jan 14 22:34:00 2020
Subject: [tomoyo-users-en   718] Re: Akari load fails
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

SGVsbG8uCgpPbiAyMDIwLzAxLzE1IDE5OjE2LCBHYWJyaWVsIEJvcmdlcyBGaWd1ZXJhIHdyb3Rl
Ogo+IFRoZSBwcm9ibGVtIHRoYXQgSSBoYXZlIGlzIHRoYXQgd2hlbiBJIG1vZGlmeSB0aGUgZmls
ZSBsc20tNC4xMi5jIChqdXN0Cj4gYWRkaW5nIGEgcHJpbnRrKCkpIGFuZCByZWNvbXBpbGUgaXQs
IHRoZSBtb2R1bGUgbG9hZCBmYWlscy4gSXQgc2VlbXMgdG8KPiBjb25mdXNlIGFrYXJpIHdpdGgg
dG9tb3lvIGFuZCBzaG93cyB0aGF0IGlzIG5lY2Vzc2FyeSB0aGUgdXNlci1zcGFjZSB0b29scwo+
IGZvciB0b21veW8gMS44LjYuCgpJdCBzZWVtcyB0byBtZSB0aGF0IGxvYWRpbmcgb2YgQUtBUkkg
bW9kdWxlIHdhcyBzdWNjZXNzZnVsLCBidXQgc2luY2UKQUtBUkkgd2FzIGJ1aWx0IHdpdGggQ09O
RklHX0NDU0VDVVJJVFlfT01JVF9VU0VSU1BBQ0VfTE9BREVSIGRlZmluZWQsCnBvbGljeSBsb2Fk
ZXIgd2FzIG5vdCBleGVjdXRlZCB3aGVuIEFLQVJJIG1vZHVsZSB3YXMgbG9hZGVkLgpQbGVhc2Ug
dHJ5IHdpdGhvdXQgZGVmaW5pbmcgQ09ORklHX0NDU0VDVVJJVFlfT01JVF9VU0VSU1BBQ0VfTE9B
REVSLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdG9t
b3lvLXVzZXJzLWVuIG1haWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMub3Nkbi5tZQpo
dHRwczovL2xpc3RzLm9zZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNlcnMtZW4K
