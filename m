Return-Path: <tomoyo-users-en-bounces@lists.osdn.me>
X-Original-To: lists+tomoyo-users-en@lfdr.de
Delivered-To: lists+tomoyo-users-en@lfdr.de
Received: from lists.osdn.me (lists.osdn.me [44.238.218.2])
	by mail.lfdr.de (Postfix) with ESMTP id 2333491BD89
	for <lists+tomoyo-users-en@lfdr.de>; Fri, 28 Jun 2024 13:36:33 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.osdn.me (Postfix) with ESMTP id 76CB2144E71;
	Fri, 28 Jun 2024 20:36:31 +0900 (JST)
X-Original-To: tomoyo-users-en@lists.osdn.me
Delivered-To: lists-post+tomoyo-users-en@lists.osdn.me
Received: from lists.osdn.me (localhost [127.0.0.1])
 by lists.osdn.me (Postfix) with ESMTP id A6331144FC8
 for <tomoyo-users-en@lists.osdn.me>; Fri,  3 Mar 2023 06:36:40 +0900 (JST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sf-lists
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=7.0 tests=T_DKIM_INVALID
 autolearn=disabled version=3.4.2
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2061.outbound.protection.outlook.com [40.107.22.61])
 by lists.osdn.me (Postfix) with ESMTP
 for <tomoyo-users-en@lists.osdn.me>; Fri,  3 Mar 2023 06:36:40 +0900 (JST)
Received: from PAXPR04MB8110.eurprd04.prod.outlook.com (2603:10a6:102:1bd::5)
 by AM9PR04MB8571.eurprd04.prod.outlook.com (2603:10a6:20b:436::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.18; Thu, 2 Mar
 2023 20:03:15 +0000
Received: from AS8PR04MB8658.eurprd04.prod.outlook.com (2603:10a6:20b:429::22)
 by PAXPR04MB8110.eurprd04.prod.outlook.com (2603:10a6:102:1bd::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.18; Thu, 2 Mar
 2023 16:52:26 +0000
Received: from AM7PR04MB6854.eurprd04.prod.outlook.com (2603:10a6:20b:10c::9)
 by AS8PR04MB8658.eurprd04.prod.outlook.com (2603:10a6:20b:429::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.17; Thu, 2 Mar
 2023 16:11:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=itVqvppol8lAOGEdrU/1z7xN6/MNAuVe+W5xBHjpVd+/tvRpfBwavCELJcpL6B9A4bHfNKbjJ7UCuOCqDCQjHS7dfFlS/+2FHSxC4ZgauobjdW9apebf6Gu35k48TSQI/IxzNnpV7NoYMNfpxvq8dExjb+MXILCtily4Qv7EdnVgUxDfQbJtfOtYQYn1JpJwQ3QZ/TaaQopK/n/2lLsUv2sWUHJAi+hqm58XWJHyN8tbtZ1F1PHboiXxSqtKtGSFw0/vikRK1jDqH7lk+yGY8uCfRb/OzUFVttRVLwAoCQXhq+95z8NFDwrox0HkL356q/HkLFNRdnDeEufWGDoNpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lFzIBlZLUZ5RrNDbshBJ4ucVJcp8yHqRQhM6RJA42b4=;
 b=ZlyhKKW+8LFFprnyXCAQnfqmFop1NJPdzZ5Qx7m/KHT+9u4mmsjj0oMcQS0/3/6dfdBDxDsgqJLIzrm893MBaqi5OdAtiB/yfT5XYFXVmlw2KdWybEEJHelXS9HeS311AGexV06oA/HhyOM9xlcwMCM3hKAxJ9VWBQT+29zYLCcbGCMmrGqpNRQMjQtHWF62LLSl8w5zFO0RNWRKvOeKhRs9i5ecPBwviD5CjczYnfOu+GYx16/cMKPPEEb/qiOk6PG4Znkj/DZlHmNTyGdvQTwFLevEm1WPL2/tzkd8/TzFBBC356VRJfG41qnAxdT7q2AH8qH/qpa5hXmeKz6/pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lFzIBlZLUZ5RrNDbshBJ4ucVJcp8yHqRQhM6RJA42b4=;
 b=V/NsCOaAlBHzyA/N71TFcYFB//UXxmLGzq1J+twWw69WT0uzAUTzwpoCFQ6q//CfE/NHKfk1bWgZdmUcjAyFUP1zh88d5xDiuR6nrmCGn0WzHieQ3zWgM1/M8PI+D/+Ic+sz0XXfdfjqxUuUImSr8iBsRKIkkV35o48e8Hb5jGjFa/hw3W6gL186uiHKI5b3fig+cX6UIEo9oLN7pG1mUpq8jVcEzX+AIAFrhHwqPLY9egJbgwfQg1DxA6izbzrkDXVxVRBhMCPjlPCO6+Dfe8C8CjoYmc993Oe/yChakCjtK2QPfvBs1VitPWn5MO2N0nwD2F0MsrG78AgILkJFFg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=suse.com;
Received: from VI1PR04MB6797.eurprd04.prod.outlook.com (2603:10a6:803:13e::13)
 by AM7PR04MB6854.eurprd04.prod.outlook.com (2603:10a6:20b:10c::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.18; Thu, 2 Mar
 2023 14:52:30 +0000
Received: from VI1PR04MB6797.eurprd04.prod.outlook.com
 ([fe80::e6db:281a:b03d:39ca]) by VI1PR04MB6797.eurprd04.prod.outlook.com
 ([fe80::e6db:281a:b03d:39ca%4]) with mapi id 15.20.6156.019; Thu, 2 Mar 2023
 14:52:30 +0000
Message-ID: <8d111f23-37a0-6f7c-453a-386e8a4ec11e@suse.com>
Date: Thu, 2 Mar 2023 15:50:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Cyril Hrubis <chrubis@suse.cz>
References: <20230302093406.29799-1-andrea.cervesato@suse.com>
 <ZACzPkhrRxsDL3Am@yuki>
 <b641cc8e-2950-fb6d-9c26-28f1e1b0fc1d@I-love.SAKURA.ne.jp>
From: Andrea Cervesato <andrea.cervesato@suse.com>
In-Reply-To: <b641cc8e-2950-fb6d-9c26-28f1e1b0fc1d@I-love.SAKURA.ne.jp>
X-ClientProxiedBy: FR0P281CA0138.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::7) To VI1PR04MB6797.eurprd04.prod.outlook.com
 (2603:10a6:803:13e::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR04MB6797:EE_|AM7PR04MB6854:EE_|AS8PR04MB8658:EE_|PAXPR04MB8110:EE_|AM9PR04MB8571:EE_
X-MS-Office365-Filtering-Correlation-Id: 5407aff9-d28b-47a7-4d4e-08db1b2dbf8a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YYfAjAhbPGp5VZD9E9MVS/S1ebQBzfc+M+6JWLhEnwVf4obzYP/kml5aY0wj5ue+Nxa7aIbF6HgOFjuU+rnaxWNVWxacVN74vT5wOdiBlzrXhaVfsoN2fyhQjSIvcMBPOqr3qpwMKrlKXH9315Wjo+Ceuq2TE116qjHd2eKCqYYkyN4l/dPRrY7lsttz4C/OXW0lIz6i20ObZdxVeSKiTMvFAYnuzDeSCH+ha9b6KF0inLKG3cIwtWTS4Wezsv2G3pFjiXd4nKno6scVqxpsS+TjN/DtZ4CJBDLcGy+B4XbNmIl6xF9GREuood5hDx6bSE5CrOYMg7AsaGXeCeP29cgNH71UaMhP2b4A3u37uOjI5jw6tpsoOXaJaJjEKJD3h9/nHEmlSaXMS3yrtjDTI5wF50VEAxHXRtU5zPDyo4K463279pA0PfZSHcCeGDLqBz+oEE5rDcnxAbA61cZcjgHrRnMHKuOHcE0pL1MxPjAXKgJNVnd3Zq1a0Bhx4ETruvRvm3eqcNS5nF46JQwtGij3nz7UvrE0ymm2NgXLKAnaRozpkmNdNbUpRwxGPuvuvnrMndrITH+HqN+uxzvzKzAuM5B/FNMSAzV5QnxfxT3cF/RTL6fnbLjPJR0RpMBQBoXpD1pdg4XOgpUq1DiMq77oVaIB1NEhowFok2r5F2rHvEqtcOVZ8YMH4hg1pSU+gDHrc4h/A4onLjP+jWmrZ0fnz/4JHodzp9HhZArkyZU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB6797.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(39850400004)(346002)(376002)(366004)(396003)(451199018)(36756003)(6666004)(53546011)(6506007)(6486002)(966005)(26005)(6512007)(2616005)(186003)(110136005)(316002)(4326008)(41300700001)(44832011)(2906002)(66476007)(8676002)(66556008)(8936002)(478600001)(5660300002)(38100700002)(86362001)(31696002)(66946007)(83380400001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mi9tUVJHTmRnRTM3M1dTbWtmaVBIVlVKSHNxd2NBYS9Mam9oZFlhQklwTzZQ?=
 =?utf-8?B?RnZMVWZkbVpvdy9EODlaMktQb1ZKSFFFOWxNSTNzQ2VkOGlZbmMyaEZ6MlVK?=
 =?utf-8?B?amVaRHVIMU1YN0JRbTljSzlmTVhzdnRZK0NhRjJzcGUxYjRPR2U4Umh5dVlM?=
 =?utf-8?B?QzZqaU0wOGRiNzlVRTMrek1aYkpUY2JXZG9lQWt4VEg4a3dYRk9VcFZicTRt?=
 =?utf-8?B?ejZUbC9rL3d4UkRoOUdOZnY5c1poVGkzRWpIQkxsOUFCL0ZpOWZtWFhwUTdn?=
 =?utf-8?B?REZieVJzZnJQSi81YzFMT0QzVnlHUVh2NHB1Y1Jhd1NtSHVxTnYzbjM1NVl1?=
 =?utf-8?B?L2prd3lNVnduM2J2WmFjUW41TmFhY2JXQ2lzSURqaCtsanVpY0R3TnVnOGJj?=
 =?utf-8?B?MUxUMHpNbXB0aGhvbUF2UFZvb0tBNjVSQVBXRGpIZHRwK3I4Qzh0Uks0Tkll?=
 =?utf-8?B?M2Nrc1F6YTBXUzlta2J1NTRjUUVybERoZTAxdFJFdmJ1bkt5N3p0S2hJcWJO?=
 =?utf-8?B?ZDZXT2JnZjhGSUw0S3h2MThSTUZpQ2R3UEhLZFlQQTA2blNuKzNnY09QRkFH?=
 =?utf-8?B?c0JvemxqSHVnQTlvTW0zWnBReklsQVhjWEZiSlhwNnRhV3JieCtwUENNQzBE?=
 =?utf-8?B?dUJpbU1SS1dFYnlFQ1hDejY0U0lucXNWcEExYy9CMEc3SklzZkVMamp2ZTVI?=
 =?utf-8?B?MjRaZStRWmRMR3RHMS9RWFFtck5xMEtnbDFSZWVEelhla1Rsd2VzT1IwTy9S?=
 =?utf-8?B?cjdTYzVnWjIvdVlSZ3NqalJHYmhkd3Vuc2N5SVRRTUlRRWxiY2dvN21pZ1M2?=
 =?utf-8?B?OGMrNWhqRC96ZUtPR2srQW5nL0hYZUI1SjM3c1I4WEZKa2QrTTZvZmk3OWRu?=
 =?utf-8?B?amJpeXhvMGhmdGVHVy9KeXBEWjN6dFRpMy90U29YdDJJVEVWTi8yMkpQRndo?=
 =?utf-8?B?alM1b1dzVDFraWk5UzBCSjA5V2hBb1M3WTZuaTNQdmV4Q01vWEY4eE9IVXQ5?=
 =?utf-8?B?Q0VnQjBNVW8rUmNWUTNPZENuTjd5b3dBSlZOK2hVcXh6VHNsQVBlYUVZbXRk?=
 =?utf-8?B?QURGU0kwRzJlc2hqSGI2eW8yaG1xS2J6TVEvSzZOSUdwU3oxQmsyOTE5TFor?=
 =?utf-8?B?UjdzVE1IWmtDVGE3YkVEbGFhV1o3YWdVVVJoTTV2amxlSk5WNXUycDFVeTBD?=
 =?utf-8?B?VFhQUXRKYTlKdG9Qbm9zZnNNbElBWW1ZNXVCSEQ0ZEVxNGxVOE5rb0QzbTZL?=
 =?utf-8?B?L0RqYzZGcnhORzFMbjZFUjk5OGNqQkNVbCs0UThwc3VWNCs0SE84RzYxdmw3?=
 =?utf-8?B?UVQ4VDB4c1Fyb3R2c1R0R0p0NGxsMENrL2ZHOGNEckhKQzRaWGNqeUZLbndp?=
 =?utf-8?B?VTFVbk9DUUhaem84d1hPaUxCUkM0NnExMURybGpnZTVMdW5sVndxNExYS0dn?=
 =?utf-8?B?Zkw3NWZwY2FrSS9nNDBpVGIvbnBhdG5IdmNWVkVzdGVtUisySDlZNkNDRTdy?=
 =?utf-8?B?cFN5YU5jWTFXU3lLR2NEbE9OZlI2cUhzWUxHa3hlem9XeEd6RTF3S0dUZGVq?=
 =?utf-8?B?aVB6SEdaSG5WQWJlRnJZbmVNYkY5M25yelZ5ajNONjQ4MXU4SE45dVhENlov?=
 =?utf-8?B?UXJYRHhvWnZRbDJpWjgwa3NGYzFQK0UrNVpXWWdEVnNQTlpQQ3p4QjkyNlBz?=
 =?utf-8?B?T3pNYXk5VUQxZCtPNEhta2YxUTNuYlRuQ0JOaTRPSmVLNlhQZE85SnQyOTF3?=
 =?utf-8?B?MllyanJwYjFoY2thSzRTbHVDazJpc1NoZ3Uwa3hWNWRQblBwM2pua0ZJdU9X?=
 =?utf-8?B?OHlpWWVZajRNK2FMS09KQXk1d251bTdob1VmMGJ0c1JaYllFUUd5OFNpVmtv?=
 =?utf-8?B?RmNZa3VPeXhHL2RrYzROSHZDSkgwZ1RNWXBBMUpxQTB1czZhQUxNOE1DazhP?=
 =?utf-8?B?RS9aeDNvMDhPRnNrQnd6RnhxaHpRQkZSR1hLMUEzVHR1c2FyRUFqT3FrWWZu?=
 =?utf-8?B?Z2NMNWVCSVk5dnlhSjBSdVRpdHhCMW5ibG5NNnN5bVAvOTlqbzhHOFVmZllO?=
 =?utf-8?B?R0ZGaDhIOGorZ2ZOWGIyemt1UjZsL2tMRjg0ckdYZU45RkpodE5EWnZrMmI2?=
 =?utf-8?B?ZnRxQi9tVGhRdHFLTVFJV1JSOGIrT1lOMVVCUXhqMVk5MU92eXVmT0wwSnIz?=
 =?utf-8?B?OHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5407aff9-d28b-47a7-4d4e-08db1b2dbf8a
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB6797.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2023 14:52:30.5453 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bv6Z3k+8z67OoqS5v/VQuEggdzNdd8JzPxrur5GIQadWUIqRE6jebZrZFuckXTeI5tXZdfiYGB3xFI8cuPVFP7cqtzEPcSDyGQbMWBkk9wQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6854
X-OriginatorOrg: suse.com
X-Virus-Status: No
X-Virus-Checker-Version: clamassassin 1.2.4 with clamdscan / ClamAV
 0.102.4/26439/Mon Jan 31 18:24:40 2022
X-Mailman-Approved-At: Fri, 28 Jun 2024 20:36:29 +0900
Subject: [tomoyo-users-en 747] Re: [LTP] [PATCH v1] [RFC] Remove tomoyo
 testing suite
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
Cc: tomoyo-users-en@lists.osdn.me, ltp@lists.linux.it,
 tomoyo-contact@I-love.SAKURA.ne.jp
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tomoyo-users-en-bounces@lists.osdn.me
Sender: "tomoyo-users-en" <tomoyo-users-en-bounces@lists.osdn.me>

SGVsbG8gVG9tb3lvIGRldnMsCgp0aGFuayB5b3UgZm9yIHlvdXIgZmVlZGJhY2ssIHdlIHdpbGwg
Y29udGludWUgb24gb3VyIHNpZGUgdGhlbi4KClJlZ2FyZHMsCkFuZHJlYQoKT24gMy8yLzIzIDE1
OjQ3LCBUZXRzdW8gSGFuZGEgd3JvdGU6Cj4gSGVsbG8uCj4KPiBUaGFuayB5b3UgZm9yIGhlYWRz
LXVwLgo+Cj4gUmVtb3ZpbmcgdGVzdGluZyBzdWl0ZSBmb3IgdG9tb3lvIGZyb20gdGhlIExUUCB0
ZXN0Y2FzZXMgZm9sZGVyIGlzIGZpbmUsIGZvcgo+IHRoZSBsYXRlc3QgdGVzdGluZyBzdWl0ZSBm
b3IgdG9tb3lvIGlzIG1haW50YWluZWQgYXQKPiBodHRwczovL29zZG4ubmV0L3Byb2plY3RzL3Rv
bW95by9zY20vc3ZuL3RyZWUvaGVhZC90cnVuay8yLjYueC90b21veW8tdG9vbHMva2VybmVsX3Rl
c3QvCj4gYW5kIHRvbW95byBpcyB0ZXN0ZWQgYnkgc3l6Ym90Lgo+Cj4gQnV0IHRoZSByZWFzb25p
bmcgInRoZSB3aG9sZSBUb21veW8gbGludXggZnVuY3Rpb25hbGl0eSBzZWVtcyByZXBsYWNlZCBi
eQo+IFNFTGludXggb3IgQXBwQXJtb3IiIGlzIHdyb25nOyB0aGUgZnVuY3Rpb25hbGl0eSBjYW5u
b3QgYmUgcmVwbGFjZWQgYnkKPiBvdGhlciBMU00gbW9kdWxlcy4gOy0pCj4KPiBPbiAyMDIzLzAz
LzAyIDIzOjMxLCBDeXJpbCBIcnViaXMgd3JvdGU6Cj4+IEhpIQo+PiBDQ2luZyB0aGUgY29udGFj
dCBvbiBodHRwczovL3RvbW95by5vc2RuLmpwL3N1cHBvcnQuaHRtbC5lbgo+Pgo+PiBJZiBhbnlv
bmUgd2FudHMgdG8gcGljayB1cCB0aGUgdGVzdHN1aXRlIGFuZCBtYWludGFpbiBpdCBwbGVhc2Ug
c3BlYWsKPj4gdXAuCj4+Cj4+PiBUaGUgdG9tb3lvIHRlc3Rpbmcgc3VpdGUgaXMgYnVpbHQgYW5k
IGluc3RhbGxlZCBpbnNpZGUgdGhlIExUUCB0ZXN0Y2FzZXMKPj4+IGZvbGRlciwgYnV0IGl0J3Mg
bm90IHVzZWQgYnkgYW55IHJ1bnRlc3QgZmlsZS4gSXQgc2VlbXMgYW4gb2xkIGFuZAo+Pj4gdW5t
YWludGFpbmVkIHRlc3Rpbmcgc3VpdGUgdGhhdCB1c2VzIG9sZCBMVFAgQVBJIGFuZCBsdHBfY2xv
bmVfcXVpY2sKPj4+IHRoYXQgaXMgZ29pbmcgdG8gYmUgZGVwcmVjYXRlZC4KPj4+Cj4+PiBXZSBz
dXBwb3NlIHRvIHVwZGF0ZSBpdCB1c2luZyBuZXcgTFRQIEFQSSwgY2xlYW5pbmcgdXAgdGhlIGNv
ZGUgYW5kCj4+PiByZW1vdmluZyBkZXByZWNhdGVkIGZ1bmN0aW9ucywgYnV0IG5vd2FkYXlzIHRo
ZSB3aG9sZSBUb21veW8gbGludXgKPj4+IGZ1bmN0aW9uYWxpdHkgc2VlbXMgcmVwbGFjZWQgYnkg
U0VMaW51eCBvciBBcHBBcm1vciBhbmQgbm90IG1haW50YWluZWQKPj4+IGFueW1vcmUgaW4geWVh
cnMgb2YgZGV2ZWxvcG1lbnQuCj4+Pgo+Pj4gRm9yIHRoaXMgcmVhc29uLCB0aGlzIHBhdGNoIGlz
IGdvaW5nIHRvIHJlbW92ZSBpdCBmcm9tIExUUCBpbnN0YWxsYXRpb24uCj4+Pgo+Pj4gU2lnbmVk
LW9mZi1ieTogQW5kcmVhIENlcnZlc2F0byA8YW5kcmVhLmNlcnZlc2F0b0BzdXNlLmNvbT4KPgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdG9tb3lvLXVz
ZXJzLWVuIG1haWxpbmcgbGlzdAp0b21veW8tdXNlcnMtZW5AbGlzdHMub3Nkbi5tZQpodHRwczov
L2xpc3RzLm9zZG4ubWUvbWFpbG1hbi9saXN0aW5mby90b21veW8tdXNlcnMtZW4K
