.class public Landroid/text/format/DateFormat;
.super Ljava/lang/Object;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/DateFormat$Injector;
    }
.end annotation


# static fields
.field public static final AM_PM:C = 'a'

.field public static final CAPITAL_AM_PM:C = 'A'

.field public static final DATE:C = 'd'

.field public static final DAY:C = 'E'

.field public static final HOUR:C = 'h'

.field public static final HOUR_OF_DAY:C = 'k'

.field public static final MINUTE:C = 'm'

.field public static final MONTH:C = 'M'

.field public static final QUOTE:C = '\''

.field public static final SECONDS:C = 's'

.field public static final TIME_ZONE:C = 'z'

.field public static final YEAR:C = 'y'

.field private static sIs24Hour:Z

.field private static sIs24HourLocale:Ljava/util/Locale;

.field private static final sLocaleLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 208
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method private static final appendQuotedText(Landroid/text/SpannableStringBuilder;II)I
    .registers 7
    .parameter "s"
    .parameter "i"
    .parameter "len"

    .prologue
    const/16 v3, 0x27

    .line 598
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_15

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_15

    .line 599
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 600
    const/4 v1, 0x1

    .line 631
    :cond_14
    :goto_14
    return v1

    .line 603
    :cond_15
    const/4 v1, 0x0

    .line 606
    .local v1, count:I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 607
    add-int/lit8 p2, p2, -0x1

    .line 609
    :goto_1d
    if-ge p1, p2, :cond_14

    .line 610
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 612
    .local v0, c:C
    if-ne v0, v3, :cond_43

    .line 614
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_3d

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_3d

    .line 616
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 617
    add-int/lit8 p2, p2, -0x1

    .line 618
    add-int/lit8 v1, v1, 0x1

    .line 619
    add-int/lit8 p1, p1, 0x1

    goto :goto_1d

    .line 622
    :cond_3d
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_14

    .line 626
    :cond_43
    add-int/lit8 p1, p1, 0x1

    .line 627
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d
.end method

.method public static final format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    .registers 4
    .parameter "inFormat"
    .parameter "inTimeInMillis"

    .prologue
    .line 424
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .registers 12
    .parameter "inFormat"
    .parameter "inDate"

    .prologue
    const/16 v8, 0xa

    const/16 v9, 0x9

    .line 450
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 454
    .local v5, s:Landroid/text/SpannableStringBuilder;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 456
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-ge v2, v3, :cond_b0

    .line 459
    const/4 v1, 0x1

    .line 460
    .local v1, count:I
    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 462
    .local v0, c:I
    const/16 v7, 0x27

    if-ne v0, v7, :cond_23

    .line 463
    invoke-static {v5, v2, v3}, Landroid/text/format/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;II)I

    move-result v1

    .line 464
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 456
    :cond_21
    :goto_21
    add-int/2addr v2, v1

    goto :goto_e

    .line 468
    :cond_23
    :goto_23
    add-int v7, v2, v1

    if-ge v7, v3, :cond_32

    add-int v7, v2, v1

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v0, :cond_32

    .line 469
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 474
    :cond_32
    sparse-switch v0, :sswitch_data_c0

    .line 530
    const/4 v4, 0x0

    .line 534
    .local v4, replacement:Ljava/lang/String;
    :goto_36
    if-eqz v4, :cond_21

    .line 535
    add-int v7, v2, v1

    invoke-virtual {v5, v2, v7, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 536
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 537
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    goto :goto_21

    .line 476
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_46
    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    .line 477
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 481
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_4f
    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    .line 482
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 485
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_58
    const/4 v7, 0x5

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 486
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 489
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_62
    const/4 v7, 0x7

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 490
    .local v6, temp:I
    const/4 v7, 0x4

    if-ge v1, v7, :cond_71

    const/16 v7, 0x14

    :goto_6c
    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v4

    .line 494
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .end local v4           #replacement:Ljava/lang/String;
    :cond_71
    move v7, v8

    .line 490
    goto :goto_6c

    .line 497
    .end local v6           #temp:I
    :sswitch_73
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 499
    .restart local v6       #temp:I
    if-nez v6, :cond_7b

    .line 500
    const/16 v6, 0xc

    .line 502
    :cond_7b
    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 503
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 506
    .end local v4           #replacement:Ljava/lang/String;
    .end local v6           #temp:I
    :sswitch_80
    const/16 v7, 0xb

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 507
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 510
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_8b
    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 511
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 514
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_96
    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getMonthString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    .line 515
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 518
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_9b
    const/16 v7, 0xd

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 519
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 522
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_a6
    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    .line 523
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 526
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_ab
    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getYearString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    .line 527
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 541
    .end local v0           #c:I
    .end local v1           #count:I
    .end local v4           #replacement:Ljava/lang/String;
    :cond_b0
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_ba

    .line 542
    new-instance v7, Landroid/text/SpannedString;

    invoke-direct {v7, v5}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 544
    :goto_b9
    return-object v7

    :cond_ba
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_b9

    .line 474
    nop

    :sswitch_data_c0
    .sparse-switch
        0x41 -> :sswitch_4f
        0x45 -> :sswitch_62
        0x4d -> :sswitch_96
        0x61 -> :sswitch_46
        0x64 -> :sswitch_58
        0x68 -> :sswitch_73
        0x6b -> :sswitch_80
        0x6d -> :sswitch_8b
        0x73 -> :sswitch_9b
        0x79 -> :sswitch_ab
        0x7a -> :sswitch_a6
    .end sparse-switch
.end method

.method public static final format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "inFormat"
    .parameter "inDate"

    .prologue
    .line 435
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 437
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 439
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static final formatZoneOffset(II)Ljava/lang/String;
    .registers 8
    .parameter "offset"
    .parameter "count"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 574
    div-int/lit16 p0, p0, 0x3e8

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 577
    .local v2, tb:Ljava/lang/StringBuilder;
    if-gez p0, :cond_2a

    .line 578
    const-string v3, "-"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    neg-int p0, p0

    .line 584
    :goto_11
    div-int/lit16 v0, p0, 0xe10

    .line 585
    .local v0, hours:I
    rem-int/lit16 v3, p0, 0xe10

    div-int/lit8 v1, v3, 0x3c

    .line 587
    .local v1, minutes:I
    invoke-static {v0, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 581
    .end local v0           #hours:I
    .end local v1           #minutes:I
    :cond_2a
    const-string v3, "+"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11
.end method

.method public static final getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 4
    .parameter "context"

    .prologue
    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, value:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method public static getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;
    .registers 4
    .parameter "context"
    .parameter "value"

    .prologue
    .line 304
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, format:Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static final getDateFormatOrder(Landroid/content/Context;)[C
    .registers 15
    .parameter "context"

    .prologue
    const/16 v13, 0x79

    const/16 v12, 0x64

    const/16 v11, 0x4d

    .line 380
    const/4 v10, 0x3

    new-array v8, v10, [C

    fill-array-data v8, :array_3e

    .line 381
    .local v8, order:[C
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 382
    .local v9, value:Ljava/lang/String;
    const/4 v6, 0x0

    .line 383
    .local v6, index:I
    const/4 v2, 0x0

    .line 384
    .local v2, foundDate:Z
    const/4 v3, 0x0

    .line 385
    .local v3, foundMonth:Z
    const/4 v4, 0x0

    .line 387
    .local v4, foundYear:Z
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1a
    if-ge v5, v7, :cond_3c

    aget-char v1, v0, v5

    .line 388
    .local v1, c:C
    if-nez v2, :cond_27

    if-ne v1, v12, :cond_27

    .line 389
    const/4 v2, 0x1

    .line 390
    aput-char v12, v8, v6

    .line 391
    add-int/lit8 v6, v6, 0x1

    .line 394
    :cond_27
    if-nez v3, :cond_30

    if-ne v1, v11, :cond_30

    .line 395
    const/4 v3, 0x1

    .line 396
    aput-char v11, v8, v6

    .line 397
    add-int/lit8 v6, v6, 0x1

    .line 400
    :cond_30
    if-nez v4, :cond_39

    if-ne v1, v13, :cond_39

    .line 401
    const/4 v4, 0x1

    .line 402
    aput-char v13, v8, v6

    .line 403
    add-int/lit8 v6, v6, 0x1

    .line 387
    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 406
    .end local v1           #c:C
    :cond_3c
    return-object v8

    .line 380
    nop

    :array_3e
    .array-data 0x2
        0x64t 0x0t
        0x4dt 0x0t
        0x79t 0x0t
    .end array-data
.end method

.method private static getDateFormatString(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 410
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, value:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "context"
    .parameter "value"

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 310
    if-eqz p1, :cond_aa

    .line 311
    const/16 v5, 0x4d

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 312
    .local v1, month:I
    const/16 v5, 0x64

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 313
    .local v0, day:I
    const/16 v5, 0x79

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 315
    .local v4, year:I
    if-ltz v1, :cond_aa

    if-ltz v0, :cond_aa

    if-ltz v4, :cond_aa

    .line 316
    const v5, 0x1040085

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, template:Ljava/lang/String;
    if-ge v4, v1, :cond_54

    if-ge v4, v0, :cond_54

    .line 318
    if-ge v1, v0, :cond_40

    .line 319
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v7

    const-string v6, "MM"

    aput-object v6, v5, v8

    const-string v6, "dd"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_3e
    move-object v3, p1

    .line 347
    .end local v0           #day:I
    .end local v1           #month:I
    .end local v2           #template:Ljava/lang/String;
    .end local v4           #year:I
    .end local p1
    .local v3, value:Ljava/lang/String;
    :goto_3f
    return-object v3

    .line 321
    .end local v3           #value:Ljava/lang/String;
    .restart local v0       #day:I
    .restart local v1       #month:I
    .restart local v2       #template:Ljava/lang/String;
    .restart local v4       #year:I
    .restart local p1
    :cond_40
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v7

    const-string v6, "dd"

    aput-object v6, v5, v8

    const-string v6, "MM"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3e

    .line 323
    :cond_54
    if-ge v1, v0, :cond_80

    .line 324
    if-ge v0, v4, :cond_6c

    .line 325
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "MM"

    aput-object v6, v5, v7

    const-string v6, "dd"

    aput-object v6, v5, v8

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3e

    .line 327
    :cond_6c
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "MM"

    aput-object v6, v5, v7

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v8

    const-string v6, "dd"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3e

    .line 330
    :cond_80
    if-ge v1, v4, :cond_96

    .line 331
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "dd"

    aput-object v6, v5, v7

    const-string v6, "MM"

    aput-object v6, v5, v8

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3e

    .line 333
    :cond_96
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "dd"

    aput-object v6, v5, v7

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v8

    const-string v6, "MM"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3e

    .line 346
    .end local v0           #day:I
    .end local v1           #month:I
    .end local v2           #template:Ljava/lang/String;
    .end local v4           #year:I
    :cond_aa
    const v5, 0x1040084

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    .line 347
    .end local p1
    .restart local v3       #value:Ljava/lang/String;
    goto :goto_3f
.end method

.method public static final getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 2
    .parameter "context"

    .prologue
    .line 357
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 2
    .parameter "context"

    .prologue
    .line 367
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static final getMonthString(Ljava/util/Calendar;I)Ljava/lang/String;
    .registers 4
    .parameter "inDate"
    .parameter "count"

    .prologue
    .line 548
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 550
    .local v0, month:I
    const/4 v1, 0x4

    if-lt p1, v1, :cond_f

    .line 551
    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v1

    .line 556
    :goto_e
    return-object v1

    .line 552
    :cond_f
    const/4 v1, 0x3

    if-ne p1, v1, :cond_19

    .line 553
    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 556
    :cond_19
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method

.method public static final getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 5
    .parameter "context"

    .prologue
    .line 267
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 270
    .local v0, b24:Z
    if-eqz v0, :cond_13

    .line 271
    const v1, 0x1040082

    .line 276
    .local v1, res:I
    :goto_9
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 273
    .end local v1           #res:I
    :cond_13
    const v1, 0x1040081

    .restart local v1       #res:I
    goto :goto_9
.end method

.method private static final getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;
    .registers 7
    .parameter "inDate"
    .parameter "count"

    .prologue
    const/16 v4, 0x10

    const/4 v2, 0x0

    .line 561
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 563
    .local v1, tz:Ljava/util/TimeZone;
    const/4 v3, 0x2

    if-ge p1, v3, :cond_1a

    .line 564
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, p1}, Landroid/text/format/DateFormat;->formatZoneOffset(II)Ljava/lang/String;

    move-result-object v2

    .line 569
    :goto_19
    return-object v2

    .line 568
    :cond_1a
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eqz v3, :cond_26

    const/4 v0, 0x1

    .line 569
    .local v0, dst:Z
    :goto_21
    invoke-virtual {v1, v0, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    .end local v0           #dst:Z
    :cond_26
    move v0, v2

    .line 568
    goto :goto_21
.end method

.method private static final getYearString(Ljava/util/Calendar;I)Ljava/lang/String;
    .registers 5
    .parameter "inDate"
    .parameter "count"

    .prologue
    const/4 v2, 0x2

    .line 593
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 594
    .local v0, year:I
    if-gt p1, v2, :cond_f

    rem-int/lit8 v1, v0, 0x64

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    :goto_e
    return-object v1

    :cond_f
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method

.method public static is24HourFormat(Landroid/content/Context;)Z
    .registers 10
    .parameter "context"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "time_12_24"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, value:Ljava/lang/String;
    invoke-static {p0, v5}, Landroid/text/format/DateFormat$Injector;->check24HourFormatForChina(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 224
    if-nez v5, :cond_5b

    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v1, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 227
    .local v1, locale:Ljava/util/Locale;
    sget-object v7, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v7

    .line 228
    :try_start_20
    sget-object v8, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    if-eqz v8, :cond_30

    sget-object v8, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    invoke-virtual {v8, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 229
    sget-boolean v0, Landroid/text/format/DateFormat;->sIs24Hour:Z

    monitor-exit v7

    .line 257
    .end local v1           #locale:Ljava/util/Locale;
    :goto_2f
    return v0

    .line 231
    .restart local v1       #locale:Ljava/util/Locale;
    :cond_30
    monitor-exit v7
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_66

    .line 233
    invoke-static {v0, v1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    .line 237
    .local v2, natural:Ljava/text/DateFormat;
    instance-of v7, v2, Ljava/text/SimpleDateFormat;

    if-eqz v7, :cond_6c

    move-object v4, v2

    .line 238
    check-cast v4, Ljava/text/SimpleDateFormat;

    .line 239
    .local v4, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, pattern:Ljava/lang/String;
    const/16 v7, 0x48

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_69

    .line 242
    const-string v5, "24"

    .line 250
    .end local v3           #pattern:Ljava/lang/String;
    .end local v4           #sdf:Ljava/text/SimpleDateFormat;
    :goto_4a
    sget-object v8, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 251
    :try_start_4d
    sput-object v1, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    .line 252
    const-string v7, "12"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6f

    move v7, v0

    :goto_58
    sput-boolean v7, Landroid/text/format/DateFormat;->sIs24Hour:Z

    .line 253
    monitor-exit v8
    :try_end_5b
    .catchall {:try_start_4d .. :try_end_5b} :catchall_71

    .line 256
    .end local v1           #locale:Ljava/util/Locale;
    .end local v2           #natural:Ljava/text/DateFormat;
    :cond_5b
    if-eqz v5, :cond_74

    const-string v7, "12"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 257
    .local v0, b24:Z
    :goto_65
    goto :goto_2f

    .line 231
    .end local v0           #b24:Z
    .restart local v1       #locale:Ljava/util/Locale;
    :catchall_66
    move-exception v6

    :try_start_67
    monitor-exit v7
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v6

    .line 244
    .restart local v2       #natural:Ljava/text/DateFormat;
    .restart local v3       #pattern:Ljava/lang/String;
    .restart local v4       #sdf:Ljava/text/SimpleDateFormat;
    :cond_69
    const-string v5, "12"

    goto :goto_4a

    .line 247
    .end local v3           #pattern:Ljava/lang/String;
    .end local v4           #sdf:Ljava/text/SimpleDateFormat;
    :cond_6c
    const-string v5, "12"

    goto :goto_4a

    :cond_6f
    move v7, v6

    .line 252
    goto :goto_58

    .line 253
    :catchall_71
    move-exception v6

    :try_start_72
    monitor-exit v8
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v6

    .end local v1           #locale:Ljava/util/Locale;
    .end local v2           #natural:Ljava/text/DateFormat;
    :cond_74
    move v0, v6

    .line 256
    goto :goto_65
.end method

.method private static final zeroPad(II)Ljava/lang/String;
    .registers 8
    .parameter "inValue"
    .parameter "inMinDigits"

    .prologue
    .line 635
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 637
    .local v2, val:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, p1, :cond_29

    .line 638
    new-array v0, p1, [C

    .line 640
    .local v0, buf:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, p1, :cond_16

    .line 641
    const/16 v3, 0x30

    aput-char v3, v0, v1

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 643
    :cond_16
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {v2, v3, v4, v0, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 644
    new-instance v2, Ljava/lang/String;

    .end local v2           #val:Ljava/lang/String;
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    .line 646
    .end local v0           #buf:[C
    .end local v1           #i:I
    .restart local v2       #val:Ljava/lang/String;
    :cond_29
    return-object v2
.end method
