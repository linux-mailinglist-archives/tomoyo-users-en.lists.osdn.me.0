Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (gw0.osdn.jp [202.221.179.250])
	by mail.lfdr.de (Postfix) with ESMTP id B842116A628
	for <lists+tomoyo-users-en@lfdr.de>; Mon, 24 Feb 2020 13:31:51 +0100 (CET)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 sf-lists.priv.osdn.jp
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=FREEMAIL_FROM,T_DKIM_INVALID
 autolearn=disabled version=3.4.2
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
 [209.85.167.54]) by sf-lists.priv.osdn.jp (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Mon, 24 Feb 2020 06:27:17 +0900 (JST)
Received: by mail-lf1-f54.google.com with SMTP id u2so2676527lfk.13
 for <tomoyo-users-en@lists.osdn.me>; Sun, 23 Feb 2020 13:27:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=zzpzyOmboPBKVgC684Ju78LIa+CiT+tlzFAzUOS6rEo=;
 b=QXxs2ajzD23iBEtnGSXUWHMW1jVJuQKqrWNzaGUA514/OUwN+JGtL+pUzJhCJ2bHTE
 pVbAHwxonJKXlQCqhJRwEZkXRNbSyu2/vMMN0/ypNklILCkEkTcWnVSNn634kXD2K1Rj
 Acf7cSdqYiQxWtsjRT5PW6eT17Azb2ndcxIyjZUNv6OT45ndMiArrYeJzeIyHiqpQL/2
 a6ExGH4s4H/yVoPmeOITBkizilOxGIUm0jQ1bddmEIQdnuC0OO7GIyR7aXbCmhni4DUX
 f1GEXHyFj3K8YAuO+qSDQx1KyiLlbTF63il2BYCHt3v66GWRSFLMJokO9CG5EzxRM/b5
 lHbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=zzpzyOmboPBKVgC684Ju78LIa+CiT+tlzFAzUOS6rEo=;
 b=JBGK22Z5IfnQkZTCyIyMlkYWhGs4w7CQpA9y8kNGTy8KARXLeD0iC9yuxihRdQx7+U
 xhqmTpfQjafRButcefq7kWqBvLILZyZeERstpt+DcRWb1KEYv7KRZd4mBWZkvka/iQ+f
 WesbMXJTjQ2XhNEfJ9rTUx/cc6MAN7v+w5YyKHLPOe3kKDxw2/oNyeHGKzR8QPSIEKOX
 5fz0ds9LUBBR570zEuEDbl7GQ/VvMyKpXUz0nIDdUxTTidYpcyHh+g9s4WXmYEt2QGa/
 AG43vOzfElw7XF+51EBGC6kHBdiryDeTAD+J09ZkJk7xvm0Tvs7erJCDGW2JzCk7KlaM
 M5Ig==
X-Gm-Message-State: APjAAAUae2mWVe33t74fP2ilAh+O3sxxypVtBjQQKB7PlXSSKSYM0GeZ
 tDd/m/AhmvFKoPgsyYO4BW3ZAFmv
X-Google-Smtp-Source: APXvYqwLvkjVW6fPITcIcE9MDqPhx7juz5Gu9ls1CgegeZUIoWcKBFm/3zGUNgVZc0h0vYYRKv2mbA==
X-Received: by 2002:a19:2396:: with SMTP id
 j144mr11586267lfj.113.1582493235114; 
 Sun, 23 Feb 2020 13:27:15 -0800 (PST)
To: tomoyo-users-en@lists.osdn.me
From: Topi Miettinen <toiwoton@gmail.com>
Message-ID: <4fa32b94-d9a2-f49d-fa37-08ad3f7a9f53@gmail.com>
Date: Sun, 23 Feb 2020 23:27:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Language: en-US
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.1/25732/Sun Feb 23 23:08:15 2020
X-Mailman-Approved-At: Mon, 24 Feb 2020 21:31:47 +0900
Subject: [tomoyo-users-en 720] [PATCH] Add systemd service for tomoyo-auditd
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

RW5hYmxlIG1hbnkgaGFyZGVuaW5nIGZlYXR1cmVzIHByb3ZpZGVkIGJ5IHN5c3RlbWQgZm9yIHRv
bW95by1hdWRpdGQuCgpTaWduZWQtb2ZmLWJ5OiBUb3BpIE1pZXR0aW5lbiA8dG9pd290b25AZ21h
aWwuY29tPgotLS0KICBJbmNsdWRlLm1ha2UgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8ICAxICsKICBNYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8
ICAxICsKICB1c3JfbGliX3N5c3RlbWRfc3lzdGVtL01ha2VmaWxlICAgICAgICAgICAgICB8ICA3
ICsrKysKICB1c3JfbGliX3N5c3RlbWRfc3lzdGVtL3RvbW95by1hdWRpdGQuc2VydmljZSB8IDM5
ICsrKysrKysrKysrKysrKysrKysrCiAgNCBmaWxlcyBjaGFuZ2VkLCA0OCBpbnNlcnRpb25zKCsp
CiAgY3JlYXRlIG1vZGUgMTAwNjQ0IHVzcl9saWJfc3lzdGVtZF9zeXN0ZW0vTWFrZWZpbGUKICBj
cmVhdGUgbW9kZSAxMDA2NDQgdXNyX2xpYl9zeXN0ZW1kX3N5c3RlbS90b21veW8tYXVkaXRkLnNl
cnZpY2UKCmRpZmYgLS1naXQgYS9JbmNsdWRlLm1ha2UgYi9JbmNsdWRlLm1ha2UKaW5kZXggZmYw
ODQ1MS4uZGY4ZWZhOSAxMDA2NDQKLS0tIGEvSW5jbHVkZS5tYWtlCisrKyBiL0luY2x1ZGUubWFr
ZQpAQCAtMiw2ICsyLDcgQEAgSU5TVEFMTCAgICAgICAgIDo9IGluc3RhbGwKICBTQklORElSICAg
ICAgICAgOj0gL3NiaW4KICBVU1JTQklORElSICAgICAgOj0gL3Vzci9zYmluCiAgVVNSTElCRElS
ICAgICAgIDo9IC91c3IvbGliCitTRVJWSUNFRElSICAgICAgOj0gL3Vzci9saWIvc3lzdGVtZC9z
eXN0ZW0KICBNQU44ICAgICAgICAgICAgOj0gL3Vzci9zaGFyZS9tYW4vbWFuOAogIGlmbmRlZiBD
RkxBR1MKICBDRkxBR1MgICAgICAgICAgOj0gLVdhbGwgLU8yCmRpZmYgLS1naXQgYS9NYWtlZmls
ZSBiL01ha2VmaWxlCmluZGV4IGU0MTU4MjMuLjYwNmNiZmMgMTAwNjQ0Ci0tLSBhL01ha2VmaWxl
CisrKyBiL01ha2VmaWxlCkBAIC04LDYgKzgsNyBAQCBpbnN0YWxsOiBhbGwKICAgICAgICAgJChN
QUtFKSAtQyB1c3Jfc2JpbiBpbnN0YWxsCiAgICAgICAgICQoTUFLRSkgLUMgdXNyX2xpYl90b21v
eW8gaW5zdGFsbAogICAgICAgICAkKE1BS0UpIC1DIHVzcl9zaGFyZV9tYW4gaW5zdGFsbAorICAg
ICAgICQoTUFLRSkgLUMgdXNyX2xpYl9zeXN0ZW1kX3N5c3RlbSBpbnN0YWxsCgogIGNsZWFuOgog
ICMjCmRpZmYgLS1naXQgYS91c3JfbGliX3N5c3RlbWRfc3lzdGVtL01ha2VmaWxlIApiL3Vzcl9s
aWJfc3lzdGVtZF9zeXN0ZW0vTWFrZWZpbGUKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAw
MDAwMC4uZTM3NTJhNAotLS0gL2Rldi9udWxsCisrKyBiL3Vzcl9saWJfc3lzdGVtZF9zeXN0ZW0v
TWFrZWZpbGUKQEAgLTAsMCArMSw3IEBACitpbmNsdWRlIC4uL0luY2x1ZGUubWFrZQorCitpbnN0
YWxsOgorICAgICAgIG1rZGlyIC1wIC1tIDA3NTUgJChJTlNUQUxMRElSKSQoU0VSVklDRURJUikK
KyAgICAgICAkKElOU1RBTEwpIC1tIDA2NDQgKi5zZXJ2aWNlICQoSU5TVEFMTERJUikkKFNFUlZJ
Q0VESVIpCisKKy5QSE9OWTogaW5zdGFsbApkaWZmIC0tZ2l0IGEvdXNyX2xpYl9zeXN0ZW1kX3N5
c3RlbS90b21veW8tYXVkaXRkLnNlcnZpY2UgCmIvdXNyX2xpYl9zeXN0ZW1kX3N5c3RlbS90b21v
eW8tYXVkaXRkLnNlcnZpY2UKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMC4uYTJk
MmQ1NQotLS0gL2Rldi9udWxsCisrKyBiL3Vzcl9saWJfc3lzdGVtZF9zeXN0ZW0vdG9tb3lvLWF1
ZGl0ZC5zZXJ2aWNlCkBAIC0wLDAgKzEsMzkgQEAKK1tVbml0XQorQmVmb3JlPXN5c2luaXQudGFy
Z2V0IHNodXRkb3duLnRhcmdldAorQ29uZGl0aW9uU2VjdXJpdHk9dG9tb3lvCitEZWZhdWx0RGVw
ZW5kZW5jaWVzPW5vCitSZXF1aXJlc01vdW50c0Zvcj0vdmFyIC9zeXMKKworW1NlcnZpY2VdCitD
YXBhYmlsaXR5Qm91bmRpbmdTZXQ9CitEZXZpY2VBbGxvdz0vZGV2L251bGwKK0RldmljZVBvbGlj
eT1zdHJpY3QKK0V4ZWNTdGFydD0vdXNyL3NiaW4vdG9tb3lvLWF1ZGl0ZAorSVBBZGRyZXNzRGVu
eT1hbnkKK0xvY2tQZXJzb25hbGl0eT15ZXMKK01lbW9yeURlbnlXcml0ZUV4ZWN1dGU9eWVzCitO
b05ld1ByaXZpbGVnZXM9eWVzCitQcml2YXRlRGV2aWNlcz15ZXMKK1ByaXZhdGVOZXR3b3JrPXll
cworUHJpdmF0ZVRtcD15ZXMKK1ByaXZhdGVVc2Vycz15ZXMKK1Byb3RlY3RDb250cm9sR3JvdXBz
PXllcworUHJvdGVjdEhvbWU9eWVzCitQcm90ZWN0SG9zdG5hbWU9eWVzCitQcm90ZWN0S2VybmVs
TG9ncz15ZXMKK1Byb3RlY3RLZXJuZWxNb2R1bGVzPXllcworUHJvdGVjdEtlcm5lbFR1bmFibGVz
PXllcworUHJvdGVjdFN5c3RlbT1zdHJpY3QKK1Jlc3RhcnQ9YWx3YXlzCitSZXN0cmljdEFkZHJl
c3NGYW1pbGllcz0KK1Jlc3RyaWN0TmFtZXNwYWNlcz15ZXMKK1Jlc3RyaWN0UmVhbHRpbWU9eWVz
CitSZXN0cmljdFNVSURTR0lEPXllcworU3lzdGVtQ2FsbEFyY2hpdGVjdHVyZXM9bmF0aXZlCitT
eXN0ZW1DYWxsRmlsdGVyPUBzeXN0ZW0tc2VydmljZQorU3lzdGVtQ2FsbEZpbHRlcj1+QGNob3du
IEBjbG9jayBAY3B1LWVtdWxhdGlvbiBAZGVidWcgQGlwYyBAbW9kdWxlIApAbW91bnQgQG9ic29s
ZXRlIEBwcml2aWxlZ2VkIEByYXctaW8gQHJlYm9vdCBAcmVzb3VyY2VzIEBzd2FwIAptZW1mZF9j
cmVhdGUgbWluY29yZSBtbG9jayBtbG9ja2FsbCBwZXJzb25hbGl0eQorVHlwZT1mb3JraW5nCitV
TWFzaz0wMDc3CisKK1tJbnN0YWxsXQorV2FudGVkQnk9bXVsdGktdXNlci50YXJnZXQKLS0gCjIu
MjUuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdG9t
b3lvLXVzZXJzLWVuIG1haWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMub3Nkbi5tZQpo
dHRwczovL2xpc3RzLm9zZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNlcnMtZW4K
