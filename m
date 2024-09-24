Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id 7A95F984854
	for <lists+tomoyo-users-en@lfdr.de>; Tue, 24 Sep 2024 17:14:18 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id 1AAFA144EB9;
	Wed, 25 Sep 2024 00:14:17 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id E3271144E9F
 for <tomoyo-users-en@lists.osdn.me>; Tue, 24 Sep 2024 23:06:05 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=FREEMAIL_FROM,T_DKIM_INVALID
 autolearn=disabled version=3.4.2
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172]) by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Tue, 24 Sep 2024 23:06:05 +0900 (JST)
Received: by mail-lj1-f172.google.com with SMTP id
 38308e7fff4ca-2f74e613a10so84270221fa.1
 for <tomoyo-users-en@lists.osdn.me>; Tue, 24 Sep 2024 07:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1727186765; x=1727791565; darn=lists.osdn.me;
 h=content-transfer-encoding:subject:from:to:content-language
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=yDLftt9yCBjmRzgEBfT5aavgnm3vok5LaRHEmXyCNB8=;
 b=OcOd0ZTP+t12TuedgBV5lJGSupd5itIbDHZ1MFxp5IpFbAUio57WOfoBdkM6+AT+Bs
 yP7cCh0E3/MbhYxvzqeMNXWpyh99rXRoPO+pxOx3Az/i6ZwvLgL9IJNBg7UP6OnqCeRz
 bUQlhdHeHvnfiMJF9LcOp39j4zYa1+1UDFrr7Ec9exA18JQbGJUH6bwOmk4tjAFJZ/Kf
 86RbAZ4iPq4o1NHDSyNAK91aFJq+um+y7o+W6P0FyE3uPomlmgg7uwRF255GGbI0dAeL
 UeKcLQYLh4ydsyPGHlgQdgYi5BW4pj/hTZt/C8x13XSIGKLMDgJ7zK4UIF9WWMo5pMsc
 /2+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727186765; x=1727791565;
 h=content-transfer-encoding:subject:from:to:content-language
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=yDLftt9yCBjmRzgEBfT5aavgnm3vok5LaRHEmXyCNB8=;
 b=sPzn3I411Zzij7/cpYm129ADMOjWIH+53GY5utf+o3heEUBqNHBkIQoqC9yoigNm66
 U1SnBQYwb/rvB1yprRBDfR3bjKQQ+hl9RYQ/SmzgIY951dRuTqFDS1W/RXvZueQBdUcT
 twvtpKksqovKZHbHwyBky2Y674iPqywphXTyo3sKkHVzNZyZZNJ8m3UNCQjIcaGeKv3B
 RGQv+u07tJvXKKNCovMWT9Nn1gghW9TxGukf9lZG87uqN9g32IejKt8Z0PAMbRzL/Ncn
 2/dmvDtgze6h+VfS2yWtVOwhWwq4zKeZINHWI4FMPDLZIAMJm+j8ZU6AmX9vav+Cmpjf
 s5qg==
X-Gm-Message-State: AOJu0YyvrQCAeKjWLwkpnzw4nVohrDyu/O1zvn47WfC8ZA4pfId62XlJ
 8DxIuHxrUazk6ZKoSgUV1s+g0KhSouGL35aUIsBK2wzg1tJY908KtBJ9xg==
X-Google-Smtp-Source: AGHT+IGlAkyP3bSi0UtL9miKVE7nUeQLYeDOoB81oMdpWrZHrc6idbCJhsFvK5sCuGMnGFt+lKP4oA==
X-Received: by 2002:a2e:b994:0:b0:2f6:62a1:25ff with SMTP id
 38308e7fff4ca-2f7cb359108mr73513571fa.28.1727186764618; 
 Tue, 24 Sep 2024 07:06:04 -0700 (PDT)
Message-ID: <d26b117d-1e13-42d1-9580-6dd6ce034c21@gmail.com>
Date: Tue, 24 Sep 2024 16:06:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: tomoyo-users-en@lists.osdn.me
From: Alfred Agrell <blubban@gmail.com>
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
X-Mailman-Approved-At: Wed, 25 Sep 2024 00:14:15 +0900
Subject: [tomoyo-users-en 768] TOMOYO rejects execveat in chroot without
 /proc, even if not configured
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

S29ubmljaGl3YSBtaW5uYS1zYW1hCgpPbiBhIHN5c3RlbSB3aXRoIFRPTU9ZTyBlbmFibGVkLCB0
cnlpbmcgdG8gcnVuIGV4ZWN2ZWF0KG5vdCBBVF9GRENXRCkgaW4gCmEgY2hyb290IHdpdGhvdXQg
L3Byb2MgZmFpbHMgd2l0aCBFTk9FTlQuIEEgc2ltaWxhciBvcGVuYXQoKSBzdWNjZWVkcy4KClRo
aXMgaGFwcGVucyBldmVuIGlmIFRPTU9ZTyBpc24ndCBjb25maWd1cmVkLCBmb3IgZXhhbXBsZSBp
biBhIGZyZXNoIApEZWJpYW4gaW5zdGFsbC4gSXMgVE9NT1lPIHN1cHBvc2VkIHRvIGRvIGFueXRo
aW5nIGlmIG5vdCBjb25maWd1cmVkPwoKVGVzdCBwcm9ncmFtOgoKCiNkZWZpbmUgX0dOVV9TT1VS
Q0UKI2luY2x1ZGUgPHVuaXN0ZC5oPgojaW5jbHVkZSA8ZmNudGwuaD4KI2luY2x1ZGUgPHN0ZGlv
Lmg+CgppbnQgbWFpbihpbnQgYXJnYywgY2hhcioqIGFyZ3YpCnsKICAgICBjaGRpcigiL2xpYi8i
KTsKICAgICBpZiAoY2hyb290KCIvbGliLyIpICE9IDApIHBlcnJvcigiY2hyb290IChuZWVkcyBy
b290KSIpOwogICAgIGludCBmZDEgPSBvcGVuKCJ4ODZfNjQtbGludXgtZ251LyIsIE9fUkRPTkxZ
KTsKICAgICBpZiAoZmQxIDwgMCkgcGVycm9yKCJvcGVuIik7CiAgICAgaW50IGZkMiA9IG9wZW5h
dChmZDEsICJsZC1saW51eC14ODYtNjQuc28uMiIsIE9fUkRPTkxZKTsKICAgICBpZiAoZmQyIDwg
MCkgcGVycm9yKCJvcGVuYXQiKTsKICAgICBleGVjdmVhdChmZDEsICJsZC1saW51eC14ODYtNjQu
c28uMiIsIE5VTEwsIE5VTEwsIDApOwogICAgIHBlcnJvcigiZXhlY3ZlYXQiKTsKfQoKCk9yaWdp
bmFsbHkgcmVwb3J0ZWQgYXMgYSBEZWJpYW4gYnVnLCBidXQgSSB3YXMgcmVkaXJlY3RlZCBoZXJl
LiAKaHR0cHM6Ly9idWdzLmRlYmlhbi5vcmcvY2dpLWJpbi9idWdyZXBvcnQuY2dpP2J1Zz0xMDgy
MDAxCgotLSBBbGZyZWQgQWdyZWxsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwp0b21veW8tdXNlcnMtZW4gbWFpbGluZyBsaXN0CnRvbW95by11c2Vycy1l
bkBsaXN0cy5vc2RuLm1lCmh0dHBzOi8vbGlzdHMub3Nkbi5tZS9tYWlsbWFuL2xpc3RpbmZvL3Rv
bW95by11c2Vycy1lbgo=
