Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id 62419551D7A
	for <lists+tomoyo-users-en@lfdr.de>; Mon, 20 Jun 2022 16:10:44 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id 0BB8E144D4D;
	Mon, 20 Jun 2022 23:10:43 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id D111F144D49
 for <tomoyo-users-en@lists.osdn.me>; Mon, 20 Jun 2022 23:10:40 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=7.0 tests=HTML_MESSAGE
 autolearn=disabled version=3.4.2
Received: from asav22.altibox.net (asav22.altibox.net [109.247.116.9])
 by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Mon, 20 Jun 2022 23:10:40 +0900 (JST)
Message-ID: <a11089f3-3635-4a4b-c868-f1cd72311e0e@sklbb.no>
Date: Mon, 20 Jun 2022 16:10:36 +0200
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
 a=wfqiA1-CCZMaQNAUuCsA:9 a=QEXdDO2ut3YA:10 a=P2S9cCQEy2rxP1tXzbQA:9
 a=g4rHk6Nksv4pi6aM:21 a=_W_S_7VecoQA:10 a=G2t4ndmmEyBurCmzyHIc:22
 a=gR_RJRYUad_6_ruzA8cR:22
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
Subject: [tomoyo-users-en 742] Re: Can't get Tomoyo to load policies on one
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
Content-Type: multipart/mixed; boundary="===============3804108497802370048=="
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

This is a multi-part message in MIME format.
--===============3804108497802370048==
Content-Type: multipart/alternative;
 boundary="------------QaXa9WEa60MAzHjkgsKWLuxD"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------QaXa9WEa60MAzHjkgsKWLuxD
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

I noticed i forgot to respond to the following.

On 14.06.2022 01:06, Tetsuo Handa wrote:
> On 2022/06/14 5:20, Andre T wrote:
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

The `ls -l /proc/1/` did return the same results on both PCs. And apart from dates and times, a `diff` done of both PCs output from `ls -l /proc/1/` showed exactly identical listing.

The /init 's /are the same on both PC1 and PC2. As are them both 
utilizing identical bootloader (Grub 2, from "core/grub" arch package ) 
and both also utilizing mkinitcpio for handling of kernel/modules 
updating/initfs rebuilding.


--------------QaXa9WEa60MAzHjkgsKWLuxD
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>I noticed i forgot to respond to the following.<br>
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
          <pre class="moz-quote-pre" wrap="">appears in the dmesg output when you reboot PC2.
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
</pre>
    </blockquote>
    <pre class="moz-quote-pre" wrap="">
The `ls -l /proc/1/` did return the same results on both PCs. And apart from dates and times, a `diff` done of both PCs output from `ls -l /proc/1/` showed exactly identical listing.</pre>
    <p>The <i>init 's </i>are the same on both PC1 and PC2. As are
      them both utilizing identical bootloader (Grub 2, from "core/grub"
      arch package ) and both also utilizing mkinitcpio for handling of
      kernel/modules updating/initfs rebuilding.<br>
    </p>
    <br>
  </body>
</html>

--------------QaXa9WEa60MAzHjkgsKWLuxD--


--===============3804108497802370048==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdG9tb3lvLXVz
ZXJzLWVuIG1haWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMub3Nkbi5tZQpodHRwczov
L2xpc3RzLm9zZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNlcnMtZW4K

--===============3804108497802370048==--

