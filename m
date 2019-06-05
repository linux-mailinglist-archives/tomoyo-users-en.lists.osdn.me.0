Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (gw0.osdn.jp [202.221.179.250])
	by mail.lfdr.de (Postfix) with ESMTP id 7343035DD3
	for <lists+tomoyo-users-en@lfdr.de>; Wed,  5 Jun 2019 15:23:52 +0200 (CEST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 sf-lists.priv.osdn.jp
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=none autolearn=disabled
 version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by sf-lists.priv.osdn.jp (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Wed,  5 Jun 2019 22:23:49 +0900 (JST)
Received: from fsav104.sakura.ne.jp (fsav104.sakura.ne.jp [27.133.134.231])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id x55DNdpH028440;
 Wed, 5 Jun 2019 22:23:39 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav104.sakura.ne.jp (F-Secure/fsigk_smtp/530/fsav104.sakura.ne.jp);
 Wed, 05 Jun 2019 22:23:39 +0900 (JST)
To: "Pannbacker, Ole" <Ole.Pannbacker@igefa.de>
References: <188bc3bc420c4e11a9ea148077c370a9@IGE-EXC-02.igefa.zentrale>
 <1559735226372.94278@igefa.de>
 <c6af7708-5807-db5a-c87c-65a85f72edf9@i-love.sakura.ne.jp>
 <1559737303056.51929@igefa.de>
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <f7c8d31e-cb25-a68e-27e8-a3e65de189f2@i-love.sakura.ne.jp>
Date: Wed, 5 Jun 2019 22:23:34 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1559737303056.51929@igefa.de>
Content-Language: en-US
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.100.3/25471/Wed Jun 5 17:12:21 2019
Subject: [tomoyo-users-en   710] Re: Set profile in a child process
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

T24gMjAxOS8wNi8wNSAyMToyMSwgUGFubmJhY2tlciwgT2xlIHdyb3RlOgo+IE9rYXkgSSd2ZSBz
ZXQgcHJvZmlsZSAxIHRvIHRoZSBzc2hkIHByb2Nlc3MsIHN0YXJ0ZWQgYnkgdGhlIGluaXQgc3lz
dGVtCj4gYW5kIHJlYm9vdGVkIGFmdGVyIHNhdmluZyB0aGUgcG9saWN5cy4gaG93ZXZlciB0aGUg
cHJvYmxlbSByZW1haW5zLgoKWWVzLiBUaGF0J3MgdGhlIGV4cGVjdGVkIHJlc3VsdC4gV2hlbiB5
b3Ugc2F2ZWQgdGhlIHBvbGljeSBmaWxlcyBvbnRvCnRoZSBkaXNrLCBkb21haW5zIGZvciBjaGls
ZCBwcm9jZXNzZXMgd2VyZSBzYXZlZCB3aXRoIHByb2ZpbGUgMC4gVGhlbiwKd2hlbiB5b3UgcmVi
b290ZWQgdGhlIHN5c3RlbSwgdGhlIHBvbGljeSBmaWxlcyB3ZXJlIGxvYWRlZCBmcm9tIHRoZSBk
aXNrLApwcm9maWxlIHZhbHVlIG9mIGRvbWFpbnMgZm9yIGNoaWxkIHByb2Nlc3NlcyBhcmUgdGhh
dCBvZiB3aGVuIHlvdSBzYXZlZAp0aGUgcG9saWN5IGZpbGVzIG9udG8gdGhlIGRpc2sgKGkuZS4g
aXQgcmVtYWlucyAwKS4KClBsZWFzZSBjaGFuZ2UgcHJvZmlsZSB2YWx1ZSBvZiBkb21haW5zIGZv
ciBjaGlsZCBwcm9jZXNzZXMgYmVmb3JlCnNhdmluZyB0aGUgcG9saWN5IGZpbGVzIG9udG8gdGhl
IGRpc2suIFRoZW4sIHlvdSB3aWxsIHNlZSBjaGFuZ2VkCnByb2ZpbGUgdmFsdWUgd2hlbiB5b3Ug
cmVib290ZWQgdGhlIHN5c3RlbS4KClRoZSBsb2NhdGlvbiBvZiBwb2xpY3kgZmlsZXMgaXMgL2V0
Yy9jY3MvIGZvciBUT01PWU8gMS54IGFuZCAvZXRjL3RvbW95by8KZm9yIFRPTU9ZTyAyLnguIFlv
dSBjYW4gYnJvd3NlIGRvbWFpbl9wb2xpY3kuY29uZiBmaWxlIGluIHRoYXQgZGlyZWN0b3J5CmFm
dGVyIHlvdSBzYXZlZCB0aGUgcG9saWN5IGZpbGVzIG9udG8gdGhlIGRpc2suCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0b21veW8tdXNlcnMtZW4gbWFp
bGluZyBsaXN0CnRvbW95by11c2Vycy1lbkBsaXN0cy5vc2RuLm1lCmh0dHBzOi8vbGlzdHMub3Nk
bi5tZS9tYWlsbWFuL2xpc3RpbmZvL3RvbW95by11c2Vycy1lbgo=
