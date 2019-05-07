Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (gw0.osdn.jp [202.221.179.250])
	by mail.lfdr.de (Postfix) with ESMTP id 116ED1626F
	for <lists+tomoyo-users-en@lfdr.de>; Tue,  7 May 2019 12:57:47 +0200 (CEST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 sf-lists.priv.osdn.jp
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=none autolearn=disabled
 version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by sf-lists.priv.osdn.jp (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Tue,  7 May 2019 19:57:40 +0900 (JST)
Received: from fsav101.sakura.ne.jp (fsav101.sakura.ne.jp [27.133.134.228])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id x47Avdas070650;
 Tue, 7 May 2019 19:57:39 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav101.sakura.ne.jp (F-Secure/fsigk_smtp/530/fsav101.sakura.ne.jp);
 Tue, 07 May 2019 19:57:39 +0900 (JST)
To: tomoyo-users-en@lists.osdn.me
References: <fe147cd0-ae44-852d-b336-0126e4a44913@I-love.SAKURA.ne.jp>
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <aa28cb5f-e8f6-e5ea-60b0-20402fcf3971@i-love.sakura.ne.jp>
Date: Tue, 7 May 2019 19:57:33 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <fe147cd0-ae44-852d-b336-0126e4a44913@I-love.SAKURA.ne.jp>
Content-Language: en-US
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.100.3/25442/Tue May 7 17:01:24 2019
Subject: [tomoyo-users-en 706] Re: Harbinger of a shift in Linux Security
 Modules
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

SGVsbG8uCgpTaW5jZSBMaW51eCA1LjEgd2FzIHJlbGVhc2VkLCBJIHJlZnJlc2hlZCB0aGUgdGFy
YmFsbHMuClRoZXJlIGlzIG5vIGNoYW5nZSBleGNlcHQgc3VwcG9ydGluZyB0aGUgbGF0ZXN0IGtl
cm5lbHMuCgogIGNjcy1wYXRjaC0xLjguNS0yMDE5MDUwNi50YXIuZ3ogICAgICAgICAgIE1ENTph
YWFhYWRkNWE3MzcxMDVmZjNhNDdhY2VjNTg4MWJhNgogIGNhaXRzaXRoLXBhdGNoLTAuMi0yMDE5
MDUwNi50YXIuZ3ogICAgICAgIE1ENTo4ODg4MmQ4N2JkMmQyYmMxMmVjMWZjNjg3ZGIzMTdlYQoK
SW4gTGludXggNS4xLCBUT01PWU8gMi54IGJlY2FtZSBUT01PWU8gMi42ICggaHR0cHM6Ly90b21v
eW8ub3Nkbi5qcC8yLjYvICkuCkluIExpbnV4IDUuMiwgVE9NT1lPIDIuNiB3aWxsIGdldCB0aGUg
Zm9sbG93aW5nIGNoYW5nZXMuCgooMSkgVG8gc29sdmUgYSBwcm9ibGVtIHRoYXQgaXQgaXMgaW5j
b252ZW5pZW50IGZvciBwb2xpY3kgZGV2ZWxvcG1lbnQgdGhhdAogICAgZmlsZXN5c3RlbXMgd2hp
Y2ggZG8gbm90IHN1cHBvcnQgcmVuYW1lIG9wZXJhdGlvbiAoZS5nLiBzcXVhc2hmcykgZG8gbm90
CiAgICBnZW5lcmF0ZSBhYnNvbHV0ZSBwYXRobmFtZXMKICAgICggaHR0cDovL2xpc3RzLm9zZG4u
bWUvbWFpbG1hbi9hcmNoaXZlcy90b21veW8tdXNlcnMtZW4vMjAxNy1KdWx5LzAwMDY4NS5odG1s
ICksCiAgICB0aGUgcGF0aG5hbWUgY2FsY3VsYXRpb24gbG9naWMgaXMgbW9kaWZpZWQgdG8gZ2Vu
ZXJhdGUgYWJzb2x1dGUgcGF0aG5hbWVzCiAgICBvbiBmaWxlc3lzdGVtcyB3aGljaCBkbyBub3Qg
c3VwcG9ydCByZW5hbWUgb3BlcmF0aW9uIGJ1dCByZXF1aXJlIGEgYmxvY2sKICAgIGRldmljZSB1
cG9uIG1vdW50IG9wZXJhdGlvbi4gU2luY2UgbWFqb3JpdHkgb2YgdXNlcnMgYXJlIHVzaW5nIGZp
bGVzeXN0ZW1zCiAgICB3aGljaCBzdXBwb3J0IHJlbmFtZSBvcGVyYXRpb24sIHRoaXMgY2hhbmdl
IHdvdWxkIGJvdGhlciBub2JvZHkuIEFsc28sIEknbQogICAgdGhpbmtpbmcgdG8gYmFja3BvcnQg
dG8gVE9NT1lPIDEuOCAvIEFLQVJJIC8gQ2FpdFNpdGggYWZ0ZXIgY29uZmlybWluZyB0aGF0CiAg
ICB0aGlzIGNoYW5nZSBoYXMgbm8gcHJvYmxlbSB3aXRoIFRPTU9ZTyAyLjYuCgooMikgVG8gYmUg
YWJsZSB0byBjb3ZlciBtb3JlIGNvZGUgYnkgZnV6emluZyB0ZXN0cyBieSBzeXpib3QsIGEga2Vy
bmVsIGNvbmZpZwogICAgb3B0aW9uIENPTkZJR19TRUNVUklUWV9UT01PWU9fSU5TRUNVUkVfQlVJ
TFRJTl9TRVRUSU5HIHdoaWNoIHNob3VsZCBiZQogICAgZW5hYmxlZCBvbmx5IHdoZW4gYnVpbGRp
bmcga2VybmVscyBmb3IgZnV6emluZyB0ZXN0cyBpcyBhZGRlZC4gUGxlYXNlIGJlCiAgICBjYXJl
ZnVsIG5vdCB0byBlbmFibGUgYnkgZXJyb3Igd2hlbiBidWlsZGluZyBub3JtYWwga2VybmVscy4K
ClBsZWFzZSBsZXQgbWUga25vdyBpZiB5b3UgZm91bmQgYW55IHByb2JsZW1zLgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdG9tb3lvLXVzZXJzLWVuIG1h
aWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMub3Nkbi5tZQpodHRwczovL2xpc3RzLm9z
ZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNlcnMtZW4K
