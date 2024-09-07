Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id 6116897018B
	for <lists+tomoyo-users-en@lfdr.de>; Sat,  7 Sep 2024 12:14:22 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id 19A9A144E82;
	Sat,  7 Sep 2024 19:14:21 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id B063C144E42;
 Sat,  7 Sep 2024 19:14:19 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: *
X-Spam-Status: No, score=1.0 required=7.0 tests=ENCODING_8BIT
 autolearn=disabled version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by lists.osdn.me (Postfix) with ESMTP;
 Sat,  7 Sep 2024 19:14:19 +0900 (JST)
Received: from fsav116.sakura.ne.jp (fsav116.sakura.ne.jp [27.133.134.243])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 487AEGOt021346;
 Sat, 7 Sep 2024 19:14:16 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav116.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav116.sakura.ne.jp);
 Sat, 07 Sep 2024 19:14:16 +0900 (JST)
Message-ID: <d1e5b74a-5161-4906-96eb-4987ff440d19@I-love.SAKURA.ne.jp>
Date: Sat, 7 Sep 2024 19:14:17 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Moore <paul@paul-moore.com>
References: <caafb609-8bef-4840-a080-81537356fc60@I-love.SAKURA.ne.jp>
 <CAHC9VhT_eBGJq5viU8R_HVWT=BTcxesWAi3nLcMgG8NfswKesA@mail.gmail.com>
 <d16cd3d1-4b32-487e-b116-419c19941472@I-love.SAKURA.ne.jp>
 <CAHC9VhRdQAoiKMVVUiDyCbEd4EDL9ppH3V4xRGhoOoFmHFy8nQ@mail.gmail.com>
Content-Language: en-US
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <CAHC9VhRdQAoiKMVVUiDyCbEd4EDL9ppH3V4xRGhoOoFmHFy8nQ@mail.gmail.com>
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
Subject: [tomoyo-users-en 765] Re: [PATCH] LSM: allow loadable kernel module
 based LSM modules
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
Cc: tomoyo-dev-en@lists.osdn.me,
 linux-security-module <linux-security-module@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, tomoyo-users-en@lists.osdn.me,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

T24gMjAyNC8wOS8wNiAyMzoyNCwgUGF1bCBNb29yZSB3cm90ZToKPiBPbiBGcmksIFNlcCA2LCAy
MDI0IGF0IDM6NDPigK9BTSBUZXRzdW8gSGFuZGEKPiA8cGVuZ3Vpbi1rZXJuZWxAaS1sb3ZlLnNh
a3VyYS5uZS5qcD4gd3JvdGU6Cj4+IElmIHlvdSBpZ25vcmUgbXkgY29uY2VybiwgSSBoYXZlIHRv
IE5BQ0sgdGhlIHN0YXRpYyBjYWxsIGNoYW5nZXMgeW91IGFyZQo+PiBnb2luZyB0byBzZW5kIGlu
IHRoZSB1cGNvbWluZyBtZXJnZSB3aW5kb3cuCj4gCj4gSSdtIG5vdCBpZ25vcmluZyB5b3VyIGNv
bmNlcm4sIEkndmUgcmVzcG9uZGVkIHRvIHlvdXIgZW1haWxzIGFuZAo+IHBhdGNoZXMgb24gdGhl
IHRvcGljIG92ZXIsIGFuZCBvdmVyLCBhbmQgb3ZlciwgYW5kIG92ZXIgYWdhaW4gYnkKPiB0cnlp
bmcgdG8gZXhwbGFpbiB0byB5b3UgdGhhdCB5b3VyIGdvYWwgb2Ygc3VwcG9ydGluZyBvdXQtb2Yt
dHJlZSBMU01zCj4gcmVnYXJkbGVzcyBvZiB0aGUgaW1wYWN0IHRvIHRoZSB1cHN0cmVhbSBMU00g
ZWZmb3J0IGlzIG5vdCBzb21ldGhpbmcKPiB0aGF0IGlzIGFjY2VwdGFibGUgdG8gdGhlIHVwc3Ry
ZWFtIExTTSBlZmZvcnQsIG9yIHRoZSBMaW51eCBrZXJuZWwgaW4KPiBnZW5lcmFsLgoKSSB3YW50
IExLTS1iYXNlZCBMU00gc3VwcG9ydCBpbiBvcmRlciB0byBhbGxvdyBvbmUgb2YgaW4tdHJlZSBM
U01zIChuYW1lbHkKVE9NT1lPKSB0byBiZSBkZWxpdmVyZWQgdG8gbXkgaW50ZW5kZWQgdXNlcnMs
IGZvciBub2JvZHkgY2FuIHNvbHZlIHRoZQpyZWFsaXRpZXMgdGhhdCBjb21taXQgMjA1MTBmMmY0
ZTJkICgic2VjdXJpdHk6IENvbnZlcnQgTFNNIGludG8gYSBzdGF0aWMKaW50ZXJmYWNlIikgbWlz
c2VkOgoKICBob3cgZGlmZmljdWx0L3VucmVhbGlzdGljIGZvciBMaW51eCB1c2VycyB3aG8gYXJl
IHVzaW5nIHByZWJ1aWx0IGtlcm5lbAogIHBhY2thZ2VzIHByb3ZpZGVkIGJ5IExpbnV4IGRpc3Ry
aWJ1dG9ycyB0byByZXBsYWNlIHRoZWlyIGtlcm5lbHMKCiAgaG93IGRpZmZpY3VsdCBmb3IgTGlu
dXggZGlzdHJpYnV0b3JzIHRvIGFsbG93IHRoZWlyIHVzZXJzIHRvIHVzZSBpbi10cmVlCiAgTFNN
IG1vZHVsZXMgd2hpY2ggdGhhdCBkaXN0cmlidXRvciBpcyBub3QgZmFtaWxpYXIgd2l0aCBbMV0g
YmVjYXVzZSBMaW51eAogIGRpc3RyaWJ1dG9ycyBhcmUgc3VwcG9zZWQgdG8gc3VwcG9ydCBrZXJu
ZWwgcGFja2FnZXMgdGhleSBidWlsdCBhbmQKICBzaGlwcGVkCgogIExpbnV4IGRpc3RyaWJ1dG9y
cyBkbyBub3Qgd2FudCB0byBlbmFibGUgb3V0LW9mLXRyZWUgY29kZSBkdWUgdG8gdXBzdHJlYW0K
ICBmaXJzdCBwb2xpY3ksIHdoaWxlIExpbnV4IGtlcm5lbCBkZXZlbG9wbWVudCBjb21tdW5pdHkg
Y2FuIG5vdCBhZmZvcmQKICBhY2NlcHRpbmcgd2hhdGV2ZXIgcHJvcG9zZWQgY29kZSBkdWUgdG8g
bGltaXRlZCByZXNvdXJjZXMKCk9uZSBvZiBMU00gZGV2ZWxvcGVycyBjb21tZW50ZWQgbWUgKCBN
b24sIDIyIEp1bCAyMDI0IDE3OjEyOjA1ICswMjAwCmluIG9mZi1saXN0IGRpc2N1c3N0aW9uKSBh
Ym91dCBBS0FSSQoKICBPZmNvdXJzZSB5b3UgZm91bmQgYSB3YXkgdG8gaGFjayBpdC4gWW91IHdh
bnQgbWUgdG8gY3VybCBiYXNoIHBpcGUKICB5b3VyIGtlcm5lbCBtb2R1bGUgY29kZSB0aGF0IGRp
c2FibGVzIGNlcnRhaW4gcHJvdGVjdGlvbnMgYW5kIHJ1bnMKICBhcmJpdHJhcnkgaGFja3Mgb24g
bXkgbWFjaGluZT8gTm8gdGhhbmsgeW91IQoKICBPZmNvdXJzZSB5b3UgY2hhbmdlIHRoZSBtZW1v
cnkgbWFwcGluZyBvZiBkYXRhLiBZb3UgYXJlIG1pc2xlYWRpbmcKICB5b3VyIHVzZXJzIGludG8g
dHJ1c3RpbmcgeW91IGFuZCBpbnN0ZWFkIG9mIGNvbnRyaWJ1dGluZyBjb2RlIGFuZAogIHdvcmtp
bmcgd2l0aCBkaXN0cm9zIGZvciB5b3VyIHVzZSBjYXNlLCB5b3UgYXJlIHNoaXBwaW5nIGhhY2tz
IGFuZAogIG1ha2luZyBub2lzZSB3aXRob3V0IGFueSBjb25zdHJ1Y3RpdmUgY29kZSBjb250cmli
dXRpb24gb3IgYWxpZ25tZW50CiAgd2l0aCBkaXN0cm9zIGZvciB5b3VyIHVzZS1jYXNlIChiZWxv
dyBSSEVMIHdvbid0IGVuZWFibGUgaXQgZXZlbgogIGlmIHdlIGhhZCBhIHByb3BlciBBUEkpLiAK
CmFuZCB0aGlzIHBhdGNoIGlzIGZvciBmb2xsb3dpbmcgdGhhdCBjb21tZW50LiBBbGwgY29uY2Vy
bnMgYWJvdXQgdXBkYXRpbmcKX19yb19hZnRlcl9pbml0IGRhdGEgaXMgZ29uZSBpZiB3ZSBtb3Zl
IHRvIGEgZHVhbCBzdGF0aWMgY2FsbCBhbmQgbGlua2VkCmxpc3QgYmFzZWQgYXBwcm9hY2guIEkn
bSB2ZXJ5IHZlcnkgdmVyeSBzYWQgdGhhdCB5b3UgZGlkIG5vdCByZXNwb25kIHRvCgogIEkgdGhp
bmsgd2hhdCB5b3UgY2FuIGRvIGlzIHNlbmQgcGF0Y2hlcyBmb3IgYW4gQVBJIGZvciBMS00gYmFz
ZWQgTFNNcwogIGFuZCBoYXZlIGl0IG1lcmdlZCBiZWZvcmUgbXkgc2VyaWVzLCBJIHdpbGwgd29y
ayB3aXRoIHRoZSBjb2RlIEkgaGF2ZQogIGFuZCBtYWtlIExLTSBiYXNlZCBMU01zIHdvcmsuIElm
IHRoaXMgd29yayBnZXRzIG1lcmdlZCwgYW5kIHlvdXIKICB1c2UtY2FzZSBpcyBhY2NlcHRlZCAo
SSB0aGluayBJIGNhbiBzcGVhayBmb3IgYXQgbGVhc3QgS2VlcyBbaWYgbm90CiAgb3RoZXJzXSB0
b28gaGVyZSkgd2Ugd2lsbCBoZWxwIHlvdSBpZiB5b3UgZ2V0IHN0dWNrIHdpdGggTUFYX0xTTV9D
T1VOVAogIG9yIGEgZHVhbCBzdGF0aWMgY2FsbCBhbmQgbGlua2VkIGxpc3QgYmFzZWQgYXBwcm9h
Y2guCgppbiBbMl0sIGFuZCBzdGFydGVkIHNheWluZyAiTm8iIHRvIHRoaXMgYXBwcm9hY2ggYWZ0
ZXIgeW91IGFjY2VwdGVkCnRoZSBzdGF0aWMgY2FsbCBjaGFuZ2VzLiBZb3UgYXJlIGlnbm9yaW5n
IG15IGNvbmNlcm4hCgoKCkxpbms6IGh0dHBzOi8vYnVnemlsbGEucmVkaGF0LmNvbS9zaG93X2J1
Zy5jZ2k/aWQ9NTQyOTg2IFsxXQpMaW5rOiBodHRwczovL2xrbWwua2VybmVsLm9yZy9yL0NBQ1lr
eko3Z2h0NjY4MDJ3UUZLem9rZkpLTUtET29iWWdlYUNwdTVHeD1pWDBFdUpWZ0BtYWlsLmdtYWls
LmNvbSBbMl0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CnRvbW95by11c2Vycy1lbiBtYWlsaW5nIGxpc3QKdG9tb3lvLXVzZXJzLWVuQGxpc3RzLm9zZG4u
bWUKaHR0cHM6Ly9saXN0cy5vc2RuLm1lL21haWxtYW4vbGlzdGluZm8vdG9tb3lvLXVzZXJzLWVu
Cg==
