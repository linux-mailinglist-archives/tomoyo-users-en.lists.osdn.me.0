Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (gw0.osdn.jp [202.221.179.250])
	by mail.lfdr.de (Postfix) with ESMTP id 0C4571DB01C
	for <lists+tomoyo-users-en@lfdr.de>; Wed, 20 May 2020 12:26:10 +0200 (CEST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 sf-lists.priv.osdn.jp
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=none autolearn=disabled
 version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by sf-lists.priv.osdn.jp (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Wed, 20 May 2020 19:26:07 +0900 (JST)
Received: from fsav303.sakura.ne.jp (fsav303.sakura.ne.jp [153.120.85.134])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 04KAQ5DW068262;
 Wed, 20 May 2020 19:26:05 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav303.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav303.sakura.ne.jp);
 Wed, 20 May 2020 19:26:05 +0900 (JST)
To: Gabriel Borges Figuera <gbf.gmv@gmail.com>
References: <CALOzowtXPQikYpM7c0fjA2QAa=UC-Ewubnw0TSEseCLGn+2q_A@mail.gmail.com>
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <e63d058f-cb00-05f5-4278-3d71dcd63869@i-love.sakura.ne.jp>
Date: Wed, 20 May 2020 19:26:02 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CALOzowtXPQikYpM7c0fjA2QAa=UC-Ewubnw0TSEseCLGn+2q_A@mail.gmail.com>
Content-Language: en-US
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.2/25817/Tue May 19 21:16:16 2020
Subject: [tomoyo-users-en 732] Re: Akari IPC signals control for bash shell
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

SGVsbG8uCgpBS0FSSSAvIENhaXRTaXRoIC8gVE9NT1lPIDIueCBjYW5ub3QgY29udHJvbCBJUEMs
IGZvciBMU00gaG9va3MgZm9yCmp1ZGdpbmcgInNlbmRpbmcgc2lnbmFscyIgYXJlIGluc2VydGVk
IGludG8gbG9jYXRpb25zIHdoZXJlIGl0IGlzIG5vdApwZXJtaXR0ZWQgdG8gc2xlZXAuIFRPTU9Z
TyAvIEFLQVJJIC8gQ2FpdFNpdGggc3VwcG9ydCBpbnRlcmFjdGl2ZQpqdWRnZW1lbnQgZnVuY3Rp
b25hbGl0eSB3aGljaCBkZXBlbmRzIG9uIGJlaW5nIGFibGUgdG8gc2xlZXAgaW5zaWRlCkxTTSBo
b29rcy4KClRPTU9ZTyAxLnggY2FuIGNvbnRyb2wgSVBDLCBmb3IgVE9NT1lPIDEueCBpcyBpbnNl
cnRpbmcgY3VzdG9tIGhvb2tzCmZvciBqdWRnaW5nICJzZW5kaW5nIHNpZ25hbHMiIGludG8gbG9j
YXRpb25zIHdoZXJlIGl0IGlzIHBlcm1pdHRlZCB0bwpzbGVlcC4gQnV0IGV2ZW4gd2l0aCB0aGF0
IGFwcHJvYWNoLCBpdCBjYW5ub3QgYmUgcGVyZmVjdGx5IHByZWNpc2UuClNpbmNlIGl0IGlzIHBv
c3NpYmxlIHRvIHNlbmQgYSBzaWduYWwgdG8gbXVsdGlwbGUgcHJvY2Vzc2VzLCBUT01PWU8gMS54
CndpbGwgaGF2ZSB0byBjaGVjayBtdWx0aXBsZSByZWNpcGllbnQgZG9tYWlucy4gQnV0IHNpbmNl
IHdlIGNhbid0CmF0b21pY2FsbHkgY2hlY2sgYWxsIHJlY2lwaWVudCBkb21haW5zLCBUT01PWU8g
MS54IGNoZWNrcyBvbmx5IG9uZQpyZWNpcGllbnQgZG9tYWluIGRlcml2ZWQgZnJvbSAicGlkIiBh
cmd1bWVudC4gVGh1cywgYmFzaWNhbGx5LCBwbGVhc2UKY29uc2lkZXIgYWJpbGl0eSB0byByZXN0
cmljdCBvbmx5ICJzaWduYWwgbnVtYmVyIiBhcmd1bWVudC4gTGlrZXdpc2UsCm5vbi1MU00gdmVy
c2lvbiBvZiBDYWl0U2l0aCBjYW4gcmVzdHJpY3Qgb25seSAic2lnbmFsIG51bWJlciIgYXJndW1l
bnQuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0b21v
eW8tdXNlcnMtZW4gbWFpbGluZyBsaXN0CnRvbW95by11c2Vycy1lbkBsaXN0cy5vc2RuLm1lCmh0
dHBzOi8vbGlzdHMub3Nkbi5tZS9tYWlsbWFuL2xpc3RpbmZvL3RvbW95by11c2Vycy1lbgo=
