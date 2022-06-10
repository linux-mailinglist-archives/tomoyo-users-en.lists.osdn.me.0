Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id 51081545A1A
	for <lists+tomoyo-users-en@lfdr.de>; Fri, 10 Jun 2022 04:32:32 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id 4D6A9144C33;
	Fri, 10 Jun 2022 11:32:31 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id 90DD3144C2F
 for <tomoyo-users-en@lists.osdn.me>; Fri, 10 Jun 2022 11:32:29 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=none autolearn=disabled
 version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Fri, 10 Jun 2022 11:32:29 +0900 (JST)
Received: from fsav112.sakura.ne.jp (fsav112.sakura.ne.jp [27.133.134.239])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 25A2WSPm011120;
 Fri, 10 Jun 2022 11:32:28 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav112.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav112.sakura.ne.jp);
 Fri, 10 Jun 2022 11:32:28 +0900 (JST)
Message-ID: <2feaa151-9653-12df-1498-253a8ba9b6b3@I-love.SAKURA.ne.jp>
Date: Fri, 10 Jun 2022 11:32:23 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Andre T <andre.tverborgvik@sklbb.no>
References: <81f92170-5f4e-36e8-f75b-eeced0f7d23c@sklbb.no>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <81f92170-5f4e-36e8-f75b-eeced0f7d23c@sklbb.no>
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
Subject: [tomoyo-users-en 738] Re: Can't get Tomoyo to load policies on one
 of two (near identical systems) PCs..
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

SGVsbG8uCgpPbiAyMDIyLzA2LzEwIDc6NDMsIEFuZHJlIFQgd3JvdGU6Cj4gSG93ZXZlciBvbiB0
aGUgb3RoZXIgUEMgKHJlZmVycmluZyB0byBpdCBhcyAqUEMyKikgLCB0b21veW8gd2lsbCBhcHBh
cmVudGx5Cj4gbm90IGxvYWQgcG9saWNpZXMuIFRoaXMgcmVnYXJkbGVzcyBvZiB3aGF0ZXZlciBp
IHRyeS4gQW5kIGkndmUgbm93IGJhc2ljYWxseQo+IHJhbiBvdXQgb2YgdGhvdWdodHMgYXMgdG8g
d2hhdCBtaWdodCBiZSB3cm9uZyBhbmQgaG93IHRvIHRyb3VibGVzaG9vdCBpdCBhbnkKPiBmdXJ0
aGVyLgoKSSB0aGluayB0aGF0IFRPTU9ZTyBpcyBub3QgYWN0aXZhdGVkIG9uIFBDMi4KCj4gICog
VG9tb3lvIGlzIHJlcG9ydGluZyBpdHNlbGYgYXMgYmVpbmcgaW5pdGlhbGl6ZWQgYW5kIHJ1bm5p
bmcgb24gYm90aAo+ICAgIHRyb3VnaAo+ICAgICAgbyBkbWVzZyB8IGdyZXAgLUEgMSAtQiAxIFRP
TU9ZTwo+ICAgICAgbyBjYXQgL3N5cy9rZXJuZWwvc2VjdXJpdHkvbHNtCj4gICAgICBvIGdyZXAg
dG9tb3lvX3dyaXRlX2luZXRfbmV0d29yayAvcHJvYy9rYWxsc3ltcwoKVGhlc2UgY2hlY2tzIGNh
biB0ZWxsIHlvdSB0aGF0IFRPTU9ZTyBpcyBhdmFpbGFibGUgaW4gdGhlIGtlcm5lbCwKYnV0IGNh
biBub3QgdGVsbCB5b3UgdGhhdCBUT01PWU8gd2FzIGFjdGl2YXRlZCBpbiB0aGUga2VybmVsLgoK
V2hlbiBUT01PWU8gaXMgbG9hZGVkLAoKICBUT01PWU8gTGludXggaW5pdGlhbGl6ZWQKCndpbGwg
YXBwZWFyIGluIHRoZSBkbWVzZyBvdXRwdXQuCgpXaGVuIFRPTU9ZTyBpcyBhY3RpdmF0ZWQsCgog
IENhbGxpbmcgL3NiaW4vdG9tb3lvLWluaXQgdG8gbG9hZCBwb2xpY3kuIFBsZWFzZSB3YWl0Lgog
IFRPTU9ZTzogMi42LjAKICBNYW5kYXRvcnkgQWNjZXNzIENvbnRyb2wgYWN0aXZhdGVkLgoKd2ls
bCBhcHBlYXIgaW4gdGhlIGRtZXNnIG91dHB1dC4KCi9zYmluL3RvbW95by1pbml0ICh3aGljaCBp
cyBzcGVjaWZpZWQgdXNpbmcgQ09ORklHX1NFQ1VSSVRZX1RPTU9ZT19QT0xJQ1lfTE9BREVSCiBm
cm9tIHRoZSBrZXJuZWwgY29uZmlnIGZpbGUsIGFuZCBjYW4gYmUgb3ZlcnJpZGRlbiB1c2luZyBU
T01PWU9fbG9hZGVyPSBmcm9tCmtlcm5lbCBjb21tYW5kIGxpbmUpIGxvYWRzIHBvbGljeSBmcm9t
IC9ldGMvdG9tb3lvLyBkaXJlY3RvcnkuCklmIC9zYmluL3RvbW95by1pbml0IGRvZXMgbm90IGV4
aXN0LAoKICBOb3QgYWN0aXZhdGluZyBNYW5kYXRvcnkgQWNjZXNzIENvbnRyb2wgYXMgL3NiaW4v
dG9tb3lvLWluaXQgZG9lcyBub3QgZXhpc3QuCgp3aWxsIGFwcGVhciBpbiB0aGUgZG1lc2cgb3V0
cHV0IChhbmQgVE9NT1lPIHdpbGwgbm90IGJlIGFjdGl2YXRlZCkuCgovc2Jpbi90b21veW8taW5p
dCBpcyBjYWxsZWQgd2hlbiAvc2Jpbi9pbml0ICh3aGljaCBpcyBzcGVjaWZpZWQgdXNpbmcKQ09O
RklHX1NFQ1VSSVRZX1RPTU9ZT19BQ1RJVkFUSU9OX1RSSUdHRVIgZnJvbSB0aGUga2VybmVsIGNv
bmZpZyBmaWxlLCBhbmQKY2FuIGJlIG92ZXJyaWRkZW4gdXNpbmcgVE9NT1lPX3RyaWdnZXI9IGZy
b20ga2VybmVsIGNvbW1hbmQgbGluZSkgaXMgZXhlY3V0ZWQuCgo+IEhvcGluZyBzb21lb25lIG1p
Z2h0IGhhdmUgc29tZSBpZGVhcyBvciBjbHVlcyBhcyB3aGF0IGlzIGdvaW5nIG9uIHdpdGggUEMy
IGlmCj4gZXZlbiBqdXN0IHRoaW5ncyB0aGF0IG1pZ2h0IHRoZW9yZXRpY2FsbHkgYmUgdGhlIGNh
dXNlIG9mIGl0IGlzc3VlLgoKRm9yIHNvbWUgcmVhc29uIGEgcHJvZ3JhbSB0byBhY3RpdmF0ZSBU
T01PWU8gaXMgbm90IGNhbGxlZCBvbiBQQzIuClBsZWFzZSBjaGVjayB0aGF0IC9zYmluL3RvbW95
by1pbml0IGV4aXN0cyBhbmQgY2FuIGJlIG1hbnVhbGx5IGV4ZWN1dGVkIGZyb20KYSBzaGVsbCBv
biBQQzIuIFRoZW4sIHBsZWFzZSBjaGVjayB0aGF0IGVpdGhlcgoKICBDYWxsaW5nIC9zYmluL3Rv
bW95by1pbml0IHRvIGxvYWQgcG9saWN5LiBQbGVhc2Ugd2FpdC4KCm9yCgogIE5vdCBhY3RpdmF0
aW5nIE1hbmRhdG9yeSBBY2Nlc3MgQ29udHJvbCBhcyAvc2Jpbi90b21veW8taW5pdCBkb2VzIG5v
dCBleGlzdC4KCmFwcGVhcnMgaW4gdGhlIGRtZXNnIG91dHB1dCB3aGVuIHlvdSByZWJvb3QgUEMy
LgoKPiBJJ20gaGFwcHkgdG8gcHJvdmlkZSBhbnkgZnVydGhlciBpbmZvIHRoYXQgbWlnaHQgaGVs
cCBpZGVudGlmeWluZyB0aGUgY2F1c2VzLgoKUHJvdmlkaW5nIG91dHB1dCBvZgoKICBkbWVzZyB8
IGdyZXAgLWkgdG9tb3lvCgp3aWxsIHRlbGwgdXMgYWJvdmUuCgpSZWdhcmRzLgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdG9tb3lvLXVzZXJzLWVuIG1h
aWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMub3Nkbi5tZQpodHRwczovL2xpc3RzLm9z
ZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNlcnMtZW4K
