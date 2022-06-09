Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id 845BD545794
	for <lists+tomoyo-users-en@lfdr.de>; Fri, 10 Jun 2022 00:43:22 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id 10039144C21;
	Fri, 10 Jun 2022 07:43:21 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id BA571144C1D
 for <tomoyo-users-en@lists.osdn.me>; Fri, 10 Jun 2022 07:43:19 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=7.0 tests=HTML_MESSAGE
 autolearn=disabled version=3.4.2
Received: from asav21.altibox.net (asav21.altibox.net [109.247.116.8])
 by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Fri, 10 Jun 2022 07:43:19 +0900 (JST)
Message-ID: <81f92170-5f4e-36e8-f75b-eeced0f7d23c@sklbb.no>
Date: Fri, 10 Jun 2022 00:43:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
To: tomoyo-users-en@lists.osdn.me
Content-Language: en-US
From: Andre T <andre.tverborgvik@sklbb.no>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=ToPIegfh c=1 sm=1 tr=0
 a=hDMb5eWXK3Iy84yZUWXuUA==:117 a=hDMb5eWXK3Iy84yZUWXuUA==:17
 a=Vx3ZcJ_miBWg3cob:21 a=r77TgQKjGQsHNAKrUKIA:9 a=Br9LfDWDAAAA:8
 a=x28_tFQoNlcXlf5NrmMA:9 a=QEXdDO2ut3YA:10 a=T80O_JyHuPjXvGM8J5EA:9
 a=VH64M4BxtMTjWJgf:21 a=_W_S_7VecoQA:10 a=G2t4ndmmEyBurCmzyHIc:22
 a=gR_RJRYUad_6_ruzA8cR:22
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
Subject: [tomoyo-users-en 737] Can't get Tomoyo to load policies on one of
 two (near identical systems) PCs..
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
Content-Type: multipart/mixed; boundary="===============6022914836108159600=="
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

This is a multi-part message in MIME format.
--===============6022914836108159600==
Content-Type: multipart/alternative;
 boundary="------------R4O2kf2siRXt6wJ3jd8vWfpL"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------R4O2kf2siRXt6wJ3jd8vWfpL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

I've recently started using using tomoyo on two quite similar systems

On one of the PCs (referring to it as *PC1*) it appears to all be 
running fine and as expected.

However on the other PC (referring to it as *PC2*) , tomoyo will 
apparently not load policies. This regardless of whatever i try. And 
i've now basically ran out of thoughts as to what might be wrong and how 
to troubleshoot it any further.

  * Both PCs are running 64bit Arch Linux and are utilizing current
    kernel(s) *5.18.1-arch1-1 *as confirmed trough /uname -r/
    **
  * Both using the 'tomoyo-tools' AUR packages respective to
    instructions on
    /https://wiki.archlinux.org/title/TOMOYO_Linux#TOMOYO_Linux_2.x/
    **
  * Both boot from GRUB to ext4 root filesystems with
    lsm=landlock,lockdown,yama,tomoyo,bpf set identically trough
    //etc/default/grub/
      o GRUB_CMDLINE_LINUX_DEFAULT="lsm=landlock,lockdown,yama,tomoyo,bpf"/

        /
  * Tomoyo is reporting itself as being initialized and running on both
    trough
      o /dmesg | grep -A 1 -B 1 TOMOYO
        /
      o /cat /sys/kernel/security/lsm/
      o /grep tomoyo_write_inet_network /proc/kallsyms

        /
  * PC1 is an AMD ryzen7 platform while PC2 is an Intel platform
  * PC2 gets used via SSH and is headless, PC1 via graphical
    desktop/terminal

If i make alterations to files/in /etc/tomoyo/*/  ,the changes will 
reflect fine and as expected on PC1. Though on PC2 not even the defaults 
as set by /usr/lib/tomoyo/init_policy gets imitated upon it's booting 
and the settings stay on disk only. PC2 appears to only have tomoyo 
function should i manually use/tomoyo-loadpolicy/. PC2 will apparently 
ignore anything set in/from that folder, and will for some reason always 
boot to an empty /'0:  0     <kernel>/' domains listing and nothing else 
getting listed, as well having nothing for profile except /0: 
PROFILE_VERSION=20150505 /and only two lines at exception policy being :

     0: initialize_domain /sbin/hotplug from any
     1: initialize_domain /sbin/modprobe from any


Hoping someone might have some ideas or clues as what is going on with 
PC2 if even just things that might theoretically be the cause of it issue.

I'm happy to provide any further info that might help identifying the 
causes.

Skål! 🍺


--------------R4O2kf2siRXt6wJ3jd8vWfpL
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>I've recently started using using tomoyo on two quite similar
      systems</p>
    <p>On one of the PCs (referring to it as <b>PC1</b>) it appears to
      all be running fine and as expected.<br>
    </p>
    <p>However on the other PC (referring to it as <b>PC2</b>) , tomoyo
      will apparently not load policies. This regardless of whatever i
      try. And i've now basically ran out of thoughts as to what might
      be wrong and how to troubleshoot it any further.</p>
    <ul>
      <li>Both PCs are running 64bit Arch Linux and are utilizing
        current kernel(s) <b>5.18.1-arch1-1 </b>as confirmed trough <i>uname
          -r</i><br>
        <b></b></li>
      <li>Both using the 'tomoyo-tools' AUR packages respective to
        instructions on <i><a class="moz-txt-link-freetext" href="https://wiki.archlinux.org/title/TOMOYO_Linux#TOMOYO_Linux_2.x">https://wiki.archlinux.org/title/TOMOYO_Linux#TOMOYO_Linux_2.x</a></i><br>
        <b></b></li>
      <li>Both boot from GRUB to ext4 root filesystems with <cite>lsm=landlock,lockdown,yama,tomoyo,bpf</cite>
        set identically trough <i>/etc/default/grub</i></li>
      <ul>
        <li><cite>GRUB_CMDLINE_LINUX_DEFAULT="lsm=landlock,lockdown,yama,tomoyo,bpf"</cite><i><br>
            <br>
          </i></li>
      </ul>
      <li>Tomoyo is reporting itself as being initialized and running on
        both trough</li>
      <ul>
        <li><i>dmesg | grep -A 1 -B 1 TOMOYO <br>
          </i></li>
        <li><i>cat /sys/kernel/security/lsm</i></li>
        <li><i>grep tomoyo_write_inet_network /proc/kallsyms<br>
            <br>
          </i></li>
      </ul>
      <li>PC1 is an AMD ryzen7 platform while PC2 is an Intel platform</li>
      <li>PC2 gets used via SSH and is headless, PC1 via graphical
        desktop/terminal</li>
    </ul>
    <p>If i make alterations to files<i> in /etc/tomoyo/*</i>  ,the
      changes will reflect fine and as expected on PC1. Though on PC2
      not even the defaults as set by /usr/lib/tomoyo/init_policy gets
      imitated upon it's booting and the settings stay on disk only. PC2
      appears to only have tomoyo function should i manually use<i>
        tomoyo-loadpolicy</i>. PC2 will apparently ignore anything set
      in/from that folder, and will for some reason always boot to an
      empty <i>'0:  0     &lt;kernel&gt;</i>' domains listing and
      nothing else getting listed, as well having nothing for profile
      except <i>0: PROFILE_VERSION=20150505 </i>and only two lines at
      exception policy being : <br>
    </p>
    <p><samp>    0: initialize_domain /sbin/hotplug from any</samp><samp><br>
      </samp><samp>    1: initialize_domain /sbin/modprobe from any</samp><samp></samp></p>
    <p><br>
      Hoping someone might have some ideas or clues as what is going on
      with PC2 if even just things that might theoretically be the cause
      of it issue.<br>
      <br>
      I'm happy to provide any further info that might help identifying
      the causes.<br>
      <br>
      Skål! 🍺<br>
    </p>
    <p><samp><br>
      </samp></p>
  </body>
</html>

--------------R4O2kf2siRXt6wJ3jd8vWfpL--


--===============6022914836108159600==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdG9tb3lvLXVz
ZXJzLWVuIG1haWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMub3Nkbi5tZQpodHRwczov
L2xpc3RzLm9zZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNlcnMtZW4K

--===============6022914836108159600==--

