Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (gw0.osdn.jp [202.221.179.250])
	by mail.lfdr.de (Postfix) with ESMTP id C31AC1749EB
	for <lists+tomoyo-users-en@lfdr.de>; Sun,  1 Mar 2020 00:05:10 +0100 (CET)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 sf-lists.priv.osdn.jp
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=none autolearn=disabled
 version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by sf-lists.priv.osdn.jp (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Sun,  1 Mar 2020 08:05:08 +0900 (JST)
Received: from fsav106.sakura.ne.jp (fsav106.sakura.ne.jp [27.133.134.233])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 01TN56uB089297;
 Sun, 1 Mar 2020 08:05:06 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav106.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav106.sakura.ne.jp);
 Sun, 01 Mar 2020 08:05:06 +0900 (JST)
To: Topi Miettinen <toiwoton@gmail.com>
References: <4fa32b94-d9a2-f49d-fa37-08ad3f7a9f53@gmail.com>
 <df81e765-cd82-2b5a-af17-4a1212848592@i-love.sakura.ne.jp>
 <614f1237-638c-e606-eb57-ee71c0bdb373@gmail.com>
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <a5c7fa37-a6c8-b775-49ae-81e2791309c9@i-love.sakura.ne.jp>
Date: Sun, 1 Mar 2020 08:04:54 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <614f1237-638c-e606-eb57-ee71c0bdb373@gmail.com>
Content-Language: en-US
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.2/25737/Sat Feb 29 21:12:46 2020
Subject: [tomoyo-users-en 723] Re: [PATCH] Add systemd service for
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

T24gMjAyMC8wMy8wMSAwOjQxLCBUb3BpIE1pZXR0aW5lbiB3cm90ZToKPiBPbiAyOS4yLjIwMjAg
Ny4zMCwgVGV0c3VvIEhhbmRhIHdyb3RlOgo+PiBIZWxsby4KPj4KPj4gT24gMjAyMC8wMi8yNCA2
OjI3LCBUb3BpIE1pZXR0aW5lbiB3cm90ZToKPj4+IEVuYWJsZSBtYW55IGhhcmRlbmluZyBmZWF0
dXJlcyBwcm92aWRlZCBieSBzeXN0ZW1kIGZvciB0b21veW8tYXVkaXRkLgo+Pj4KPj4+IFNpZ25l
ZC1vZmYtYnk6IFRvcGkgTWlldHRpbmVuIDx0b2l3b3RvbkBnbWFpbC5jb20+Cj4+PiAtLS0KPj4+
ICAgSW5jbHVkZS5tYWtlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMSArCj4+
PiAgIE1ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDEgKwo+
Pj4gICB1c3JfbGliX3N5c3RlbWRfc3lzdGVtL01ha2VmaWxlICAgICAgICAgICAgICB8ICA3ICsr
KysKPj4+ICAgdXNyX2xpYl9zeXN0ZW1kX3N5c3RlbS90b21veW8tYXVkaXRkLnNlcnZpY2UgfCAz
OSArKysrKysrKysrKysrKysrKysrKwo+Pj4gICA0IGZpbGVzIGNoYW5nZWQsIDQ4IGluc2VydGlv
bnMoKykKPj4+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IHVzcl9saWJfc3lzdGVtZF9zeXN0ZW0vTWFr
ZWZpbGUKPj4+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IHVzcl9saWJfc3lzdGVtZF9zeXN0ZW0vdG9t
b3lvLWF1ZGl0ZC5zZXJ2aWNlCj4+Cj4+IFRoYW5rIHlvdSBmb3IgYSBwYXRjaCwgYnV0IEkgY2Fu
J3QgYXBwbHkgdGhpcyBwYXRjaCBiZWNhdXNlIHRoaXMgc2VydmljZSBmaWxlIHJlcXVpcmVzCj4+
IG1vcmUgcmVjZW50IHN5c3RlbWQgdmVyc2lvbnMuIEkgZ2V0IGZvbGxvd2luZyBlcnJvcnMgb24g
c3lzdGVtZC0yMTktNjcuZWw3XzcuMy54ODZfNjQ6Cj4gCj4gU29ycnkgZm9yIHRoZSByYW50LCBi
dXQgdmVyc2lvbiAyMTkgb2Ygc3lzdGVtZCBpcyA1IHllYXJzIG9sZC4gV2h5IG9uIGVhcnRoIHdv
dWxkIGFueW9uZQo+IHVzZSB0aGF0IHRvZ2V0aGVyIHdpdGggbmV3IHZlcnNpb24gb2YgdG9tb3lv
LXRvb2xzIGZyb20gMjAyMD8gVHlwaWNhbGx5IHNvZnR3YXJlIGlzIGRldmVsb3BlZAo+IGFnYWlu
c3QgY3VycmVudCB2ZXJzaW9ucyBvZiBvdGhlciBkZXBlbmRlbnQgc29mdHdhcmUsIG9yIGF0IGxl
YXN0IGN1cnJlbnQgdmVyc2lvbnMsIHdoaWNoIGFyZQo+IGNvbW1vbiBpbiBtYWpvciBkaXN0cmli
dXRpb25zIGxpa2UgRmVkb3JhLCBEZWJpYW4gb3IgQXJjaC4gT3RoZXJ3aXNlLCBpZiB0aGVyZSBh
cmUKPiBpbmNvbXBhdGliaWxpdGllcyBvciByZWdyZXNzaW9ucyB3aXRoIHRoZSBuZXcgdmVyc2lv
bnMsIHRoaXMgd2lsbCBiZSBkaXNjb3ZlcmVkIChpbiB0aGUgd29yc3QKPiBjYXNlKSBtYW55IHll
YXJzIGFmdGVyIHRoZSBvdGhlciBwYWNrYWdlcyBoYXZlIGJlZW4gcmVsZWFzZWQuIEl0J3MgdGhl
IGpvYiBvZiB0aG9zZSBkb3duc3RyZWFtCj4gZGlzdHJpYnV0aW9ucywgd2hvIHdhbnQgdG8gc3Vw
cG9ydCBzdGFibGUgdmVyc2lvbnMgb3Igb2xkIHZlcnNpb25zIG9mIHRoZSBzb2Z0d2FyZSwgdG8g
YmFja3BvcnQKPiBvciByZW1vdmUgbmV3IGZlYXR1cmVzIHdoaWNoIGFyZSBub3QgeWV0IGF2YWls
YWJsZSBpbiB0aGUgb2xkIHZlcnNpb25zIG9mIG90aGVyIHBhY2thZ2VzLgoKRXhjdXNlIG1lLCBi
dXQgdmVyc2lvbiAyMTktNjcuZWw3XzcuMyBvZiBzeXN0ZW1kIGlzIHRoZSBsYXRlc3QgdmVyc2lv
biBmb3IgUkhFTDcvQ2VudE9TNyB1c2Vycy4KSSBhbSBkZXZlbG9waW5nIGxhdGVzdCBrZXJuZWxz
IG9uIENlbnRPUzcuIERldmVsb3BpbmcgYW5kIHRlc3Rpbmcgb24gdmFyaW91cyBlbnZpcm9ubWVu
dHMvCnBsYXRmb3JtcyBpcyBnb29kIGZvciBmaW5kaW5nIGluY29tcGF0aWJpbGl0aWVzL3JlZ3Jl
c3Npb25zLiBCdXQgSSBjYW4ndCBhZmZvcmQgdGVzdGluZyBhbGwKZGlzdHJpYnV0aW9uL3BsYXRm
b3JtJ3MgYWxsIGFwcGxpY2F0aW9ucy4gVGh1cywgYnVnIHJlcG9ydHMgZnJvbSB1c2VycyAobGlr
ZQpodHRwczovL29zZG4ubmV0Ly9wcm9qZWN0cy90b21veW8vdGlja2V0LzQwMDEyICkgYXJlIHdl
bGNvbWVkLgoKPiAKPiBCdXQgaWYgeW91IGluc2lzdCwgSSBjYW4gY29tbWVudCBvdXQgdGhlIGxp
bmVzIGFuZCBhZGQgYSBjb21tZW50IHN0YXRpbmcgdGhhdCBpdCdzIHJlY29tbWVuZGVkCj4gdG8g
ZW5hYmxlIHRoZXNlIGZvciBjdXJyZW50IHZlcnNpb25zIHN5c3RlbWQuCgpBbHNvLCB0aGVyZSBh
cmUgZGlzdHJpYnV0aW9ucyB3aGljaCBkbyBub3QgdXNlIHN5c3RlbWQuIEl0IHdvdWxkIGJlIHBv
c3NpYmxlIHRvIGluY2x1ZGUgdGhpcyBzZXJ2aWNlCmZpbGUgaW50byB0aGUgdGFyIGJhbGwgb3Ig
dGhlIG9ubGluZSBkb2N1bWVudGF0aW9uLCBidXQgSSBkb24ndCB3YW50IHRvIHVuY29uZGl0aW9u
YWxseSBpbnN0YWxsIHRoaXMKc2VydmljZSBmaWxlLiBUaHVzLCBJIGluc2lzdCB0aGF0IEkgY2Fu
J3QgYXBwbHkgdGhpcyBjaGFuZ2Ugd2hpY2ggdW5jb25kaXRpb25hbGx5IHJlcXVpcmVzCmF2YWls
YWJpbGl0eSBvZiB1cHN0cmVhbSBsYXRlc3Qgc3lzdGVtZC4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCnRvbW95by11c2Vycy1lbiBtYWlsaW5nIGxpc3QK
dG9tb3lvLXVzZXJzLWVuQGxpc3RzLm9zZG4ubWUKaHR0cHM6Ly9saXN0cy5vc2RuLm1lL21haWxt
YW4vbGlzdGluZm8vdG9tb3lvLXVzZXJzLWVuCg==
