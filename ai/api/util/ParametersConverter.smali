.class public abstract Lai/api/util/ParametersConverter;
.super Ljava/lang/Object;
.source "ParametersConverter.java"


# static fields
.field public static final PROTOCOL_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final PROTOCOL_DATE_TIME_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZ"

.field public static final PROTOCOL_TIME_FORMAT:Ljava/lang/String; = "HH:mm:ss"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p0, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 24
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static parseDateTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p0, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 19
    .local v0, "dateTimeFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 1
    .param p0, "parameter"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static parseInteger(Ljava/lang/String;)I
    .locals 1
    .param p0, "parameter"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static parsePart(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "part"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v0, "u"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lai/api/util/PartialDate;->UNSPECIFIED_VALUE:Ljava/lang/Integer;

    .line 76
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static parsePartialDate(Ljava/lang/String;)Lai/api/util/PartialDate;
    .locals 13
    .param p0, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 41
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "parameter must not be empty"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 44
    :cond_0
    const-string v7, "u"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 46
    const-string v7, "-"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "parts":[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    .line 48
    new-instance v7, Ljava/text/ParseException;

    const-string v8, "Partial date must have 3 parts, but have %s: %s"

    new-array v9, v9, [Ljava/lang/Object;

    array-length v10, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    aput-object p0, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 53
    :cond_1
    aget-object v7, v4, v11

    invoke-static {v7}, Lai/api/util/ParametersConverter;->parsePart(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 54
    .local v6, "year":Ljava/lang/Integer;
    aget-object v7, v4, v12

    invoke-static {v7}, Lai/api/util/ParametersConverter;->parsePart(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 55
    .local v3, "month":Ljava/lang/Integer;
    aget-object v7, v4, v9

    invoke-static {v7}, Lai/api/util/ParametersConverter;->parsePart(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 57
    .local v2, "day":Ljava/lang/Integer;
    new-instance v5, Lai/api/util/PartialDate;

    invoke-direct {v5}, Lai/api/util/PartialDate;-><init>()V

    .line 58
    .local v5, "result":Lai/api/util/PartialDate;
    invoke-virtual {v5, v12, v6}, Lai/api/util/PartialDate;->set(ILjava/lang/Integer;)V

    .line 59
    invoke-virtual {v5, v9, v3}, Lai/api/util/PartialDate;->set(ILjava/lang/Integer;)V

    .line 60
    const/4 v7, 0x5

    invoke-virtual {v5, v7, v2}, Lai/api/util/PartialDate;->set(ILjava/lang/Integer;)V

    .line 68
    .end local v2    # "day":Ljava/lang/Integer;
    .end local v3    # "month":Ljava/lang/Integer;
    .end local v4    # "parts":[Ljava/lang/String;
    .end local v5    # "result":Lai/api/util/PartialDate;
    .end local v6    # "year":Ljava/lang/Integer;
    :goto_0
    return-object v5

    .line 66
    :cond_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 67
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 68
    .local v0, "date":Ljava/util/Date;
    new-instance v5, Lai/api/util/PartialDate;

    invoke-direct {v5, v0}, Lai/api/util/PartialDate;-><init>(Ljava/util/Date;)V

    goto :goto_0
.end method

.method public static parseTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 29
    .local v1, "timeFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 31
    .local v2, "timeParameter":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 32
    .local v0, "taskDueDate":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 33
    const/16 v3, 0xc

    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 34
    const/16 v3, 0xd

    invoke-virtual {v2}, Ljava/util/Date;->getSeconds()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 36
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    return-object v3
.end method
