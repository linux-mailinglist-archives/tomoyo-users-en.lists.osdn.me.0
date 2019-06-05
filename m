Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (gw0.osdn.jp [202.221.179.250])
	by mail.lfdr.de (Postfix) with ESMTP id 1054135C2A
	for <lists+tomoyo-users-en@lfdr.de>; Wed,  5 Jun 2019 13:57:51 +0200 (CEST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 sf-lists.priv.osdn.jp
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=none autolearn=disabled
 version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by sf-lists.priv.osdn.jp (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Wed,  5 Jun 2019 20:57:48 +0900 (JST)
Received: from fsav108.sakura.ne.jp (fsav108.sakura.ne.jp [27.133.134.235])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id x55BvdvY056792;
 Wed, 5 Jun 2019 20:57:39 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav108.sakura.ne.jp (F-Secure/fsigk_smtp/530/fsav108.sakura.ne.jp);
 Wed, 05 Jun 2019 20:57:39 +0900 (JST)
To: "Pannbacker, Ole" <Ole.Pannbacker@igefa.de>
References: <188bc3bc420c4e11a9ea148077c370a9@IGE-EXC-02.igefa.zentrale>
 <1559735226372.94278@igefa.de>
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <c6af7708-5807-db5a-c87c-65a85f72edf9@i-love.sakura.ne.jp>
Date: Wed, 5 Jun 2019 20:57:39 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1559735226372.94278@igefa.de>
Content-Language: en-US
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.100.3/25471/Wed Jun 5 17:12:21 2019
Subject: [tomoyo-users-en   708] Re: Set profile in a child process
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

SGVsbG8uCgpUaGFuayB5b3UgZm9yIHVzaW5nIFRPTU9ZTy4KCk9uIDIwMTkvMDYvMDUgMjA6NDcs
IFBhbm5iYWNrZXIsIE9sZSB3cm90ZToKPiAKPiAKPiBJIHJlY2VudGx5IHN0YXJ0ZWQgdXNpbmcg
VE9NT1lPIGFuZCB0cmllZCB0byBzZXQgc3NoZCB0byBsZWFybmluZyBtb2RlLCBob3dldmVyIHRo
ZSBjaGlsZCBwcm9jZXNzZXMgc3RheWVkIG9uIG1vZGUgMC4KClByb2ZpbGUgbnVtYmVyIG9mIGN1
cnJlbnQgZG9tYWluIGlzIGluaGVyaXRlZCB0byBhIGNoaWxkIGRvbWFpbgpvbmx5IHdoZW4gdGhh
dCBjaGlsZCBkb21haW4gd2FzIG5ld2x5IGNyZWF0ZWQgYnkgY3VycmVudCBkb21haW4uCgpUaGF0
IGlzLCBpZiB5b3UgY2hhbmdlZCBwcm9maWxlIG51bWJlciBvZiBkb21haW4gZm9yIHNzaGQgcHJv
Y2Vzcwp3aGVuIGRvbWFpbnMgZm9yIGNoaWxkIHByb2Nlc3NlcyBhbHJlYWR5IGV4aXN0LCBwcm9m
aWxlIG51bWJlciBvZgpkb21haW5zIGZvciBjaGlsZCBwcm9jZXNzZXMgZG9lcyBub3QgY2hhbmdl
LgoKSW4gdGhpcyBjYXNlLCBwbGVhc2UgZXhwbGljaXRseSBjaGFuZ2UgcHJvZmlsZSBudW1iZXIg
b2YgZG9tYWlucwpmb3IgY2hpbGQgcHJvY2Vzc2VzLgoKPiAKPiAKPiA1OiAxICstIHNzaGQgKDQw
OTMpIDxrZXJuZWw+IC91c3Ivc2Jpbi9zc2hkCj4gNjogMCArLSBiYXNoICg0MTAxKSA8a2VybmVs
PiAvdXNyL3NiaW4vc3NoZCAvYmluL2Jhc2gKPiA3OiAwICstIHRvbW95by1lZGl0cG9saSAoNDEy
NSkgPGtlcm5lbD4gL3Vzci9zYmluL3NzaGQgL2Jpbi9iYXNoIC91c3Ivc2Jpbi90b21veW8tZWRp
dHBvbGljeQo+IDg6IDEgKy0gc3NoZCAoNDE3MSkgPGtlcm5lbD4gL3Vzci9zYmluL3NzaGQKPiA5
OiAwICstIGJhc2ggKDQxNzYpIDxrZXJuZWw+IC91c3Ivc2Jpbi9zc2hkIC9iaW4vYmFzaAo+IAo+
IAo+IEtpbmQgcmVnYXJkcwo+IAo+IE9sZSBQYW5uYmFja2VyCj4gCj4gCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiB0b21veW8tdXNlcnMtZW4gbWFp
bGluZyBsaXN0Cj4gdG9tb3lvLXVzZXJzLWVuQGxpc3RzLm9zZG4ubWUKPiBodHRwczovL2xpc3Rz
Lm9zZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNlcnMtZW4KPiAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnRvbW95by11c2Vycy1lbiBtYWls
aW5nIGxpc3QKdG9tb3lvLXVzZXJzLWVuQGxpc3RzLm9zZG4ubWUKaHR0cHM6Ly9saXN0cy5vc2Ru
Lm1lL21haWxtYW4vbGlzdGluZm8vdG9tb3lvLXVzZXJzLWVuCg==
