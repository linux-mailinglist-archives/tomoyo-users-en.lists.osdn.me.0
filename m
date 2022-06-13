Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id 5C6AC54A26D
	for <lists+tomoyo-users-en@lfdr.de>; Tue, 14 Jun 2022 01:06:32 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id 2122C144CAB;
	Tue, 14 Jun 2022 08:06:31 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id 6FAC4144B7D
 for <tomoyo-users-en@lists.osdn.me>; Tue, 14 Jun 2022 08:06:30 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=none autolearn=disabled
 version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Tue, 14 Jun 2022 08:06:30 +0900 (JST)
Received: from fsav314.sakura.ne.jp (fsav314.sakura.ne.jp [153.120.85.145])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 25DN6Sfe090802;
 Tue, 14 Jun 2022 08:06:28 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav314.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav314.sakura.ne.jp);
 Tue, 14 Jun 2022 08:06:28 +0900 (JST)
Message-ID: <e4ebfdfc-8cfa-fb14-907d-88f8230cd51c@I-love.SAKURA.ne.jp>
Date: Tue, 14 Jun 2022 08:06:28 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Andre T <andre.tverborgvik@sklbb.no>
References: <81f92170-5f4e-36e8-f75b-eeced0f7d23c@sklbb.no>
 <2feaa151-9653-12df-1498-253a8ba9b6b3@I-love.SAKURA.ne.jp>
 <a5643339-370e-ce5a-654e-2ce7ceb4a08e@sklbb.no>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <a5643339-370e-ce5a-654e-2ce7ceb4a08e@sklbb.no>
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
Subject: [tomoyo-users-en 740] Re: Can't get Tomoyo to load policies on one
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

T24gMjAyMi8wNi8xNCA1OjIwLCBBbmRyZSBUIHdyb3RlOgo+PiBQbGVhc2UgY2hlY2sgdGhhdCAv
c2Jpbi90b21veW8taW5pdCBleGlzdHMgYW5kIGNhbiBiZSBtYW51YWxseSBleGVjdXRlZCBmcm9t
Cj4+IGEgc2hlbGwgb24gUEMyLiBUaGVuLCBwbGVhc2UgY2hlY2sgdGhhdCBlaXRoZXIKPj4KPj4g
ICAgQ2FsbGluZyAvc2Jpbi90b21veW8taW5pdCB0byBsb2FkIHBvbGljeS4gUGxlYXNlIHdhaXQu
Cj4+Cj4+IG9yCj4+Cj4+ICAgIE5vdCBhY3RpdmF0aW5nIE1hbmRhdG9yeSBBY2Nlc3MgQ29udHJv
bCBhcyAvc2Jpbi90b21veW8taW5pdCBkb2VzIG5vdCBleGlzdC4KPj4KPj4gYXBwZWFycyBpbiB0
aGUgZG1lc2cgb3V0cHV0IHdoZW4geW91IHJlYm9vdCBQQzIuCj4gCj4gRnJvbSB3aGF0IGl0IHNl
ZW1zIHNvIGZhciBuZWl0aGVyIG9mIHRoZSB0d28gbGluZXMgc2VlbXMgdG8gYXBwZWFyIG9uIHRo
ZSBQQy4gKGRtZXNnIG91dHB1dCBpbmNsdWRlZCBmdXJ0aGVzdCBiZWxvdykKPiAKCk9LLiBUaGVu
LCBJIGd1ZXNzIHRoYXQgdGhlIHByb2dyYW0gd2hpY2ggaXMgc3BlY2lmaWVkIHVzaW5nCkNPTkZJ
R19TRUNVUklUWV9UT01PWU9fQUNUSVZBVElPTl9UUklHR0VSIGRvZXMgbm90IGV4aXN0IG9uIFBD
Mi4KCkl0IHNlZW1zIHRoYXQgQXJjaCBMaW51eCBoYXMgbXVsdGlwbGUgY2hvaWNlcyBmb3IgdGhl
IGluaXQgc3lzdGVtLgoKICBodHRwczovL3dpa2kuYXJjaGxpbnV4Lm9yZy90aXRsZS9pbml0CiAg
aHR0cHM6Ly93aWtpLmFyY2hsaW51eC5vcmcvdGl0bGUvTWtpbml0Y3BpbwoKSSBndWVzcyB0aGF0
IHRoZSBwcm9ncmFtIHVzZWQgYXMgaW5pdCBvbiBQQzEgYW5kIFBDMiBkaWZmZXJzLiBQbGVhc2Ug
Y29tcGFyZQoKICBscyAtbCAvcHJvYy8xLwoKKGFzIHJvb3QgdXNlcikgYmV0d2VlbiBQQzEgYW5k
IFBDMi4gSWYgdGhlIHByb2dyYW0gaW5kaWNhdGVkIGJ5IC9wcm9jLzEvZXhlIGRpZmZlcnMsCnRy
eSBzcGVjaWZ5aW5nIHRoYXQgcHJvZ3JhbSB1c2luZyBUT01PWU9fdHJpZ2dlcj0ga2VybmVsIGNv
bW1hbmQgbGluZSBwYXJhbW1ldGVyOyBsaWtlClRPTU9ZT190cmlnZ2VyPS91c3IvbGliL3N5c3Rl
bWQvc3lzdGVtZCBpZiAvcHJvYy8xL2V4ZSBpbmRpY2F0ZXMgL3Vzci9saWIvc3lzdGVtZC9zeXN0
ZW1kIC4KCj4gKEknbSBub3RpY2luZyB0aGUgIlVua25vd24ga2VybmVsIGNvbW1hbmQgbGluZSBw
YXJhbWV0ZXJzIC4uLiIgbGluZSBzbyB3aGV0aGVyCj4gb3Igbm90IHRoYXQgbWlnaHQgYWZmZWN0
IHRvbW95byBpJ20gbm90IHN1cmUsIGJ1dCBpdCdzIGRlZmluZXRseSB0byBiZSBjaGVja2VkCj4g
b3V0IHdoYXQncyBnb2luZyBvbiB0aGVyZSBub25lIHRoZSBsZXNzKQoKVGhhdCBpcyBleHBlY3Rl
ZCBiZWhhdmlvciBhbmQgaXMgaXJyZWxldmFudCB0byB0aGlzIHByb2JsZW0uCgogIGh0dHBzOi8v
Z2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4Lmdp
dC9jb21taXQvP2lkPTg2ZDE5MTlhNGZiMGQ5YzExNWRkMWQzYjk2OWY1ZDE2NTBlNDU0MDgKICBo
dHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9s
aW51eC5naXQvY29tbWl0Lz9pZD04YmMyYjNkY2E3MjkyMzQ3ZDhlNzE1ZmI3MjNjNTg3MTM0YWJl
MDEzCgpSZWdhcmRzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KdG9tb3lvLXVzZXJzLWVuIG1haWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMu
b3Nkbi5tZQpodHRwczovL2xpc3RzLm9zZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNl
cnMtZW4K
