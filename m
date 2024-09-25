Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id 81802985784
	for <lists+tomoyo-users-en@lfdr.de>; Wed, 25 Sep 2024 13:02:06 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id 27898144ECD;
	Wed, 25 Sep 2024 20:02:05 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id CF7D5144EC7
 for <tomoyo-users-en@lists.osdn.me>; Wed, 25 Sep 2024 20:02:02 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=none autolearn=disabled
 version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Wed, 25 Sep 2024 20:02:02 +0900 (JST)
Received: from fsav315.sakura.ne.jp (fsav315.sakura.ne.jp [153.120.85.146])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 48PB1qBf044394;
 Wed, 25 Sep 2024 20:01:52 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav315.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav315.sakura.ne.jp);
 Wed, 25 Sep 2024 20:01:52 +0900 (JST)
Message-ID: <ca37ee54-574b-44ba-b967-ef6f8f2780f9@I-love.SAKURA.ne.jp>
Date: Wed, 25 Sep 2024 20:01:52 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: tomoyo-users-en@lists.osdn.me, Alfred Agrell <blubban@gmail.com>,
 David Drysdale <drysdale@google.com>,
 linux-security-module <linux-security-module@vger.kernel.org>
References: <d26b117d-1e13-42d1-9580-6dd6ce034c21@gmail.com>
Content-Language: en-US
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <d26b117d-1e13-42d1-9580-6dd6ce034c21@gmail.com>
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
Subject: [tomoyo-users-en 769] [PATCH] tomoyo: fallback to realpath if
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

QWxmcmVkIEFncmVsbCBmb3VuZCB0aGF0IFRPTU9ZTyBjYW5ub3QgaGFuZGxlIGV4ZWN2ZWF0KEFU
X0VNUFRZX1BBVEgpCmluc2lkZSBjaHJvb3QgZW52aXJvbm1lbnQgd2hlcmUgL2RldiBhbmQgL3By
b2MgYXJlIG5vdCBtb3VudGVkLCBmb3IKY29tbWl0IDUxZjM5YTFmMGNlYSAoInN5c2NhbGxzOiBp
bXBsZW1lbnQgZXhlY3ZlYXQoKSBzeXN0ZW0gY2FsbCIpIG1pc3NlZAp0aGF0IFRPTU9ZTyB0cmll
cyB0byBjYW5vbmljYWxpemUgYXJndlswXSB3aGVuIHRoZSBmaWxlbmFtZSBmZWQgdG8gdGhlCmV4
ZWN1dGVkIHByb2dyYW0gYXMgYXJndlswXSBpcyBzdXBwbGllZCB1c2luZyBwb3RlbnRpYWxseSBu
b25leGlzdGVudApwYXRobmFtZS4KClNpbmNlICIvZGV2L2ZkLzxmZD4iIGFscmVhZHkgbG9zdCBz
eW1saW5rIGluZm9ybWF0aW9uIHVzZWQgZm9yIG9idGFpbmluZwp0aGF0IDxmZD4sIGl0IGlzIHRv
byBsYXRlIHRvIHJlY29uc3RydWN0IHN5bWxpbmsncyBwYXRobmFtZS4gQWx0aG91Z2gKPGZpbGVu
YW1lPiBwYXJ0IG9mICIvZGV2L2ZkLzxmZD4vPGZpbGVuYW1lPiIgbWlnaHQgbm90IGJlIGNhbm9u
aWNhbGl6ZWQsClRPTU9ZTyBjYW5ub3QgdXNlIHRvbW95b19yZWFscGF0aF9ub2ZvbGxvdygpIHdo
ZW4gL2RldiBpcyBub3QgbW91bnRlZC4KClRoZXJlZm9yZSwgZmFsbGJhY2sgdG8gdG9tb3lvX3Jl
YWxwYXRoX2Zyb21fcGF0aCgpIHdoZW4KdG9tb3lvX3JlYWxwYXRoX25vZm9sbG93KCkgZmFpbGVk
LiBUaGlzIGNoYW5nZSBtYWtlcyBUT01PWU8gdW5hYmxlIHRvCnV0aWxpemUgYXJndlswXSBmb3Ig
Y29udHJvbGxpbmcgZG9tYWluIHRyYW5zaXRpb25zIGZvciBtdWx0aS1jYWxsIGJpbmFyaWVzCihl
LmcuIGJ1c3lib3gpLCBidXQgdGhpcyBjaGFuZ2Ugd291bGQgYmUgYmV0dGVyIHRoYW4gZmFpbGlu
ZyB0byBoYW5kbGUKZXhlY3ZlYXQoQVRfRU1QVFlfUEFUSCkgaW5zaWRlIGNocm9vdCBlbnZpcm9u
bWVudC4KClJlcG9ydGVkLWJ5OiBBbGZyZWQgQWdyZWxsIDxibHViYmFuQGdtYWlsLmNvbT4KQ2xv
c2VzOiBodHRwczovL2J1Z3MuZGViaWFuLm9yZy9jZ2ktYmluL2J1Z3JlcG9ydC5jZ2k/YnVnPTEw
ODIwMDEKRml4ZXM6IDUxZjM5YTFmMGNlYSAoInN5c2NhbGxzOiBpbXBsZW1lbnQgZXhlY3ZlYXQo
KSBzeXN0ZW0gY2FsbCIpClNpZ25lZC1vZmYtYnk6IFRldHN1byBIYW5kYSA8cGVuZ3Vpbi1rZXJu
ZWxASS1sb3ZlLlNBS1VSQS5uZS5qcD4KLS0tCkFsZnJlZCwgd2hhdCBkbyB5b3UgdGhpbms/IFRo
YXQgY29tbWl0IG1lbnRpb25lZAoKICBUaGlzIGRvZXMgaG93ZXZlciBtZWFuIHRoYXQgZXhlY3V0
aW9uIG9mIGEgc2NyaXB0IGluIGEgL3Byb2MtbGVzcwogIGVudmlyb25tZW50IHdvbid0IHdvcmsK
Ci4gQXJlIHlvdSBleHBlY3RpbmcgdGhhdCBleGVjdXRpb24gb2Ygbm9uLXNjcmlwdHMgaW4gYSAv
ZGV2LWxlc3MgYW5kCi9wcm9jLWxlc3MgZW52aXJvbm1lbnQgd29yaz8gSSBndWVzcyB0aGF0IG1h
am9yaXR5IG9mIHByb2dyYW1zIGRlcGVuZApvbiAvZGV2IGFuZCAvcHJvYyBiZWluZyBtb3VudGVk
IGV2ZW4gaW5zaWRlIGNocm9vdCBlbnZpcm9ubWVudC4gQnV0CmlmIHlvdSBoYXZlIHByb2dyYW1z
IGludGVuZGVkIHRvIGJlIGV4ZWN1dGVkIGluIGEgL2Rldi1sZXNzIGFuZAovcHJvYy1sZXNzIGNo
cm9vdCBlbnZpcm9ubWVudCwgdGhpcyBwYXRjaCBzaG91bGQgZml4IHRoaXMgcHJvYmxlbS4uLgoK
IHNlY3VyaXR5L3RvbW95by9kb21haW4uYyB8IDEwICsrKysrKystLS0KIDEgZmlsZSBjaGFuZ2Vk
LCA3IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc2VjdXJpdHkv
dG9tb3lvL2RvbWFpbi5jIGIvc2VjdXJpdHkvdG9tb3lvL2RvbWFpbi5jCmluZGV4IDkwYjUzNTAw
YTIzNi4uMjcyZTg0NzRkMTVmIDEwMDY0NAotLS0gYS9zZWN1cml0eS90b21veW8vZG9tYWluLmMK
KysrIGIvc2VjdXJpdHkvdG9tb3lvL2RvbWFpbi5jCkBAIC03MjMsMTAgKzcyMywxNCBAQCBpbnQg
dG9tb3lvX2ZpbmRfbmV4dF9kb21haW4oc3RydWN0IGxpbnV4X2JpbnBybSAqYnBybSkKIAllZS0+
ci5vYmogPSAmZWUtPm9iajsKIAllZS0+b2JqLnBhdGgxID0gYnBybS0+ZmlsZS0+Zl9wYXRoOwog
CS8qIEdldCBzeW1saW5rJ3MgcGF0aG5hbWUgb2YgcHJvZ3JhbS4gKi8KLQlyZXR2YWwgPSAtRU5P
RU5UOwogCWV4ZW5hbWUubmFtZSA9IHRvbW95b19yZWFscGF0aF9ub2ZvbGxvdyhvcmlnaW5hbF9u
YW1lKTsKLQlpZiAoIWV4ZW5hbWUubmFtZSkKLQkJZ290byBvdXQ7CisJaWYgKCFleGVuYW1lLm5h
bWUpIHsKKwkJLyogRmFsbGJhY2sgdG8gcmVhbHBhdGggaWYgc3ltbGluaydzIHBhdGhuYW1lIGRv
ZXMgbm90IGV4aXN0LiAqLworCQlyZXR2YWwgPSAtRU5PTUVNOworCQlleGVuYW1lLm5hbWUgPSB0
b21veW9fcmVhbHBhdGhfZnJvbV9wYXRoKCZicHJtLT5maWxlLT5mX3BhdGgpOworCQlpZiAoIWV4
ZW5hbWUubmFtZSkKKwkJCWdvdG8gb3V0OworCX0KIAl0b21veW9fZmlsbF9wYXRoX2luZm8oJmV4
ZW5hbWUpOwogcmV0cnk6CiAJLyogQ2hlY2sgJ2FnZ3JlZ2F0b3InIGRpcmVjdGl2ZS4gKi8KLS0g
CjIuNDMuNQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
dG9tb3lvLXVzZXJzLWVuIG1haWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMub3Nkbi5t
ZQpodHRwczovL2xpc3RzLm9zZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNlcnMtZW4K
