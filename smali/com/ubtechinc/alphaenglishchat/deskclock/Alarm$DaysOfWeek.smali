.class public final Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;
.super Ljava/lang/Object;
.source "Alarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DaysOfWeek"
.end annotation


# static fields
.field private static DAY_MAP:[I


# instance fields
.field private mDays:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->DAY_MAP:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "days"    # I

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput p1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->mDays:I

    .line 282
    return-void
.end method

.method private isSet(I)Z
    .locals 3
    .param p1, "day"    # I

    .prologue
    const/4 v0, 0x1

    .line 324
    iget v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->mDays:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBooleanArray()[Z
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 345
    new-array v1, v3, [Z

    .line 346
    .local v1, "ret":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 347
    invoke-direct {p0, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->isSet(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_0
    return-object v1
.end method

.method public getCoded()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->mDays:I

    return v0
.end method

.method public getNextAlarm(Ljava/util/Calendar;)I
    .locals 5
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x7

    .line 363
    iget v3, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->mDays:I

    if-nez v3, :cond_1

    .line 364
    const/4 v1, -0x1

    .line 377
    :cond_0
    return v1

    .line 367
    :cond_1
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x7

    .line 369
    .local v2, "today":I
    const/4 v0, 0x0

    .line 370
    .local v0, "day":I
    const/4 v1, 0x0

    .line 371
    .local v1, "dayCount":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 372
    add-int v3, v2, v1

    rem-int/lit8 v0, v3, 0x7

    .line 373
    invoke-direct {p0, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->isSet(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isRepeatSet()Z
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->mDays:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(IZ)V
    .locals 2
    .param p1, "day"    # I
    .param p2, "set"    # Z

    .prologue
    const/4 v1, 0x1

    .line 328
    if-eqz p2, :cond_0

    .line 329
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->mDays:I

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->mDays:I

    goto :goto_0
.end method

.method public set(Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;)V
    .locals 1
    .param p1, "dow"    # Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;

    .prologue
    .line 336
    iget v0, p1, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->mDays:I

    iput v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->mDays:I

    .line 337
    return-void
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showNever"    # Z

    .prologue
    const/4 v8, 0x1

    .line 285
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local v5, "ret":Ljava/lang/StringBuilder;
    iget v6, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->mDays:I

    if-nez v6, :cond_1

    .line 289
    if-eqz p2, :cond_0

    const v6, 0x7f080055

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 320
    :goto_0
    return-object v6

    .line 289
    :cond_0
    const-string v6, ""

    goto :goto_0

    .line 294
    :cond_1
    iget v6, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->mDays:I

    const/16 v7, 0x7f

    if-ne v6, v7, :cond_2

    .line 295
    const v6, 0x7f08004f

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 299
    :cond_2
    const/4 v0, 0x0

    .local v0, "dayCount":I
    iget v2, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->mDays:I

    .line 300
    .local v2, "days":I
    :goto_1
    if-lez v2, :cond_4

    .line 301
    and-int/lit8 v6, v2, 0x1

    if-ne v6, v8, :cond_3

    .line 302
    add-int/lit8 v0, v0, 0x1

    .line 303
    :cond_3
    shr-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 307
    :cond_4
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 308
    .local v3, "dfs":Ljava/text/DateFormatSymbols;
    if-le v0, v8, :cond_6

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "dayList":[Ljava/lang/String;
    :goto_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    const/4 v6, 0x7

    if-ge v4, v6, :cond_7

    .line 313
    iget v6, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->mDays:I

    shl-int v7, v8, v4

    and-int/2addr v6, v7

    if-eqz v6, :cond_5

    .line 314
    sget-object v6, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->DAY_MAP:[I

    aget v6, v6, v4

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    add-int/lit8 v0, v0, -0x1

    .line 316
    if-lez v0, :cond_5

    .line 317
    const v6, 0x7f08004d

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 312
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 309
    .end local v1    # "dayList":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_6
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 320
    .restart local v1    # "dayList":[Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method
