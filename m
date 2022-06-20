Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id 2984055178E
	for <lists+tomoyo-users-en@lfdr.de>; Mon, 20 Jun 2022 13:41:06 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id BC7A0144D39;
	Mon, 20 Jun 2022 20:41:04 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id 197BC144D35
 for <tomoyo-users-en@lists.osdn.me>; Mon, 20 Jun 2022 20:41:03 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=7.0 tests=HTML_MESSAGE
 autolearn=disabled version=3.4.2
Received: from asav22.altibox.net (asav22.altibox.net [109.247.116.9])
 by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Mon, 20 Jun 2022 20:41:02 +0900 (JST)
Message-ID: <9e8e0b5c-583f-21a1-f217-21ab26b8259e@sklbb.no>
Date: Mon, 20 Jun 2022 13:40:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
References: <81f92170-5f4e-36e8-f75b-eeced0f7d23c@sklbb.no>
 <2feaa151-9653-12df-1498-253a8ba9b6b3@I-love.SAKURA.ne.jp>
 <a5643339-370e-ce5a-654e-2ce7ceb4a08e@sklbb.no>
 <e4ebfdfc-8cfa-fb14-907d-88f8230cd51c@I-love.SAKURA.ne.jp>
From: Andre T <andre.tverborgvik@sklbb.no>
In-Reply-To: <e4ebfdfc-8cfa-fb14-907d-88f8230cd51c@I-love.SAKURA.ne.jp>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=OMcJIxSB c=1 sm=1 tr=0
 a=PBfipx6tr1bT3nLrXkGN1g==:117 a=PBfipx6tr1bT3nLrXkGN1g==:17
 a=Vx3ZcJ_miBWg3cob:21 a=r77TgQKjGQsHNAKrUKIA:9 a=Br9LfDWDAAAA:8
 a=VwQbUJbxAAAA:8 a=TkpQfmzK5Yhd_aCykb0A:9 a=QEXdDO2ut3YA:10
 a=l_kSDOR22Ry9Ddq7TpgA:9 a=owbimvN5kBUtAzTd:21 a=_W_S_7VecoQA:10
 a=G2t4ndmmEyBurCmzyHIc:22 a=gR_RJRYUad_6_ruzA8cR:22
 a=AjGcO6oz07-iQ99wixmX:22
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
Subject: [tomoyo-users-en 741] Re: Can't get Tomoyo to load policies on one
 of two (near identical systems) PCs..
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
Content-Type: multipart/mixed; boundary="===============4284322623983431335=="
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

This is a multi-part message in MIME format.
--===============4284322623983431335==
Content-Type: multipart/alternative;
 boundary="------------01c239HZaVugwao3435Y7Y9q"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------01c239HZaVugwao3435Y7Y9q
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Tomoyo now runs seemingly as one would expect on PC2 as well.

Regrettably, I have no way of knowing what was the actual problem since 
this only got discovered after quite a few changes having already been 
made to the system (though none inherently to tomoyo itself nor even 
with tomoyo in mind)

At some point in the middle of it all, it just happened to get noticed 
at it's local login tty where it upon bootups and logins had began 
stating something along the lines of:

     <some number> domains. <some number> ACL entries.
     <some number> KB used by policy.


The alterations of the system more or less only consisted grub/vconsole 
setfont-(map) and screen/resolution- configuration, (re)naming network 
interfaces properly, a reinstall/upgrade of nf/iptables and shorewall 
along with disabling all tcp/udp services and dockers. None of which i 
would expect could make much of a difference to tomoyo.

Though it gave me some thoughts :

  * Might there possibly be anything that keeps/kept Tomoyo from being
    installed/initialized correctly via *SSH only*, requiring at least a
    one-time local TTY (and root?) interaction before it gets working
    properly ?

    (from the time of tomoyo install and now the other day, The pc had
    not even had a screen or keyboard hooked up to it for a relatively
    long while. And both the 'tomoyo-tools' install and the attempts at
    configuring it all had exclusively been done entirely trough SSH)

  * Or, is it remotely possible it could've been some BIOS setting that
    kept it from working ?

    (the pc's BIOS settings got briefly revisited but it's uncertain and
    unlikely if there any actual changes were made)


I'll make a more mindful observing of tomoyo and get back here should it 
at any point stop working again. And then hopefully with more accurate 
info as to what might have potentially been the reason for it's 
previously failing.


Other than that, thanks again for your attention, your time and 
information given towards my issue. And not to mention the absolute 
kick*ss thing that is TOMOYO!

Skål!

On 14.06.2022 01:06, Tetsuo Handa wrote:
> On 2022/06/14 5:20, Andre T wrote:
>>> Please check that /sbin/tomoyo-init exists and can be manually executed from
>>> a shell on PC2. Then, please check that either
>>>
>>>     Calling /sbin/tomoyo-init to load policy. Please wait.
>>>
>>> or
>>>
>>>     Not activating Mandatory Access Control as /sbin/tomoyo-init does not exist.
>>>
>>> appears in the dmesg output when you reboot PC2.
>>  From what it seems so far neither of the two lines seems to appear on the PC. (dmesg output included furthest below)
>>
> OK. Then, I guess that the program which is specified using
> CONFIG_SECURITY_TOMOYO_ACTIVATION_TRIGGER does not exist on PC2.
>
> It seems that Arch Linux has multiple choices for the init system.
>
>    https://wiki.archlinux.org/title/init
>    https://wiki.archlinux.org/title/Mkinitcpio
>
> I guess that the program used as init on PC1 and PC2 differs. Please compare
>
>    ls -l /proc/1/
>
> (as root user) between PC1 and PC2. If the program indicated by /proc/1/exe differs,
> try specifying that program using TOMOYO_trigger= kernel command line parammeter; like
> TOMOYO_trigger=/usr/lib/systemd/systemd if /proc/1/exe indicates /usr/lib/systemd/systemd .
>
>> (I'm noticing the "Unknown kernel command line parameters ..." line so whether
>> or not that might affect tomoyo i'm not sure, but it's definetly to be checked
>> out what's going on there none the less)
> That is expected behavior and is irrelevant to this problem.
>
>    https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=86d1919a4fb0d9c115dd1d3b969f5d1650e45408
>    https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=8bc2b3dca7292347d8e715fb723c587134abe013
>
> Regards.
>
--------------01c239HZaVugwao3435Y7Y9q
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Tomoyo now runs seemingly as one would expect on PC2 as well.</p>
    <p>Regrettably, I have no way of knowing what was the actual problem
      since this only got discovered after quite a few changes having
      already been made to the system (though none inherently to tomoyo
      itself nor even with tomoyo in mind)</p>
    <p>At some point in the middle of it all, it just happened to get
      noticed at it's local login tty where it upon bootups and logins
      had began stating something along the lines of:<br>
      <br>
          &lt;some number&gt; domains. &lt;some number&gt; ACL entries.<br>
          &lt;some number&gt; KB used by policy.</p>
    <p><br>
    </p>
    <p>The alterations of the system more or less only consisted
      grub/vconsole setfont-(map) and screen/resolution- configuration,
      (re)naming network interfaces properly, a reinstall/upgrade of
      nf/iptables and shorewall along with disabling all tcp/udp
      services and dockers. None of which i would expect could make much
      of a difference to tomoyo.<br>
    </p>
    <p>Though it gave me some thoughts :</p>
    <ul>
      <li>Might there possibly be anything that keeps/kept Tomoyo from
        being installed/initialized correctly via <b>SSH only</b>,
        requiring at least a one-time local TTY (and root?) interaction
        before it gets working properly ?<br>
        <br>
        (from the time of tomoyo install and now the other day, The pc
        had not even had a screen or keyboard hooked up to it for a
        relatively long while. And both the 'tomoyo-tools' install and
        the attempts at configuring it all had exclusively been done
        entirely trough SSH)<br>
        <br>
      </li>
      <li>Or, is it remotely possible it could've been some BIOS setting
        that kept it from working ?<br>
        <br>
        (the pc's BIOS settings got briefly revisited but it's uncertain
        and unlikely if there any actual changes were made)<br>
      </li>
    </ul>
    <p><br>
    </p>
    <p>I'll make a more mindful observing of tomoyo and get back here
      should it at any point stop working again. And then hopefully with
      more accurate info as to what might have potentially been the
      reason for it's previously failing.<br>
    </p>
    <p><br>
      Other than that, thanks again for your attention, your time and
      information given towards my issue. And not to mention the
      absolute kick*ss thing that is TOMOYO!<br>
    </p>
    <p>Skål!<br>
    </p>
    <div class="moz-cite-prefix">On 14.06.2022 01:06, Tetsuo Handa
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:e4ebfdfc-8cfa-fb14-907d-88f8230cd51c@I-love.SAKURA.ne.jp">
      <pre class="moz-quote-pre" wrap="">On 2022/06/14 5:20, Andre T wrote:
</pre>
      <blockquote type="cite">
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">Please check that /sbin/tomoyo-init exists and can be manually executed from
a shell on PC2. Then, please check that either

   Calling /sbin/tomoyo-init to load policy. Please wait.

or

   Not activating Mandatory Access Control as /sbin/tomoyo-init does not exist.

appears in the dmesg output when you reboot PC2.
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
>From what it seems so far neither of the two lines seems to appear on the PC. (dmesg output included furthest below)

</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
OK. Then, I guess that the program which is specified using
CONFIG_SECURITY_TOMOYO_ACTIVATION_TRIGGER does not exist on PC2.

It seems that Arch Linux has multiple choices for the init system.

  <a class="moz-txt-link-freetext" href="https://wiki.archlinux.org/title/init">https://wiki.archlinux.org/title/init</a>
  <a class="moz-txt-link-freetext" href="https://wiki.archlinux.org/title/Mkinitcpio">https://wiki.archlinux.org/title/Mkinitcpio</a>

I guess that the program used as init on PC1 and PC2 differs. Please compare

  ls -l /proc/1/

(as root user) between PC1 and PC2. If the program indicated by /proc/1/exe differs,
try specifying that program using TOMOYO_trigger= kernel command line parammeter; like
TOMOYO_trigger=/usr/lib/systemd/systemd if /proc/1/exe indicates /usr/lib/systemd/systemd .

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">(I'm noticing the "Unknown kernel command line parameters ..." line so whether
or not that might affect tomoyo i'm not sure, but it's definetly to be checked
out what's going on there none the less)
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
That is expected behavior and is irrelevant to this problem.

  <a class="moz-txt-link-freetext" href="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=86d1919a4fb0d9c115dd1d3b969f5d1650e45408">https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=86d1919a4fb0d9c115dd1d3b969f5d1650e45408</a>
  <a class="moz-txt-link-freetext" href="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=8bc2b3dca7292347d8e715fb723c587134abe013">https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=8bc2b3dca7292347d8e715fb723c587134abe013</a>

Regards.

</pre>
    </blockquote>
  </body>
</html>

--------------01c239HZaVugwao3435Y7Y9q--


--===============4284322623983431335==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdG9tb3lvLXVz
ZXJzLWVuIG1haWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMub3Nkbi5tZQpodHRwczov
L2xpc3RzLm9zZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNlcnMtZW4K

--===============4284322623983431335==--

