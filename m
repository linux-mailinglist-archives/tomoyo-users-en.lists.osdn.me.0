Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (gw0.osdn.jp [202.221.179.250])
	by mail.lfdr.de (Postfix) with ESMTP id 28DA618555E
	for <lists+tomoyo-users-en@lfdr.de>; Sat, 14 Mar 2020 11:22:50 +0100 (CET)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 sf-lists.priv.osdn.jp
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=none autolearn=disabled
 version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by sf-lists.priv.osdn.jp (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Sat, 14 Mar 2020 19:22:48 +0900 (JST)
Received: from fsav402.sakura.ne.jp (fsav402.sakura.ne.jp [133.242.250.101])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 02EAMkv6057877;
 Sat, 14 Mar 2020 19:22:46 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav402.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav402.sakura.ne.jp);
 Sat, 14 Mar 2020 19:22:46 +0900 (JST)
To: Manuel Bessler <manuel.bessler@gmail.com>
References: <CAKSdS8LsdbQT7CfRSkDRYQ_5wKOH4Aj8euZ9+e5ZBqSZyO+SZA@mail.gmail.com>
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <a7c70b14-cfd0-b007-b0c7-c075237aaccc@i-love.sakura.ne.jp>
Date: Sat, 14 Mar 2020 19:22:37 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAKSdS8LsdbQT7CfRSkDRYQ_5wKOH4Aj8euZ9+e5ZBqSZyO+SZA@mail.gmail.com>
Content-Language: en-US
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.2/25750/Fri Mar 13 22:03:09 2020
Subject: [tomoyo-users-en 726] Re: domain_policy output from learning mode
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

SGVsbG8uCgpPbiAyMDIwLzAzLzE0IDE6NDksIE1hbnVlbCBCZXNzbGVyIHdyb3RlOgo+IDEuIFRo
ZSBsZWFybmluZy1tb2RlIGdlbmVyYXRlZCBkb21haW4gcG9saWN5IGhhcyBhIGNvdXBsZSBvZiBj
b21iaW5hdGlvbnMgb2YgcnVsZXMgYWRkZWQgbGlrZQo+ICAgIGZpbGUgZ2V0YXR0ciA8ZmlsZT4K
PiAgICBmaWxlIHJlYWQvZ2V0YXR0ciA8ZmlsZT4KPiAgICBmaWxlIGdldGF0dHIvdHJ1bmNhdGUg
PGZpbGU+Cj4gICAgZmlsZSByZWFkL3dyaXRlL2dldGF0dHIgPGZpbGU+Cj4gICAgZmlsZSByZWFk
L3dyaXRlIDxmaWxlPgo+ICAgIGZpbGUgYXBwZW5kL2dldGF0dHIgPGZpbGU+Cj4gCj4gICAgQ2Fu
IEkganVzdCBsaXN0IHRoZXNlIHNlcGFyYXRlbHksIG9yIGNvbWJpbmUgdGhlbiBpbiBkaWZmZXJl
bnQgd2F5cyB0byBtYWtlID8gRm9yIGV4YW1wbGU6Cj4gICAgZmlsZSBnZXRhdHRyIDxhbnktZmls
ZT4KPiAgICBmaWxlIGNyZWF0ZS9hcHBlbmQvd3JpdGUvdHJ1bmNhdGUvcmVuYW1lIDx3cml0ZS1m
aWxlPgo+ICAgIGZpbGUgcmVhZCA8cmVhZG9ubHktZmlsZT4KPiAKPiAgICBPciBldmVuIGp1c3Q6
Cj4gICAgZmlsZSBnZXRhdHRyL3JlYWQvd3JpdGUvYXBwZW5kL3RydWNhdGUvZXhlY3V0ZS91bmxp
bmsvc3ltbGluay9yZW5hbWUvY3JlYXRlIDxmaWxlPgo+IAoKTm8sIGZvciB0aGVzZSBhcmUgZ3Jv
dXBlZCBiYXNlZCBvbiBudW1iZXIvdHlwZSBvZiBhcmd1bWVudHMgZWFjaCBvcGVyYXRpb24gdGFr
ZXMuCkZvciBleGFtcGxlLCBvcGVuaW5nIGEgZmlsZSBmb3IgcmVhZCBhbmQvb3Igd3JpdGUgdGFr
ZXMgb25lIHBhdGhuYW1lLCBjcmVhdGluZyBhIGZpbGUKdGFrZXMgb25lIHBhdGhuYW1lIGFuZCBv
bmUgcGVybWlzc2lvbiwgcmVuYW1pbmcgYSBmaWxlIHRha2VzIHR3byBwYXRobmFtZXMuCgo+IDIu
IFRoZXJlIHdhcyBhIHBhdGNoIHRvIGNjcy1wYXRjaCBpbiAyMDE1IGFkZGluZyBzdXBwb3J0IGZv
ciBtdWx0aXBsZSB1c2VfZ3JvdXAgPG4+IHBlciBkb21haW4uCj4gICAgIERpZCB0aGlzIGV2ZXIg
bWFrZSBpdCBpbnRvIFRvbW95bz8gRnJvbSBhIHF1aWNrIGdsYW5jZSwgaXQgZG9lc24ndCBsb29r
IGxpa2UgaXQsIGJ1dAo+ICAgICBJIHdhbnRlZCB0byBtYWtlIHN1cmUgYmVmb3JlIEkgZ2V0IGRl
ZXAgaW50byBwb2xpY3kgd3JpdGluZy4KCklmIHlvdSBhcmUgdGFsa2luZyBhYm91dCBUT01PWU8g
Mi54LCBpdCBpcyBhdmFpbGFibGUgaW4gVE9NT1lPIDIuNiAoTGludXggNS4xIGFuZCBsYXRlciku
CklmIHlvdSBhcmUgdGFsa2luZyBhYm91dCBUT01PWU8gMS54LCBpdCBpcyBhdmFpbGFibGUgaW4g
VE9NT1lPIDEuOCAoTGludXggMi40LjM3IC8gMi42LjI3IGFuZCBsYXRlcikuCgo+IAo+IDMuIENh
biB0aGUgdmFyaW91cyBncm91cGluZ3MgKHBhdGhfZ3JvdXAsIG51bWJlcl9ncm91cCwgYWRkcmVz
c19ncm91cC4uLikgYmUgdXNlZCByZWN1cnNpdmVseT8KPiAgICAgRm9yIGV4YW1wbGUKPiAgICAg
cGF0aF9ncm91cCBMSUJTIC9saWIvbGliXCouc29cKgo+ICAgICBwYXRoX2dyb3VwIE1ZQVBQIC9l
dGMvbXlhcHAvXCoKPiAgICAgcGF0aF9ncm91cCBNWUFQUCBATElCUwoKTm8uIFBsZWFzZSB1c2Ug
Im11bHRpcGxlIHVzZV9ncm91cCA8bj4gcGVyIGRvbWFpbiIgYXZhaWxhYmxlIGluIFRPTU9ZTyAy
LjYgLyAxLjguCgo+IAo+IAo+IEkgd2FzIGFsc28gd29uZGVyaW5nIGlmIHRoZXJlIHdhcyBhIHBs
YWNlIChpZS4gZ2l0aHViIHJlcG8pIHdoZXJlIGV4YW1wbGUKPiBwb2xpY2llcyBmb3IgY29tbW9u
IHByb2dyYW1zIGFyZSBrZXB0PwoKTm8uIFNpbmNlIEknbSBub3QgYSBtZW1iZXIgb2YgTGludXgg
ZGlzdHJpYnV0aW9ucywgSSBjYW4ndCBhZmZvcmQgcHJvdmlkaW5nCnJlYWR5LW1hZGUgcG9saWNp
ZXMuIENvbnRyaWJ1dGlvbnMgZnJvbSB1c2VycyBhcmUgd2VsY29tZWQuCgo+IEZvciBleGFtcGxl
LCB0byBydW4gTmdpbnggd2Vic2VydmVyLCB0aGVyZSBhcmUgZmV3IHRoaW5ncyB0aGF0IGFyZSBj
b21tb24KPiBhY3Jvc3MgYWxsIGluc3RhbGxzIHRoYXQgd291bGQgbWFrZSBpdCBwb3NzaWJsZSB0
byByZXVzZSwgYW5kIHRodXMgb25lIGRvZXMKPiBub3QgaGF2ZSB0byBzdGFydCBmcm9tIHNjcmF0
Y2guLi4KCllvdSBjYW4gcHVibGlzaCB0aGVtIGluIHlvdXIgcmVwb3NpdG9yaWVzLgoKUmVnYXJk
cy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnRvbW95
by11c2Vycy1lbiBtYWlsaW5nIGxpc3QKdG9tb3lvLXVzZXJzLWVuQGxpc3RzLm9zZG4ubWUKaHR0
cHM6Ly9saXN0cy5vc2RuLm1lL21haWxtYW4vbGlzdGluZm8vdG9tb3lvLXVzZXJzLWVuCg==
