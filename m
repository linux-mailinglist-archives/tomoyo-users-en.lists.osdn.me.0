Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (gw0.osdn.jp [202.221.179.250])
	by mail.lfdr.de (Postfix) with ESMTP id BEB4936E31
	for <lists+tomoyo-users-en@lfdr.de>; Thu,  6 Jun 2019 10:09:48 +0200 (CEST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 sf-lists.priv.osdn.jp
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=none autolearn=disabled
 version=3.4.2
Received: from ige-mx-01.igefa.de (ige-mx-01.igefa.de [87.191.32.109])
 by sf-lists.priv.osdn.jp (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Thu,  6 Jun 2019 17:09:43 +0900 (JST)
X-Virus-Scanned: clamav-milter 0.101.2 at ige-mx-01
Received: from IGE-EXC-02.igefa.zentrale (10.64.1.100) by
 IGZ-MAIL-04.igefa.zentrale (10.64.1.33) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 6 Jun 2019 10:09:41 +0200
Received: from IGE-EXC-02.igefa.zentrale ([::1]) by IGE-EXC-02.igefa.zentrale
 ([fe80::4996:7f83:c932:544e%16]) with mapi id 15.00.1395.000;
 Thu, 6 Jun 2019 10:09:41 +0200
From: "Pannbacker, Ole" <Ole.Pannbacker@igefa.de>
To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Thread-Topic: [tomoyo-users-en 709] Re: Set profile in a child process
Thread-Index: AQHVG6HpdimUIbUDP0OLxBqPJAH8HKaORwYn
Date: Thu, 6 Jun 2019 08:09:41 +0000
Message-ID: <1559808581342.56226@igefa.de>
References: <188bc3bc420c4e11a9ea148077c370a9@IGE-EXC-02.igefa.zentrale>
 <1559735226372.94278@igefa.de>
 <c6af7708-5807-db5a-c87c-65a85f72edf9@i-love.sakura.ne.jp>
 <1559737303056.51929@igefa.de>,
 <f7c8d31e-cb25-a68e-27e8-a3e65de189f2@i-love.sakura.ne.jp>
In-Reply-To: <f7c8d31e-cb25-a68e-27e8-a3e65de189f2@i-love.sakura.ne.jp>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.64.1.56]
MIME-Version: 1.0
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.100.3/25471/Wed Jun 5 17:12:21 2019
Subject: [tomoyo-users-en   711] Re: Set profile in a child process
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
Cc: "tomoyo-users-en@lists.osdn.me" <tomoyo-users-en@lists.osdn.me>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

QWhoIG9rYXksIGdvdCBpdC4KClRoYW5rIHlvdSB2ZXJ5IG11Y2gKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpWb246IFRldHN1byBIYW5kYSA8cGVuZ3Vpbi1rZXJuZWxA
aS1sb3ZlLnNha3VyYS5uZS5qcD4KR2VzZW5kZXQ6IE1pdHR3b2NoLCA1LiBKdW5pIDIwMTkgMTU6
MjMKQW46IFBhbm5iYWNrZXIsIE9sZQpDYzogdG9tb3lvLXVzZXJzLWVuQGxpc3RzLm9zZG4ubWUK
QmV0cmVmZjogUmU6IFt0b21veW8tdXNlcnMtZW4gNzA5XSBSZTogU2V0IHByb2ZpbGUgaW4gYSBj
aGlsZCBwcm9jZXNzCgpPbiAyMDE5LzA2LzA1IDIxOjIxLCBQYW5uYmFja2VyLCBPbGUgd3JvdGU6
Cj4gT2theSBJJ3ZlIHNldCBwcm9maWxlIDEgdG8gdGhlIHNzaGQgcHJvY2Vzcywgc3RhcnRlZCBi
eSB0aGUgaW5pdCBzeXN0ZW0KPiBhbmQgcmVib290ZWQgYWZ0ZXIgc2F2aW5nIHRoZSBwb2xpY3lz
LiBob3dldmVyIHRoZSBwcm9ibGVtIHJlbWFpbnMuCgpZZXMuIFRoYXQncyB0aGUgZXhwZWN0ZWQg
cmVzdWx0LiBXaGVuIHlvdSBzYXZlZCB0aGUgcG9saWN5IGZpbGVzIG9udG8KdGhlIGRpc2ssIGRv
bWFpbnMgZm9yIGNoaWxkIHByb2Nlc3NlcyB3ZXJlIHNhdmVkIHdpdGggcHJvZmlsZSAwLiBUaGVu
LAp3aGVuIHlvdSByZWJvb3RlZCB0aGUgc3lzdGVtLCB0aGUgcG9saWN5IGZpbGVzIHdlcmUgbG9h
ZGVkIGZyb20gdGhlIGRpc2ssCnByb2ZpbGUgdmFsdWUgb2YgZG9tYWlucyBmb3IgY2hpbGQgcHJv
Y2Vzc2VzIGFyZSB0aGF0IG9mIHdoZW4geW91IHNhdmVkCnRoZSBwb2xpY3kgZmlsZXMgb250byB0
aGUgZGlzayAoaS5lLiBpdCByZW1haW5zIDApLgoKUGxlYXNlIGNoYW5nZSBwcm9maWxlIHZhbHVl
IG9mIGRvbWFpbnMgZm9yIGNoaWxkIHByb2Nlc3NlcyBiZWZvcmUKc2F2aW5nIHRoZSBwb2xpY3kg
ZmlsZXMgb250byB0aGUgZGlzay4gVGhlbiwgeW91IHdpbGwgc2VlIGNoYW5nZWQKcHJvZmlsZSB2
YWx1ZSB3aGVuIHlvdSByZWJvb3RlZCB0aGUgc3lzdGVtLgoKVGhlIGxvY2F0aW9uIG9mIHBvbGlj
eSBmaWxlcyBpcyAvZXRjL2Njcy8gZm9yIFRPTU9ZTyAxLnggYW5kIC9ldGMvdG9tb3lvLwpmb3Ig
VE9NT1lPIDIueC4gWW91IGNhbiBicm93c2UgZG9tYWluX3BvbGljeS5jb25mIGZpbGUgaW4gdGhh
dCBkaXJlY3RvcnkKYWZ0ZXIgeW91IHNhdmVkIHRoZSBwb2xpY3kgZmlsZXMgb250byB0aGUgZGlz
ay4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0b21v
eW8tdXNlcnMtZW4gbWFpbGluZyBsaXN0CnRvbW95by11c2Vycy1lbkBsaXN0cy5vc2RuLm1lCmh0
dHBzOi8vbGlzdHMub3Nkbi5tZS9tYWlsbWFuL2xpc3RpbmZvL3RvbW95by11c2Vycy1lbgo=
