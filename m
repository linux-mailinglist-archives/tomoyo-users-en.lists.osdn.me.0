Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (gw0.osdn.jp [202.221.179.250])
	by mail.lfdr.de (Postfix) with ESMTP id 024BA135CF9
	for <lists+tomoyo-users-en@lfdr.de>; Thu,  9 Jan 2020 16:42:04 +0100 (CET)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 sf-lists.priv.osdn.jp
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=none autolearn=disabled
 version=3.4.2
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by sf-lists.priv.osdn.jp (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Fri, 10 Jan 2020 00:41:58 +0900 (JST)
Received: from fsav401.sakura.ne.jp (fsav401.sakura.ne.jp [133.242.250.100])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 009Fff1Y014211;
 Fri, 10 Jan 2020 00:41:41 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav401.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav401.sakura.ne.jp);
 Fri, 10 Jan 2020 00:41:41 +0900 (JST)
To: "Pannbacker, Ole" <Ole.Pannbacker@igefa.de>
References: <1578583526292.83188@igefa.de>
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <aef63cef-3dfe-2f25-babf-c805b4074a07@i-love.sakura.ne.jp>
Date: Fri, 10 Jan 2020 00:41:29 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <1578583526292.83188@igefa.de>
Content-Language: en-US
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.101.4/25689/Thu Jan 9 18:59:33 2020
Subject: [tomoyo-users-en   716] Re: Tomoyo Process state problems
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

SGVsbG8uCgpPbiAyMDIwLzAxLzEwIDA6MjQsIFBhbm5iYWNrZXIsIE9sZSB3cm90ZToKPiBIZXkg
ZXZlcnlib2R5LAo+IAo+IHRvZGF5IEkgaW5zdGFsbGVkIHRvbW95byBvbiBhIGdlbnRvbyBUZXN0
c2VydmVyLgo+IAo+IEkndmUgc2V0IHRoZSBQcm9maWxlIDEgb24gdGhlIC9ldGMvaW5pdC5kL3Bv
c3RmaXggYXMgaXQgaXMgdGhlIHBhcmVudCBvZgo+IGV2ZXJ5dGhpbmcgZWxzZSByZWdhcmRpbmcg
dGhpcyBzZXJ2aWNlIGFuZCB0aGVuIGFsc28gb24gL3Vzci9zYmluL3Bvc3RmaXguCj4gV2hlbiBp
IHRyaWVkIHRvIHRha2UgYSBsb29rIGF0IHRoZSBQcm9jZXNzIFN0YXRlIHZpZXdlciBieSB0eXBp
bmcgIkAiIGxpa2UKPiBkZXNjcmliZWQgaW4gdGhlIGRvY3VtZW50YXRpb24sIGl0IHdhcyBub3Qg
ZGlzcGxheWVkLiBUaGUgc2VydmVyIGl0c2VsZiBpcwo+IHJ1bm5pbmcgYW5kIHdvcmtzLiBXaGF0
IGFtIEkgbWlzc2luZz8KCllvdSBhcmUgdGFsa2luZyBhYm91dCBodHRwczovL3RvbW95by5vc2Ru
LmpwLzIuNi90b29sLWVkaXRwb2xpY3kuaHRtbC5lbiNlZGl0X2FjbF9ieV90YXNrICwgYXJlbid0
IHlvdT8KV2hhdCBpcyAiaXQiIGluICJpdCB3YXMgbm90IGRpc3BsYXllZCIgPyBJZiB0aGUgIlBy
b2Nlc3MgU3RhdGUgVmlld2VyIiBzY3JlZW4gaXRzZWxmLCBJIHN1c3BlY3QgdGhhdCAiQCIKa2V5
IHdhcyBub3QgcmVjb2duaXplZCAoa2V5bWFwIGlzIGRpZmZlcmVudD8pLiBQbGVhc2UgY29uZmly
bSB0aGF0ICJAIiBpcyByZWNvZ25pemVkIHVzaW5nIGEgc2hlbGwgcHJvbXB0LgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdG9tb3lvLXVzZXJzLWVuIG1h
aWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMub3Nkbi5tZQpodHRwczovL2xpc3RzLm9z
ZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNlcnMtZW4K
