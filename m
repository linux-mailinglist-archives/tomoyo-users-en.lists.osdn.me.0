Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id C4D6191BFF1
	for <lists+tomoyo-users-en@lfdr.de>; Fri, 28 Jun 2024 15:51:05 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id 15919144F1F;
	Fri, 28 Jun 2024 22:51:05 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id 09015144F17
 for <tomoyo-users-en@lists.osdn.me>; Fri, 28 Jun 2024 22:51:03 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=none autolearn=disabled
 version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Fri, 28 Jun 2024 22:51:02 +0900 (JST)
Received: from fsav312.sakura.ne.jp (fsav312.sakura.ne.jp [153.120.85.143])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 45SDp0OC010997;
 Fri, 28 Jun 2024 22:51:00 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav312.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav312.sakura.ne.jp);
 Fri, 28 Jun 2024 22:51:00 +0900 (JST)
Message-ID: <7fc405c2-6a04-40a3-a955-61780f689e50@I-love.SAKURA.ne.jp>
Date: Fri, 28 Jun 2024 22:49:41 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: tomoyo-users-en@lists.osdn.me, Esteban Gil <styf3000@gmail.com>
References: <CA+aVzjOwMez3OHY6ftpc1cb_D0zoFZH0hO15Gv1V5gXECFsj+A@mail.gmail.com>
Content-Language: en-US
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <CA+aVzjOwMez3OHY6ftpc1cb_D0zoFZH0hO15Gv1V5gXECFsj+A@mail.gmail.com>
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
Subject: [tomoyo-users-en   755] Re: Process execution control by user
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

T24gMjAyMy8xMC8wNSAyMzo1NCwgRXN0ZWJhbiBHaWwgd3JvdGU6Cj4gSGVsbG8hCj4gCj4gV2hp
bGUgZGlnZ2luZyBpbnRvIHRoZSBhdWRpdCBsb2dzLCBJIG5vdGljZWQgdGhhdCAiZmlsZSBleGVj
dXRlIiBldmVudHMKPiBkdW1wIGVudnBbXSBpbmZvLCB3aGljaCBjb250YWlucyB0aGUgdmFyaWFi
bGUgVVNFUk5BTUUgdGhhdCBzaG93cyB3aGljaAo+IHVzZXIgaGFzIGxhdW5jaGVkIHRoZSBwcm9j
ZXNzLgo+IFRoaXMgdGVsbHMgbWUgdGhhdCBBa2FyaSBpcyBhYmxlIHRvIGtub3cgd2hpY2ggdXNl
ciBpcyBsYXVuY2hpbmcgdGhlCj4gcHJvZ3JhbS4gSSB3YXMgd29uZGVyaW5nIGlmIGltcGxlbWVu
dGluZyBzb21lIHNvcnQgb2YgcHJvY2VzcyBleGVjdXRpb24KPiByZXN0cmljdGlvbiBieSB1c2Vy
IGlzIHNvbWV0aGluZyB0aGF0IGlzCj4gYmVpbmcgY29uc2lkZXJlZCBvciBpZiBpdCBoYXMgZXZl
ciBiZWVuIGNvbnNpZGVyZWQgYW5kIGRpc2NhcmRlZC4gQ3VyaW91cwo+IHRvIGtub3csIHNpbmNl
IEkgdGhpbmsgaXQgY291bGQgYmUgcXVpdGUgcG93ZXJmdWwgYW5kIHVzZWZ1bC4KCkkgdGhpbmsg
dGhhdCBDYWl0U2l0aCAoIGh0dHBzOi8vY2FpdHNpdGguc291cmNlZm9yZ2UubmV0LyApIGZpdHMg
YmV0dGVyLgpZb3UgY2FuIGNoZWNrIGh0dHBzOi8vSS1sb3ZlLlNBS1VSQS5uZS5qcC90b21veW8v
Q2FpdFNpdGgtZW4ucGRmIC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCnRvbW95by11c2Vycy1lbiBtYWlsaW5nIGxpc3QKdG9tb3lvLXVzZXJzLWVuQGxp
c3RzLm9zZG4ubWUKaHR0cHM6Ly9saXN0cy5vc2RuLm1lL21haWxtYW4vbGlzdGluZm8vdG9tb3lv
LXVzZXJzLWVuCg==
