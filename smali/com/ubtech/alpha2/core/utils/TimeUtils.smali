.class public Lcom/ubtech/alpha2/core/utils/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final DD_MM_YYYY:Ljava/lang/String; = "dd-MM-yyyy"

.field public static final HH_MM_SS:Ljava/lang/String; = "HH:mm:ss"

.field public static final MM_DD_YYYY:Ljava/lang/String; = "MM-dd-yyyy"

.field static final MONTH_FEBRUARY:I = 0x2

.field public static final PRECISE_DAY:I = 0x3

.field public static final PRECISE_HOUR:I = 0x4

.field public static final PRECISE_MINUTE:I = 0x5

.field public static final PRECISE_MONTH:I = 0x2

.field public static final PRECISE_MilliSECOND:I = 0x7

.field public static final PRECISE_SECOND:I = 0x6

.field public static final PRECISE_YEAR:I = 0x1

.field public static final YYYYMMDD_HHMMSS:Ljava/lang/String; = "yyyyMMdd HHmmss"

.field public static final YYYY_MM_DD:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final YYYY_MM_DD_HH_MM_SS:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field static daysInMonth:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ubtech/alpha2/core/utils/TimeUtils;->daysInMonth:[I

    return-void

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDateToString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "dateTime"    # Ljava/util/Date;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static dateDiff(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p0, "argsBegin"    # Ljava/lang/String;
    .param p1, "argsEnd"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 400
    invoke-static {p0, p2}, Lcom/ubtech/alpha2/core/utils/TimeUtils;->getDateParse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 401
    .local v0, "dateBegin":Ljava/util/Date;
    invoke-static {p1, p2}, Lcom/ubtech/alpha2/core/utils/TimeUtils;->getDateParse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 402
    .local v1, "dateEnd":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 403
    .local v4, "timeBegin":J
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 404
    .local v6, "timeEnd":J
    sub-long v8, v4, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 406
    .local v2, "diff":J
    const-wide/32 v8, 0x5265c00

    div-long/2addr v2, v8

    .line 407
    long-to-int v8, v2

    return v8
.end method

.method public static getCurrentWeekday()Ljava/lang/String;
    .locals 7

    .prologue
    .line 316
    invoke-static {}, Lcom/ubtech/alpha2/core/utils/TimeUtils;->getMondayPlus()I

    move-result v3

    .line 317
    .local v3, "mondayPlus":I
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 318
    .local v0, "currentDate":Ljava/util/GregorianCalendar;
    const/4 v5, 0x5

    add-int/lit8 v6, v3, 0x6

    invoke-virtual {v0, v5, v6}, Ljava/util/GregorianCalendar;->add(II)V

    .line 319
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 321
    .local v2, "monday":Ljava/util/Date;
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 322
    .local v1, "df":Ljava/text/DateFormat;
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, "preMonday":Ljava/lang/String;
    return-object v4
.end method

.method public static getDateParse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p0, "args"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 418
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getDayOfMonth()I
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getDayOfWeek()I
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getDayOfYear()I
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getDays(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 10
    .param p0, "args1"    # Ljava/lang/String;
    .param p1, "args2"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 194
    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-wide v2

    .line 196
    :cond_1
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 199
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, "myFormatter":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 201
    .local v0, "date":Ljava/util/Date;
    const/4 v4, 0x0

    .line 203
    .local v4, "mydate":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 204
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 207
    :goto_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x5265c00

    div-long v2, v6, v8

    .line 208
    .local v2, "day":J
    goto :goto_0

    .line 205
    .end local v2    # "day":J
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static getDefaultDay(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 218
    const-string v2, ""

    .line 219
    .local v2, "str":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 221
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 222
    .local v0, "lastDate":Ljava/util/Calendar;
    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 223
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 224
    const/4 v3, -0x1

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->add(II)V

    .line 226
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 227
    return-object v2
.end method

.method public static getFirstDayOfMonth(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    .line 300
    const-string v2, ""

    .line 301
    .local v2, "str":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 303
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 304
    .local v0, "lastDate":Ljava/util/Calendar;
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 305
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 306
    return-object v2
.end method

.method public static getMondayOFWeek()Ljava/lang/String;
    .locals 6

    .prologue
    .line 362
    invoke-static {}, Lcom/ubtech/alpha2/core/utils/TimeUtils;->getMondayPlus()I

    move-result v3

    .line 363
    .local v3, "mondayPlus":I
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 364
    .local v0, "currentDate":Ljava/util/GregorianCalendar;
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 365
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 366
    .local v2, "monday":Ljava/util/Date;
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 367
    .local v1, "df":Ljava/text/DateFormat;
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, "preMonday":Ljava/lang/String;
    return-object v4
.end method

.method public static getMondayPlus()I
    .locals 3

    .prologue
    .line 345
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 347
    .local v0, "cd":Ljava/util/Calendar;
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 348
    .local v1, "dayOfWeek":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 349
    const/4 v2, 0x0

    .line 351
    :goto_0
    return v2

    :cond_0
    rsub-int/lit8 v2, v1, 0x1

    goto :goto_0
.end method

.method public static getMonth()I
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getMonthDay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "args"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 381
    .local v4, "str":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 382
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 383
    .local v3, "months":I
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 384
    .local v5, "years":I
    const/4 v2, 0x1

    .line 385
    .local v2, "days":I
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v0, v5, v6, v2}, Ljava/util/Calendar;->set(III)V

    .line 386
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 387
    .local v1, "day":I
    return v1
.end method

.method public static getMonthEnd(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "num"    # I
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x5

    .line 285
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 286
    .local v1, "lastDate":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 287
    const/4 v2, 0x2

    add-int/lit8 v3, p0, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 288
    const/4 v2, -0x1

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 289
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "date":Ljava/lang/String;
    return-object v0
.end method

.method public static getMonthFirst(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "num"    # I
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 269
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 270
    .local v1, "lastDate":Ljava/util/Calendar;
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 271
    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0}, Ljava/util/Calendar;->add(II)V

    .line 273
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "date":Ljava/lang/String;
    return-object v0
.end method

.method public static getNextMonday(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x7

    .line 509
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 510
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 511
    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 512
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNextMonthEnd(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x2

    .line 550
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 551
    .local v0, "lastDate":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 552
    invoke-virtual {v0, v2, v2}, Ljava/util/Calendar;->add(II)V

    .line 553
    const/4 v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 554
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNextMonthFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 537
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 538
    .local v0, "lastDate":Ljava/util/Calendar;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 539
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 540
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNextSunday(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 523
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 524
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 525
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 526
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 527
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNowTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    .line 333
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 334
    .local v2, "now":Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "hehe":Ljava/lang/String;
    return-object v1
.end method

.method public static getPreviousMonthEnd(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x5

    .line 253
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 254
    .local v1, "lastDate":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 256
    const/4 v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 257
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "date":Ljava/lang/String;
    return-object v0
.end method

.method public static getPreviousMonthFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 238
    .local v1, "lastDate":Ljava/util/Calendar;
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 239
    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 241
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "date":Ljava/lang/String;
    return-object v0
.end method

.method public static getPreviousWeekSunday(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    .line 495
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 496
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 497
    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 498
    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 499
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPreviousWeekday(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    .line 479
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 480
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x5

    const/4 v2, -0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 481
    const/4 v1, 0x7

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 482
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTimeStepSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "args1"    # Ljava/lang/String;
    .param p1, "args2"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 597
    invoke-static {p0, p2}, Lcom/ubtech/alpha2/core/utils/TimeUtils;->getDateParse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 598
    .local v0, "date1":Ljava/util/Date;
    invoke-static {p1, p2}, Lcom/ubtech/alpha2/core/utils/TimeUtils;->getDateParse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 599
    .local v1, "date2":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 600
    .local v2, "time1":J
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 601
    .local v4, "time2":J
    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getTimeYearNext(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 121
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x6

    const/16 v3, 0xb7

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 122
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "date":Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/ubtech/alpha2/core/utils/TimeUtils;->getDateParse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public static getTwoDay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "sj1"    # Ljava/lang/String;
    .param p1, "sj2"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 147
    .local v4, "myFormatter":Ljava/text/SimpleDateFormat;
    const-wide/16 v2, 0x0

    .line 149
    .local v2, "day":J
    :try_start_0
    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 150
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 151
    .local v5, "mydate":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x5265c00

    div-long v2, v6, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v0    # "date":Ljava/util/Date;
    .end local v5    # "mydate":Ljava/util/Date;
    :goto_0
    return-object v6

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, ""

    goto :goto_0
.end method

.method public static getWeek(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "args"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string v2, "yyyy-MM-dd"

    invoke-static {p0, v2}, Lcom/ubtech/alpha2/core/utils/TimeUtils;->strToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 167
    .local v1, "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 168
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 172
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEEE"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getWeek(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "args"    # Ljava/lang/String;
    .param p1, "num"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x7

    .line 566
    const-string v2, "yyyy-MM-dd"

    invoke-static {p0, v2}, Lcom/ubtech/alpha2/core/utils/TimeUtils;->getDateParse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 567
    .local v1, "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 568
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 569
    const-string v2, "1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 570
    const/4 v2, 0x2

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 584
    :cond_0
    :goto_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 571
    :cond_1
    const-string v2, "2"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 572
    const/4 v2, 0x3

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 573
    :cond_2
    const-string v2, "3"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 574
    const/4 v2, 0x4

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 575
    :cond_3
    const-string v2, "4"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 576
    const/4 v2, 0x5

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 577
    :cond_4
    const-string v2, "5"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 578
    const/4 v2, 0x6

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 579
    :cond_5
    const-string v2, "6"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 580
    invoke-virtual {v0, v3, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 581
    :cond_6
    const-string v2, "0"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 582
    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method public static getWeekOfMonth()I
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getWeekSunday(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "num"    # I
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 464
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 465
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 466
    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 467
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    .line 468
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getWeekday(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "num"    # I
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 448
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 449
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x5

    mul-int/lit8 v2, p0, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 450
    const/4 v1, 0x7

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 451
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getYear()I
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getYesterday(ILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "num"    # I
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x5

    .line 429
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 430
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 431
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v2, Ljava/util/GregorianCalendar;

    const/4 v5, 0x1

    .line 432
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 433
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-direct {v2, v5, v6, v7}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 434
    .local v2, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {v2, v8, p0}, Ljava/util/GregorianCalendar;->add(II)V

    .line 435
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 436
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 437
    .local v4, "str":Ljava/lang/String;
    return-object v4
.end method

.method public static isLeapYear(I)Z
    .locals 3
    .param p0, "year"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    rem-int/lit8 v2, p0, 0x64

    if-nez v2, :cond_2

    .line 79
    rem-int/lit16 v2, p0, 0x190

    if-nez v2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 79
    goto :goto_0

    .line 82
    :cond_2
    rem-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 610
    new-instance v0, Lcom/ubtech/alpha2/core/utils/TimeUtils;

    invoke-direct {v0}, Lcom/ubtech/alpha2/core/utils/TimeUtils;-><init>()V

    .line 611
    .local v0, "tt":Lcom/ubtech/alpha2/core/utils/TimeUtils;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u83b7\u53d6\u5f53\u5929\u65e5\u671f:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "yyyy-MM-dd"

    invoke-static {v3}, Lcom/ubtech/alpha2/core/utils/TimeUtils;->getNowTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method public static strToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p0, "args"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 182
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
