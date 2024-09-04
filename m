Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id DF98996CA1E
	for <lists+tomoyo-users-en@lfdr.de>; Thu,  5 Sep 2024 00:16:02 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id 8F4B5144F22;
	Thu,  5 Sep 2024 07:16:01 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id 7B37A144F25
 for <tomoyo-users-en@lists.osdn.me>; Wed,  4 Sep 2024 23:23:17 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=T_DKIM_INVALID
 autolearn=disabled version=3.4.2
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com
 [209.85.219.181]) by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Wed,  4 Sep 2024 23:23:17 +0900 (JST)
Received: by mail-yb1-f181.google.com with SMTP id
 3f1490d57ef6-e116a5c3922so6335104276.1
 for <tomoyo-users-en@lists.osdn.me>; Wed, 04 Sep 2024 07:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore.com; s=google; t=1725459797; x=1726064597; darn=lists.osdn.me;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+m6Q3XqGIlbZjyYooay9Pnx0IaHEWZeV5bCVZM3wfRk=;
 b=gNID87G3oMrvCpHjf5y5HtmZbPH5OKpuQst0dTddSoSvXVThsOUbrdi5taeMyMPR4P
 T7YXu1jfMsu/FQre1mNSJmO+oHxGnGutWqnDhPB4lZS93Iwh9QZSq84q5spFIpauXDVs
 0rihgYkC/ALmhA8dZZyG0c5siVgpbOsqSTpvlC2iAnzBJTwzTJOy+WO5MvAL1KPOZ2rx
 wfcJOGm2xLI+WTdmCiTxy2avQlEto0FfV+wMykWQ+QSo5r7VJTX4WVWzevHAclCXjrKK
 vUscv+jfteMLPmiovlmtNia9tvj8aCgG7Qh0HbAGYFVfaEafn7G3Gxtr//PjPwja4JBw
 5XiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725459797; x=1726064597;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=+m6Q3XqGIlbZjyYooay9Pnx0IaHEWZeV5bCVZM3wfRk=;
 b=ln9bP7o1RmsEJNmUlN5GMxVQJ0bJQU8DbntHRd31PxAqkWMDWwrwXyCsWmkVNuljiq
 ls+s31NVP5Kk9P5OWs2IVMiUvpeekjPCWKk9z1NIxFRXUoYrmCc25p8ITZ5RSh0Kb+xO
 m3U1btOlTcJ7xtWZjoOEt3BmEizH9lYMFh4Nzxl4d/OZ0Ams1qWeYlz4FsV+oLAR5O1T
 vT5bZ1ol0Sj3MnyBr9CgKq1Q9guUHKRWiTn6ZacuSCdQjK7Yujle3C1y3+mbndG7BrmK
 Vk5FbL1T2fUy72mk4CP/mSBHJkEB5G4bZodPmSAqtfbVu0R9fsy4KPAyfKCbWTLlqLpv
 kWcQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX9pq1h/Oqo74a5Z6DPRZl71HeihxG3c0+J9RQGawZ7p9UVrxOvDrpSlG9GWyRjRAzzB5k05tAS33Qc8g8DwDc=@lists.osdn.me
X-Gm-Message-State: AOJu0Yx7+USHuI+2Edz2OqbaRGFnnpuDZVuNsN7to3US5EJArkKNCK/d
 4BqAlHvLTmSLMUlnEbc9TO6wquWIeJJVnnz++FHlUL+XY9wIjilJGxFm/INlpHZjjU/phLxrOH0
 NH13g3SfRSrh9nQpg3MZNfrJjHZY9+/IkLgyB
X-Google-Smtp-Source: AGHT+IFB5F7DMOWkLKCfWyKdUy8S7YwDbSHdcIxU2ngKOEIFd2UbeJ3ymRqS0hTytMC8ghB8E4xsO9iWyWM25xE8Fhk=
X-Received: by 2002:a05:6902:98e:b0:e1a:a2cd:5d6c with SMTP id
 3f1490d57ef6-e1aa2cd601cmr11495199276.56.1725459796711; Wed, 04 Sep 2024
 07:23:16 -0700 (PDT)
MIME-Version: 1.0
References: <caafb609-8bef-4840-a080-81537356fc60@I-love.SAKURA.ne.jp>
In-Reply-To: <caafb609-8bef-4840-a080-81537356fc60@I-love.SAKURA.ne.jp>
From: Paul Moore <paul@paul-moore.com>
Date: Wed, 4 Sep 2024 10:23:05 -0400
Message-ID: <CAHC9VhT_eBGJq5viU8R_HVWT=BTcxesWAi3nLcMgG8NfswKesA@mail.gmail.com>
To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
X-Mailman-Approved-At: Thu, 05 Sep 2024 07:16:00 +0900
Subject: [tomoyo-users-en 761] Re: [PATCH] LSM: allow loadable kernel module
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
 tomoyo-users-en@lists.osdn.me, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

T24gV2VkLCBTZXAgNCwgMjAyNCBhdCAzOjEw4oCvQU0gVGV0c3VvIEhhbmRhCjxwZW5ndWluLWtl
cm5lbEBpLWxvdmUuc2FrdXJhLm5lLmpwPiB3cm90ZToKPgo+IFVudGlsIDIuNi4yMywgaXQgd2Fz
IG9mZmljaWFsbHkgcG9zc2libGUgdG8gcmVnaXN0ZXIvdW5yZWdpc3RlciBMU00gbW9kdWxlcwo+
IHRoYXQgYXJlIGltcGxlbWVudGVkIGFzIGxvYWRhYmxlIGtlcm5lbCBtb2R1bGVzLgoKLi4uCgo+
IFBhdWwgTW9vcmUgaGFzIGNvbW1lbnRlZAo+Cj4gICBJIGRvIG5vdCBpbnRlbnRpb25hbGx5IHBs
YW4gdG8gbWFrZSBsaWZlIGRpZmZpY3VsdCBmb3IgdGhlIG91dC1vZi10cmVlCj4gICBMU01zLCBi
dXQgaWYgdGhhdCBoYXBwZW5zIGFzIGEgcmVzdWx0IG9mIGRlc2lnbiBkZWNpc2lvbnMgaW50ZW5k
ZWQgdG8KPiAgIGJlbmVmaXQgaW4tdHJlZSBMU01zIHRoYXQgaXMgYWNjZXB0YWJsZSBhcyBmYXIg
YXMgSSBhbSBjb25jZXJuZWQuCgpQYXRjaGVzIHRoYXQgYWRkIGNvbXBsZXhpdHkgdG8gdGhlIExT
TSBmcmFtZXdvcmsgd2l0aG91dCBhbnkgYmVuZWZpdAp0byB0aGUgdXBzdHJlYW0sIGluLXRyZWUg
TFNNcywgb3IgdGhlIHVwc3RyZWFtIGtlcm5lbCBpbiBnZW5lcmFsLCBhcmUKbm90IGdvb2QgY2Fu
ZGlkYXRlcyBmb3IgaW5jbHVzaW9uIGluIHRoZSB1cHN0cmVhbSBrZXJuZWwuCgotLSAKcGF1bC1t
b29yZS5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CnRvbW95by11c2Vycy1lbiBtYWlsaW5nIGxpc3QKdG9tb3lvLXVzZXJzLWVuQGxpc3RzLm9zZG4u
bWUKaHR0cHM6Ly9saXN0cy5vc2RuLm1lL21haWxtYW4vbGlzdGluZm8vdG9tb3lvLXVzZXJzLWVu
Cg==
