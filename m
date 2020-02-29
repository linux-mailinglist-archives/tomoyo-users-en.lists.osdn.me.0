Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (gw0.osdn.jp [202.221.179.250])
	by mail.lfdr.de (Postfix) with ESMTP id 10E5C1747B4
	for <lists+tomoyo-users-en@lfdr.de>; Sat, 29 Feb 2020 16:42:18 +0100 (CET)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 sf-lists.priv.osdn.jp
X-Spam-Level: *
X-Spam-Status: No, score=1.0 required=7.0 tests=ENCODING_8BIT,FREEMAIL_FROM,
 T_DKIM_INVALID autolearn=disabled version=3.4.2
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196]) by sf-lists.priv.osdn.jp (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Sun,  1 Mar 2020 00:42:14 +0900 (JST)
Received: by mail-lj1-f196.google.com with SMTP id d10so6710244ljl.9
 for <tomoyo-users-en@lists.osdn.me>; Sat, 29 Feb 2020 07:42:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=vLejb/3h1PuQgvJQfzdlx2sKOUNsKVAJyOgTOjvMBus=;
 b=VKtEAmIfYwZaOlGNcyxXotiJZHJRK6COt6zPOTpeu/rxNbhkk2Z488PNEGH6DAPliW
 UENoqNkDY1+jtxOV6rWFvJBDnqUeY8GNsEDuEqEv9GIZyqD9GP1AMv0iSqwlPmT22+8S
 pT3MnuGilbtxGNdhFQ9cn+dZs8Xm6t/+NjIKjwgr0q0FW7qVwAsxzBP51TT3qLscQtbV
 fpkX2Dba8UZkX8lbnaW6TcYJ2WY+Yl5WvWR8cVg/wJeELy68j0ZPXspENwY2prbeDVEV
 mi4Yy/FMj2Ecp4LtG0IfCIxtw/tafJZIHENWwhWSWFc4lieoFgAbtgqVpvkAdFVLNzpn
 DtbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vLejb/3h1PuQgvJQfzdlx2sKOUNsKVAJyOgTOjvMBus=;
 b=bucZEtqdNyJTTfvHRgp93MGWI5D2UsSfZLKhyBCq+x8dsHHiTp+tJyZeoo6OWQLvrJ
 v4KvNel9+N5Am4WDBqVZfIxOstuTM74jPLTF4p5sCC3fTxJHf2jJCe58PT7gJvrAQmRi
 5JyL0bc43UkEuENYxu/PwxdxgDb/rWK8YvlD8yqzHzLX0Kz6zjSJmbq+atPAW7UpuINx
 VE8PFSozbKyEF8UKGRsPLBi4g/G1D1VkEf2QY1Xq+JyHqt5xpX25RCmK0U7aDpZHZK48
 hRAfWvZ80rDqHjaj3CnNg3FoqBMWe8LN9lHsynyYLsAZoZSgOfO32iFCJgS4ABd508Vm
 NE2A==
X-Gm-Message-State: ANhLgQ0k+T+rZcvd6oAGs6ygN/cBgRsXV0BDv7mf549cXrhjWBVzC07f
 X93O3VCBqO/swD9owobiCokWNxyW
X-Google-Smtp-Source: ADFU+vvBQyt9gHG/j2lOzg5X1UzUX/NcbHBFlRMWxPrKRxzf8AIdLTF93grh46s7QZWart2Glul17g==
X-Received: by 2002:a2e:8ed5:: with SMTP id e21mr1917874ljl.224.1582990933142; 
 Sat, 29 Feb 2020 07:42:13 -0800 (PST)
To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
References: <4fa32b94-d9a2-f49d-fa37-08ad3f7a9f53@gmail.com>
 <df81e765-cd82-2b5a-af17-4a1212848592@i-love.sakura.ne.jp>
From: Topi Miettinen <toiwoton@gmail.com>
Message-ID: <614f1237-638c-e606-eb57-ee71c0bdb373@gmail.com>
Date: Sat, 29 Feb 2020 17:41:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <df81e765-cd82-2b5a-af17-4a1212848592@i-love.sakura.ne.jp>
Content-Language: en-US
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.2/25737/Sat Feb 29 21:12:46 2020
Subject: [tomoyo-users-en 722] Re: [PATCH] Add systemd service for
 tomoyo-auditd
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

T24gMjkuMi4yMDIwIDcuMzAsIFRldHN1byBIYW5kYSB3cm90ZToKPiBIZWxsby4KPiAKPiBPbiAy
MDIwLzAyLzI0IDY6MjcsIFRvcGkgTWlldHRpbmVuIHdyb3RlOgo+PiBFbmFibGUgbWFueSBoYXJk
ZW5pbmcgZmVhdHVyZXMgcHJvdmlkZWQgYnkgc3lzdGVtZCBmb3IgdG9tb3lvLWF1ZGl0ZC4KPj4K
Pj4gU2lnbmVkLW9mZi1ieTogVG9waSBNaWV0dGluZW4gPHRvaXdvdG9uQGdtYWlsLmNvbT4KPj4g
LS0tCj4+ICDCoEluY2x1ZGUubWFrZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDEgKwo+PiAgwqBNYWtlZmlsZcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB8wqAgMSArCj4+ICDCoHVzcl9saWJfc3lzdGVtZF9zeXN0ZW0vTWFrZWZpbGXC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgNyArKysrCj4+ICDCoHVzcl9saWJfc3lzdGVt
ZF9zeXN0ZW0vdG9tb3lvLWF1ZGl0ZC5zZXJ2aWNlIHwgMzkgKysrKysrKysrKysrKysrKysrKysK
Pj4gIMKgNCBmaWxlcyBjaGFuZ2VkLCA0OCBpbnNlcnRpb25zKCspCj4+ICDCoGNyZWF0ZSBtb2Rl
IDEwMDY0NCB1c3JfbGliX3N5c3RlbWRfc3lzdGVtL01ha2VmaWxlCj4+ICDCoGNyZWF0ZSBtb2Rl
IDEwMDY0NCB1c3JfbGliX3N5c3RlbWRfc3lzdGVtL3RvbW95by1hdWRpdGQuc2VydmljZQo+IAo+
IFRoYW5rIHlvdSBmb3IgYSBwYXRjaCwgYnV0IEkgY2FuJ3QgYXBwbHkgdGhpcyBwYXRjaCBiZWNh
dXNlIHRoaXMgc2VydmljZSBmaWxlIHJlcXVpcmVzCj4gbW9yZSByZWNlbnQgc3lzdGVtZCB2ZXJz
aW9ucy4gSSBnZXQgZm9sbG93aW5nIGVycm9ycyBvbiBzeXN0ZW1kLTIxOS02Ny5lbDdfNy4zLng4
Nl82NDoKClNvcnJ5IGZvciB0aGUgcmFudCwgYnV0IHZlcnNpb24gMjE5IG9mIHN5c3RlbWQgaXMg
NSB5ZWFycyBvbGQuIFdoeSBvbiAKZWFydGggd291bGQgYW55b25lIHVzZSB0aGF0IHRvZ2V0aGVy
IHdpdGggbmV3IHZlcnNpb24gb2YgdG9tb3lvLXRvb2xzIApmcm9tIDIwMjA/IFR5cGljYWxseSBz
b2Z0d2FyZSBpcyBkZXZlbG9wZWQgYWdhaW5zdCBjdXJyZW50IHZlcnNpb25zIG9mIApvdGhlciBk
ZXBlbmRlbnQgc29mdHdhcmUsIG9yIGF0IGxlYXN0IGN1cnJlbnQgdmVyc2lvbnMsIHdoaWNoIGFy
ZSBjb21tb24gCmluIG1ham9yIGRpc3RyaWJ1dGlvbnMgbGlrZSBGZWRvcmEsIERlYmlhbiBvciBB
cmNoLiBPdGhlcndpc2UsIGlmIHRoZXJlIAphcmUgaW5jb21wYXRpYmlsaXRpZXMgb3IgcmVncmVz
c2lvbnMgd2l0aCB0aGUgbmV3IHZlcnNpb25zLCB0aGlzIHdpbGwgYmUgCmRpc2NvdmVyZWQgKGlu
IHRoZSB3b3JzdCBjYXNlKSBtYW55IHllYXJzIGFmdGVyIHRoZSBvdGhlciBwYWNrYWdlcyBoYXZl
IApiZWVuIHJlbGVhc2VkLiBJdCdzIHRoZSBqb2Igb2YgdGhvc2UgZG93bnN0cmVhbSBkaXN0cmli
dXRpb25zLCB3aG8gd2FudCAKdG8gc3VwcG9ydCBzdGFibGUgdmVyc2lvbnMgb3Igb2xkIHZlcnNp
b25zIG9mIHRoZSBzb2Z0d2FyZSwgdG8gYmFja3BvcnQgCm9yIHJlbW92ZSBuZXcgZmVhdHVyZXMg
d2hpY2ggYXJlIG5vdCB5ZXQgYXZhaWxhYmxlIGluIHRoZSBvbGQgdmVyc2lvbnMgCm9mIG90aGVy
IHBhY2thZ2VzLgoKQnV0IGlmIHlvdSBpbnNpc3QsIEkgY2FuIGNvbW1lbnQgb3V0IHRoZSBsaW5l
cyBhbmQgYWRkIGEgY29tbWVudCBzdGF0aW5nIAp0aGF0IGl0J3MgcmVjb21tZW5kZWQgdG8gZW5h
YmxlIHRoZXNlIGZvciBjdXJyZW50IHZlcnNpb25zIHN5c3RlbWQuCgotVG9waQoKPiAgICBVbmtu
b3duIGx2YWx1ZSAnSVBBZGRyZXNzRGVueScgaW4gc2VjdGlvbiAnU2VydmljZScKPiAgICBVbmtu
b3duIGx2YWx1ZSAnTG9ja1BlcnNvbmFsaXR5JyBpbiBzZWN0aW9uICdTZXJ2aWNlJwo+ICAgIFVu
a25vd24gbHZhbHVlICdNZW1vcnlEZW55V3JpdGVFeGVjdXRlJyBpbiBzZWN0aW9uICdTZXJ2aWNl
Jwo+ICAgIFVua25vd24gbHZhbHVlICdQcml2YXRlVXNlcnMnIGluIHNlY3Rpb24gJ1NlcnZpY2Un
Cj4gICAgVW5rbm93biBsdmFsdWUgJ1Byb3RlY3RDb250cm9sR3JvdXBzJyBpbiBzZWN0aW9uICdT
ZXJ2aWNlJwo+ICAgIFVua25vd24gbHZhbHVlICdQcm90ZWN0SG9zdG5hbWUnIGluIHNlY3Rpb24g
J1NlcnZpY2UnCj4gICAgVW5rbm93biBsdmFsdWUgJ1Byb3RlY3RLZXJuZWxMb2dzJyBpbiBzZWN0
aW9uICdTZXJ2aWNlJwo+ICAgIFVua25vd24gbHZhbHVlICdQcm90ZWN0S2VybmVsTW9kdWxlcycg
aW4gc2VjdGlvbiAnU2VydmljZScKPiAgICBVbmtub3duIGx2YWx1ZSAnUHJvdGVjdEtlcm5lbFR1
bmFibGVzJyBpbiBzZWN0aW9uICdTZXJ2aWNlJwo+ICAgIEZhaWxlZCB0byBwYXJzZSBwcm90ZWN0
IHN5c3RlbSB2YWx1ZSwgaWdub3Jpbmc6IHN0cmljdAo+ICAgIFVua25vd24gbHZhbHVlICdSZXN0
cmljdE5hbWVzcGFjZXMnIGluIHNlY3Rpb24gJ1NlcnZpY2UnCj4gICAgVW5rbm93biBsdmFsdWUg
J1Jlc3RyaWN0UmVhbHRpbWUnIGluIHNlY3Rpb24gJ1NlcnZpY2UnCj4gICAgVW5rbm93biBsdmFs
dWUgJ1Jlc3RyaWN0U1VJRFNHSUQnIGluIHNlY3Rpb24gJ1NlcnZpY2UnCj4gCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0b21veW8tdXNlcnMtZW4gbWFp
bGluZyBsaXN0CnRvbW95by11c2Vycy1lbkBsaXN0cy5vc2RuLm1lCmh0dHBzOi8vbGlzdHMub3Nk
bi5tZS9tYWlsbWFuL2xpc3RpbmZvL3RvbW95by11c2Vycy1lbgo=
