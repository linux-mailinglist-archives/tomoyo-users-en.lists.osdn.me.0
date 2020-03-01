Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (gw0.osdn.jp [202.221.179.250])
	by mail.lfdr.de (Postfix) with ESMTP id 81CDD174C24
	for <lists+tomoyo-users-en@lfdr.de>; Sun,  1 Mar 2020 08:26:11 +0100 (CET)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 sf-lists.priv.osdn.jp
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=FREEMAIL_FROM,T_DKIM_INVALID
 autolearn=disabled version=3.4.2
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68]) by sf-lists.priv.osdn.jp (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Sun,  1 Mar 2020 16:26:05 +0900 (JST)
Received: by mail-lf1-f68.google.com with SMTP id j11so1987923lfg.4
 for <tomoyo-users-en@lists.osdn.me>; Sat, 29 Feb 2020 23:26:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language;
 bh=0oCV+us7wjbSJBVGZs/iwHB0X2T8S/8rNyRIdEyyj00=;
 b=a4gXTr7gZaVVvKiBGcbq8QiBJdzxkjakjbQ9Q71eLOonCh9VIoDQvS7wb1o5JtZAws
 b+Lg5aGUxZqipIedo9j50AQzaKUEN3/1gjnbyz5CkUGRPCMk3D6Wo/RFSabMyOxb0wZ+
 oFYwFoade/zmYLb22mYqOQtkT1Akc1o81AoHn1kJdkS2UIyI56aAfnW1n95Q8EdV+TSh
 QGMlvSbUpFWN4sK+UWjxcmh4WMc996fy6oE4oLlUDswk0f89gq7Bw+gsdiyjsFARCYv+
 FzIOTPxYnqLsmS8X1nZyBd4zChIy5ptoB5hOWubSkDv597+lopN1cPk526mih5YC1VYR
 J8ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=0oCV+us7wjbSJBVGZs/iwHB0X2T8S/8rNyRIdEyyj00=;
 b=HWDgQIM1+4t6zlGmm0WGlqEUDXO410Jkl4tRr8DxRUbLrIG7YgYjtP98MNZOlCYxjI
 Gne7brf5oTNv/nPEafxAv9q1wkE+qLV/iC6Syh/r3ksW/OA3CgRltB0G7vBrtq516JhA
 xlVSxHE6J9qgzJK3E9UGFz8QXKlDt3bh4iGlHgSPWN73hXRDw66DkWarsEQfJOT9I32g
 nGmUyaJyxqG06MXjAiqcvYMeGKsEYqbPQEauwT1tiBIPEixN+XACvNLVIo3N+yK3I/lo
 06XQaOQbSxpdGTYbZjG79/xxjalY7q//5FPtbBMpTNGrGk1HGiAn2bhtb4QKgeg2Jrgv
 zeQw==
X-Gm-Message-State: ANhLgQ32+j0QmmJub2TUM3Vw4Zi6OQVEd72Eh5LYGpTP6zA4bXTIiGpo
 qq3aZZywvalZwCoaMvj3/xLG3hNt
X-Google-Smtp-Source: ADFU+vvoUEAXwp33aQZDhoKwhjpSaUfO6DUYMl+xjTsqQHoydu/0XUhxBWsuBYmzWLNqdnuY4Tgfsg==
X-Received: by 2002:ac2:4211:: with SMTP id y17mr2880780lfh.157.1583047564305; 
 Sat, 29 Feb 2020 23:26:04 -0800 (PST)
To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
References: <4fa32b94-d9a2-f49d-fa37-08ad3f7a9f53@gmail.com>
 <df81e765-cd82-2b5a-af17-4a1212848592@i-love.sakura.ne.jp>
 <614f1237-638c-e606-eb57-ee71c0bdb373@gmail.com>
 <a5c7fa37-a6c8-b775-49ae-81e2791309c9@i-love.sakura.ne.jp>
From: Topi Miettinen <toiwoton@gmail.com>
Message-ID: <bde5fcaa-fe59-e53f-8612-c96110384487@gmail.com>
Date: Sun, 1 Mar 2020 09:25:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <a5c7fa37-a6c8-b775-49ae-81e2791309c9@i-love.sakura.ne.jp>
Content-Type: multipart/mixed; boundary="------------98BFC3E3351816A5A7FE6632"
Content-Language: en-US
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.2/25737/Sat Feb 29 21:12:46 2020
Subject: [tomoyo-users-en 724] Re: [PATCH] Add systemd service for
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
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

This is a multi-part message in MIME format.
--------------98BFC3E3351816A5A7FE6632
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1.3.2020 1.04, Tetsuo Handa wrote:
> On 2020/03/01 0:41, Topi Miettinen wrote:
>> On 29.2.2020 7.30, Tetsuo Handa wrote:
>>> Hello.
>>>
>>> On 2020/02/24 6:27, Topi Miettinen wrote:
>>>> Enable many hardening features provided by systemd for tomoyo-auditd.
>>>>
>>>> Signed-off-by: Topi Miettinen <toiwoton@gmail.com>
>>>> ---
>>>>    Include.make                                 |  1 +
>>>>    Makefile                                     |  1 +
>>>>    usr_lib_systemd_system/Makefile              |  7 ++++
>>>>    usr_lib_systemd_system/tomoyo-auditd.service | 39 ++++++++++++++++++++
>>>>    4 files changed, 48 insertions(+)
>>>>    create mode 100644 usr_lib_systemd_system/Makefile
>>>>    create mode 100644 usr_lib_systemd_system/tomoyo-auditd.service
>>>
>>> Thank you for a patch, but I can't apply this patch because this service file requires
>>> more recent systemd versions. I get following errors on systemd-219-67.el7_7.3.x86_64:
>>
>> Sorry for the rant, but version 219 of systemd is 5 years old. Why on earth would anyone
>> use that together with new version of tomoyo-tools from 2020? Typically software is developed
>> against current versions of other dependent software, or at least current versions, which are
>> common in major distributions like Fedora, Debian or Arch. Otherwise, if there are
>> incompatibilities or regressions with the new versions, this will be discovered (in the worst
>> case) many years after the other packages have been released. It's the job of those downstream
>> distributions, who want to support stable versions or old versions of the software, to backport
>> or remove new features which are not yet available in the old versions of other packages.
> 
> Excuse me, but version 219-67.el7_7.3 of systemd is the latest version for RHEL7/CentOS7 users.
> I am developing latest kernels on CentOS7. Developing and testing on various environments/
> platforms is good for finding incompatibilities/regressions. But I can't afford testing all
> distribution/platform's all applications. Thus, bug reports from users (like
> https://osdn.net//projects/tomoyo/ticket/40012 ) are welcomed.
> 
>>
>> But if you insist, I can comment out the lines and add a comment stating that it's recommended
>> to enable these for current versions systemd.
> 
> Also, there are distributions which do not use systemd. It would be possible to include this service
> file into the tar ball or the online documentation, but I don't want to unconditionally install this
> service file. Thus, I insist that I can't apply this change which unconditionally requires
> availability of upstream latest systemd.

OK, please find attached an updated version.

The .service files do nothing in case systemd isn't used. Even if the 
file is installed on a system with systemd, package installation script 
or the local system administrator has to enable the service before it 
can take effect.

-Topi

--------------98BFC3E3351816A5A7FE6632
Content-Type: text/x-diff; charset=UTF-8;
 name="0001-Add-systemd-service-for-tomoyo-auditd.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0001-Add-systemd-service-for-tomoyo-auditd.patch"

>From 4934ff16baeadcfd9c9319f6ad745adec6a1d710 Mon Sep 17 00:00:00 2001
From: Topi Miettinen <toiwoton@gmail.com>
Date: Sun, 23 Feb 2020 23:14:43 +0200
Subject: [PATCH] Add systemd service for tomoyo-auditd

Enable many hardening features provided by systemd for tomoyo-auditd.

Signed-off-by: Topi Miettinen <toiwoton@gmail.com>
---
 Include.make                                 |  1 +
 Makefile                                     |  1 +
 usr_lib_systemd_system/Makefile              |  7 ++++
 usr_lib_systemd_system/tomoyo-auditd.service | 44 ++++++++++++++++++++
 4 files changed, 53 insertions(+)
 create mode 100644 usr_lib_systemd_system/Makefile
 create mode 100644 usr_lib_systemd_system/tomoyo-auditd.service

diff --git a/Include.make b/Include.make
index ff08451..df8efa9 100644
--- a/Include.make
+++ b/Include.make
@@ -2,6 +2,7 @@ INSTALL         := install
 SBINDIR         := /sbin
 USRSBINDIR      := /usr/sbin
 USRLIBDIR       := /usr/lib
+SERVICEDIR      := /usr/lib/systemd/system
 MAN8            := /usr/share/man/man8
 ifndef CFLAGS
 CFLAGS          := -Wall -O2
diff --git a/Makefile b/Makefile
index e415823..606cbfc 100644
--- a/Makefile
+++ b/Makefile
@@ -8,6 +8,7 @@ install: all
 	$(MAKE) -C usr_sbin install
 	$(MAKE) -C usr_lib_tomoyo install
 	$(MAKE) -C usr_share_man install
+	$(MAKE) -C usr_lib_systemd_system install
 
 clean:
 ##
diff --git a/usr_lib_systemd_system/Makefile b/usr_lib_systemd_system/Makefile
new file mode 100644
index 0000000..e3752a4
--- /dev/null
+++ b/usr_lib_systemd_system/Makefile
@@ -0,0 +1,7 @@
+include ../Include.make
+
+install:
+	mkdir -p -m 0755 $(INSTALLDIR)$(SERVICEDIR)
+	$(INSTALL) -m 0644 *.service $(INSTALLDIR)$(SERVICEDIR)
+
+.PHONY: install
diff --git a/usr_lib_systemd_system/tomoyo-auditd.service b/usr_lib_systemd_system/tomoyo-auditd.service
new file mode 100644
index 0000000..af8fe81
--- /dev/null
+++ b/usr_lib_systemd_system/tomoyo-auditd.service
@@ -0,0 +1,44 @@
+# This version works with systemd 219 (Centos 7). The lines commented
+# out are recommended to be used with more recent versions.
+
+[Unit]
+Before=sysinit.target shutdown.target
+ConditionSecurity=tomoyo
+Conflicts=shutdown.target
+DefaultDependencies=no
+RequiresMountsFor=/var /sys
+
+[Service]
+CapabilityBoundingSet=
+DeviceAllow=/dev/null
+DevicePolicy=strict
+ExecStart=/usr/sbin/tomoyo-auditd
+#IPAddressDeny=any
+#LockPersonality=yes
+#MemoryDenyWriteExecute=yes
+NoNewPrivileges=yes
+PrivateDevices=yes
+PrivateNetwork=yes
+PrivateTmp=yes
+#PrivateUsers=yes
+ProtectControlGroups=yes
+ProtectHome=yes
+#ProtectHostname=yes
+#ProtectKernelLogs=yes
+#ProtectKernelModules=yes
+#ProtectKernelTunables=yes
+#ProtectSystem=strict
+ProtectSystem=yes
+Restart=always
+RestrictAddressFamilies=
+#RestrictNamespaces=yes
+#RestrictRealtime=yes
+#RestrictSUIDSGID=yes
+SystemCallArchitectures=native
+#SystemCallFilter=@system-service
+#SystemCallFilter=~@chown @clock @cpu-emulation @debug @ipc @module @mount @obsolete @privileged @raw-io @reboot @resources @swap memfd_create mincore mlock mlockall personality
+Type=forking
+UMask=0077
+
+[Install]
+WantedBy=multi-user.target
-- 
2.25.1


--------------98BFC3E3351816A5A7FE6632
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdG9tb3lvLXVz
ZXJzLWVuIG1haWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMub3Nkbi5tZQpodHRwczov
L2xpc3RzLm9zZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNlcnMtZW4K

--------------98BFC3E3351816A5A7FE6632--

