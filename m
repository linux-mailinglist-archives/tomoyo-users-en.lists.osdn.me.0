Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (gw0.osdn.jp [202.221.179.250])
	by mail.lfdr.de (Postfix) with ESMTP id 3466A17453D
	for <lists+tomoyo-users-en@lfdr.de>; Sat, 29 Feb 2020 06:30:57 +0100 (CET)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 sf-lists.priv.osdn.jp
X-Spam-Level: *
X-Spam-Status: No, score=1.0 required=7.0 tests=ENCODING_8BIT
 autolearn=disabled version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by sf-lists.priv.osdn.jp (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Sat, 29 Feb 2020 14:30:54 +0900 (JST)
Received: from fsav106.sakura.ne.jp (fsav106.sakura.ne.jp [27.133.134.233])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 01T5Uh4j051706;
 Sat, 29 Feb 2020 14:30:43 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav106.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav106.sakura.ne.jp);
 Sat, 29 Feb 2020 14:30:43 +0900 (JST)
To: Topi Miettinen <toiwoton@gmail.com>
References: <4fa32b94-d9a2-f49d-fa37-08ad3f7a9f53@gmail.com>
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <df81e765-cd82-2b5a-af17-4a1212848592@i-love.sakura.ne.jp>
Date: Sat, 29 Feb 2020 14:30:39 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <4fa32b94-d9a2-f49d-fa37-08ad3f7a9f53@gmail.com>
Content-Language: en-US
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.2/25736/Fri Feb 28 21:05:55 2020
Subject: [tomoyo-users-en 721] Re: [PATCH] Add systemd service for
 tomoyo-auditd
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

SGVsbG8uCgpPbiAyMDIwLzAyLzI0IDY6MjcsIFRvcGkgTWlldHRpbmVuIHdyb3RlOgo+IEVuYWJs
ZSBtYW55IGhhcmRlbmluZyBmZWF0dXJlcyBwcm92aWRlZCBieSBzeXN0ZW1kIGZvciB0b21veW8t
YXVkaXRkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFRvcGkgTWlldHRpbmVuIDx0b2l3b3RvbkBnbWFp
bC5jb20+Cj4gLS0tCj4gwqBJbmNsdWRlLm1ha2XCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAxICsKPiDCoE1ha2VmaWxl
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHzCoCAxICsKPiDCoHVzcl9saWJfc3lzdGVtZF9zeXN0ZW0vTWFrZWZp
bGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgNyArKysrCj4gwqB1c3JfbGliX3N5c3Rl
bWRfc3lzdGVtL3RvbW95by1hdWRpdGQuc2VydmljZSB8IDM5ICsrKysrKysrKysrKysrKysrKysr
Cj4gwqA0IGZpbGVzIGNoYW5nZWQsIDQ4IGluc2VydGlvbnMoKykKPiDCoGNyZWF0ZSBtb2RlIDEw
MDY0NCB1c3JfbGliX3N5c3RlbWRfc3lzdGVtL01ha2VmaWxlCj4gwqBjcmVhdGUgbW9kZSAxMDA2
NDQgdXNyX2xpYl9zeXN0ZW1kX3N5c3RlbS90b21veW8tYXVkaXRkLnNlcnZpY2UKClRoYW5rIHlv
dSBmb3IgYSBwYXRjaCwgYnV0IEkgY2FuJ3QgYXBwbHkgdGhpcyBwYXRjaCBiZWNhdXNlIHRoaXMg
c2VydmljZSBmaWxlIHJlcXVpcmVzCm1vcmUgcmVjZW50IHN5c3RlbWQgdmVyc2lvbnMuIEkgZ2V0
IGZvbGxvd2luZyBlcnJvcnMgb24gc3lzdGVtZC0yMTktNjcuZWw3XzcuMy54ODZfNjQ6CgogIFVu
a25vd24gbHZhbHVlICdJUEFkZHJlc3NEZW55JyBpbiBzZWN0aW9uICdTZXJ2aWNlJwogIFVua25v
d24gbHZhbHVlICdMb2NrUGVyc29uYWxpdHknIGluIHNlY3Rpb24gJ1NlcnZpY2UnCiAgVW5rbm93
biBsdmFsdWUgJ01lbW9yeURlbnlXcml0ZUV4ZWN1dGUnIGluIHNlY3Rpb24gJ1NlcnZpY2UnCiAg
VW5rbm93biBsdmFsdWUgJ1ByaXZhdGVVc2VycycgaW4gc2VjdGlvbiAnU2VydmljZScKICBVbmtu
b3duIGx2YWx1ZSAnUHJvdGVjdENvbnRyb2xHcm91cHMnIGluIHNlY3Rpb24gJ1NlcnZpY2UnCiAg
VW5rbm93biBsdmFsdWUgJ1Byb3RlY3RIb3N0bmFtZScgaW4gc2VjdGlvbiAnU2VydmljZScKICBV
bmtub3duIGx2YWx1ZSAnUHJvdGVjdEtlcm5lbExvZ3MnIGluIHNlY3Rpb24gJ1NlcnZpY2UnCiAg
VW5rbm93biBsdmFsdWUgJ1Byb3RlY3RLZXJuZWxNb2R1bGVzJyBpbiBzZWN0aW9uICdTZXJ2aWNl
JwogIFVua25vd24gbHZhbHVlICdQcm90ZWN0S2VybmVsVHVuYWJsZXMnIGluIHNlY3Rpb24gJ1Nl
cnZpY2UnCiAgRmFpbGVkIHRvIHBhcnNlIHByb3RlY3Qgc3lzdGVtIHZhbHVlLCBpZ25vcmluZzog
c3RyaWN0CiAgVW5rbm93biBsdmFsdWUgJ1Jlc3RyaWN0TmFtZXNwYWNlcycgaW4gc2VjdGlvbiAn
U2VydmljZScKICBVbmtub3duIGx2YWx1ZSAnUmVzdHJpY3RSZWFsdGltZScgaW4gc2VjdGlvbiAn
U2VydmljZScKICBVbmtub3duIGx2YWx1ZSAnUmVzdHJpY3RTVUlEU0dJRCcgaW4gc2VjdGlvbiAn
U2VydmljZScKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CnRvbW95by11c2Vycy1lbiBtYWlsaW5nIGxpc3QKdG9tb3lvLXVzZXJzLWVuQGxpc3RzLm9zZG4u
bWUKaHR0cHM6Ly9saXN0cy5vc2RuLm1lL21haWxtYW4vbGlzdGluZm8vdG9tb3lvLXVzZXJzLWVu
Cg==
