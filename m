Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id 8295E91BD8D
	for <lists+tomoyo-users-en@lfdr.de>; Fri, 28 Jun 2024 13:36:34 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id EA8E2144ED2;
	Fri, 28 Jun 2024 20:36:31 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id 6645E144E88
 for <tomoyo-users-en@lists.osdn.me>; Sun, 22 Oct 2023 11:00:31 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ip-10-232-20-202
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=none autolearn=disabled
 version=3.4.2
Received: from omta012.uswest2.a.cloudfilter.net
 (omta012.uswest2.a.cloudfilter.net [35.164.127.235])
 by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Sun, 22 Oct 2023 11:00:31 +0900 (JST)
Authentication-Results: ; auth=pass (PLAIN) smtp.auth=0strodamus@cox.net
X-Authority-Analysis: v=2.4 cv=MoBBVkWe c=1 sm=1 tr=0 ts=6534823f
 a=dSf1l+RxUusjYXP60ZHkuQ==:117 a=dSf1l+RxUusjYXP60ZHkuQ==:17
 a=IkcTkHD0fZMA:10 a=oqiafhwo5bnakpeiCVEA:9 a=QEXdDO2ut3YA:10
To: tomoyo-users-en@lists.osdn.me
From: 0strodamus@cox.net
Message-ID: <4a8ae7e4-5aad-dae7-07bb-e6aa75dea141@cox.net>
Date: Sat, 21 Oct 2023 19:00:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.20231003
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfBsxotfiStpleModfWkEpdrVrxqSKhsKW/m8uyXJbeuu2hXIzQkPm4UDYeX7MlAcQeKHE+v/102cUdbXaDcF7eeaAAgE3shpzi/tjoUNgsIaToZ8vcmU
 +pjAzsjgqX3eDcY1bz0yIGkCZlyDyRaXpZ2m2mGhV6LFtQvddYzbQ5hWBqyMDTXNeOCZX+b03cVIsW4qxvXVfomuVXcOlimLSfo=
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
X-Mailman-Approved-At: Fri, 28 Jun 2024 20:36:29 +0900
Subject: [tomoyo-users-en   751] util-linux 2.39 mount(2) failures
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

SGVsbG8uCgpJIGFtIGV4cGVyaWVuY2luZyAibW91bnQoMikgc3lzdGVtIGNhbGwgZmFpbGVkOiBG
dW5jdGlvbiBub3QgaW1wbGVtZW50ZWQuIiBmYWlsdXJlcyB3aXRoIHV0aWwtbGludXggMi4zOSsg
YW5kIApjY3MtcGF0Y2gtMS44LjktMjAyMzA1Mjcgd2l0aCBsaW51eCBMVFMgNi4xLjQyIC0gNi4x
LjU4LgoKSSBoYXZlIHRyaWVkIHRoZSBmb2xsb3dpbmcgd2l0aG91dCBzdWNjZXNzOgogICAgdXNp
bmcgdGhlIGxlYXJuaW5nIGFuZCBkaXNhYmxlZCBtb2RlcyBmcm9tIC9ldGMvY2NzL3Byb2ZpbGUu
Y29uZgogICAgY29tcGxldGVseSBkZWxldGluZyBteSBjdXJyZW50IHBvbGljeSBhbmQgZ2VuZXJh
dGluZyBhIG5ldyBwb2xpY3kgdXNpbmcgL3Vzci9saWIvY2NzL2luaXRfcG9saWN5CiAgICB1c2lu
ZyBjY3MtcXVlcnlkIGltbWVkaWF0ZWx5IGFmdGVyIGluc3RhbGxpbmcgdXRpbC1saW51eCAyLjM5
LjIgYW5kIG1vdW50aW5nIHNvbWV0aGluZwogICAgICAgIGNjcy1xdWVyeWQgZGlkIG5vdCBwcm9t
cHQgZm9yIGFueXRoaW5nIGF0IGFsbCBhbmQgY2NzLWF1ZGl0ZCBkb2VzIG5vdCBsb2cgYW55dGhp
bmcKClRoZSBmb2xsb3dpbmcgdGhpbmdzIEkgaGF2ZSB0cmllZCBhbGxvdyBtb3VudCgyKSB0byB3
b3JrIHByb3Blcmx5OgogICAgY2hhbmdpbmcgR1JVQl9DTURMSU5FX0xJTlVYX0RFRkFVTFQgY2Nz
IGluaXQgY29tbWFuZCB0byAiY2NzZWN1cml0eT1vZmYiCiAgICBjb21waWxpbmcgdXRpbC1saW51
eCB3aXRoIHRoZSAiLS1kaXNhYmxlLWxpYm1vdW50LW1vdW50ZmQtc3VwcG9ydCIgb3B0aW9uCiAg
ICB1c2luZyB0aGUgaW4ta2VybmVsIFRPTU9ZTyAoQ09ORklHX1NFQ1VSSVRZX1RPTU9ZTz15KSB3
aXRoIGJvdGggYSBuZXdseSBjcmVhdGVkIHBvbGljeSBhbmQgbXkgZXhpc3RpbmcKICAgICAgICBw
b2xpY3kgKGVkaXRlZCB0byByZW1vdmUgY2NzJ3MgaW5jb21wYXRpYmxlIHNlbmQvcmVjdiBhbmQg
Y2FwYWJpbGl0eSBydWxlcykKCkkgYW0gd29uZGVyaW5nIGlmIGFueW9uZSBlbHNlIGhhcyBleHBl
cmllbmNlZCB0aGVzZSBtb3VudCgyKSBmYWlsdXJlcyBhbmQgbWF5IGhhdmUgc29tZSBhZHZpY2Ug
eW91IGNhbiBzaGFyZS4KClRoYW5rIHlvdS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCnRvbW95by11c2Vycy1lbiBtYWlsaW5nIGxpc3QKdG9tb3lvLXVz
ZXJzLWVuQGxpc3RzLm9zZG4ubWUKaHR0cHM6Ly9saXN0cy5vc2RuLm1lL21haWxtYW4vbGlzdGlu
Zm8vdG9tb3lvLXVzZXJzLWVuCg==
