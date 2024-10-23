.class public Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;
.super Ljava/lang/Thread;
.source "SetAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction$DaysOfRepeat;
    }
.end annotation


# static fields
.field private static sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;


# instance fields
.field private mConceptMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mParseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;


# direct methods
.method public constructor <init>(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)V
    .locals 1
    .param p1, "parseResult"    # Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;->mContext:Landroid/content/Context;

    .line 37
    sput-object p3, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .line 38
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;->mParseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .line 39
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;->mParseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;->mConceptMap:Ljava/util/HashMap;

    .line 40
    return-void
.end method

.method private computerDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "calendar"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xa

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "date":Ljava/lang/String;
    const/4 v5, 0x0

    .line 67
    .local v5, "standardTime":Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;
    const/4 v6, 0x1

    :try_start_0
    invoke-static {p1, v6}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->computer(Ljava/lang/String;I)Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 71
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->getYear()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v5}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->getMonth()I

    move-result v3

    .line 75
    .local v3, "month":I
    if-ge v3, v8, :cond_0

    .line 76
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :goto_1
    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v5}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->getDay()I

    move-result v1

    .line 82
    .local v1, "day":I
    if-ge v1, v8, :cond_1

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    return-object v0

    .line 68
    .end local v1    # "day":I
    .end local v3    # "month":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "month":I
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 85
    .restart local v1    # "day":I
    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private computerTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "calendar"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0xa

    .line 92
    const/4 v6, 0x0

    .line 93
    .local v6, "time":Ljava/lang/String;
    const/4 v5, 0x0

    .line 95
    .local v5, "standardTime":Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;
    const/4 v7, 0x0

    :try_start_0
    invoke-static {p1, v7}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->computer(Ljava/lang/String;I)Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 99
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->getHour()I

    move-result v1

    .line 101
    .local v1, "hour":I
    if-ge v1, v9, :cond_0

    .line 102
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :goto_1
    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v5}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->getMinute()I

    move-result v2

    .line 108
    .local v2, "minute":I
    if-ge v2, v9, :cond_1

    .line 109
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :goto_2
    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v5}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->getSecond()I

    move-result v4

    .line 115
    .local v4, "second":I
    if-ge v4, v9, :cond_2

    .line 116
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 121
    return-object v6

    .line 96
    .end local v1    # "hour":I
    .end local v2    # "minute":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "second":I
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "hour":I
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 111
    .restart local v2    # "minute":I
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 118
    .restart local v4    # "second":I
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private getDtstart(Ljava/lang/String;II)[J
    .locals 11
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    .line 259
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 260
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v9, 0x2

    new-array v2, v9, [J

    .line 261
    .local v2, "data":[J
    const-wide/16 v4, 0x0

    .line 262
    .local v4, "dtStart":J
    const-wide/16 v6, 0x0

    .line 263
    .local v6, "dtTime":J
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 266
    .local v8, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v8, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 267
    .local v1, "dBegin":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 268
    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 269
    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 270
    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 271
    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 272
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 273
    const/4 v9, 0x0

    aput-wide v4, v2, v9
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v1    # "dBegin":Ljava/util/Date;
    :goto_0
    const/16 v9, 0xb

    invoke-virtual {v0, v9, p2}, Ljava/util/Calendar;->set(II)V

    .line 279
    const/16 v9, 0xc

    invoke-virtual {v0, v9, p3}, Ljava/util/Calendar;->set(II)V

    .line 280
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 281
    const/4 v9, 0x1

    aput-wide v6, v2, v9

    .line 282
    return-object v2

    .line 274
    :catch_0
    move-exception v3

    .line 276
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private isSetTimeValid(Ljava/lang/String;II)Z
    .locals 10
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    .line 286
    const/4 v5, 0x0

    .line 287
    .local v5, "isValid":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 288
    .local v2, "currTime":J
    const-wide/16 v8, 0x0

    .line 289
    .local v8, "setTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 290
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 291
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v1, 0x0

    .line 293
    .local v1, "dBegin":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v6, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 294
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 295
    const/16 v7, 0xb

    invoke-virtual {v0, v7, p2}, Ljava/util/Calendar;->set(II)V

    .line 296
    const/16 v7, 0xc

    invoke-virtual {v0, v7, p3}, Ljava/util/Calendar;->set(II)V

    .line 297
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 302
    :goto_0
    cmp-long v7, v2, v8

    if-gez v7, :cond_0

    .line 303
    const/4 v5, 0x1

    .line 305
    :cond_0
    return v5

    .line 298
    :catch_0
    move-exception v4

    .line 299
    .local v4, "e":Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "repeat"    # Ljava/lang/String;
    .param p4, "event"    # Ljava/lang/String;

    .prologue
    .line 125
    new-instance v8, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction$DaysOfRepeat;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1}, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction$DaysOfRepeat;-><init>(Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction$1;)V

    .line 126
    .local v8, "days":Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction$DaysOfRepeat;
    const/4 v15, -0x1

    .line 127
    .local v15, "type":I
    const/16 v17, -0x1

    .line 128
    .local v17, "value":I
    if-eqz p3, :cond_0

    const-string v18, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 129
    const-string v18, "W"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 130
    const/4 v15, 0x1

    .line 131
    const/16 v18, 0x1

    const/16 v19, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 132
    add-int/lit8 v18, v17, -0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction$DaysOfRepeat;->setRepeat(I)V

    .line 143
    :cond_0
    :goto_0
    const/4 v10, 0x0

    .line 144
    .local v10, "mTime":[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 145
    const-string v18, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 148
    :cond_1
    const/16 v18, 0x0

    aget-object v18, v10, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    aget-object v19, v10, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;->isSetTimeValid(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_3

    .line 149
    sget-object v18, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f080062

    .line 150
    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    .line 149
    invoke-interface/range {v18 .. v20}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    .line 220
    :goto_1
    return-void

    .line 133
    .end local v10    # "mTime":[Ljava/lang/String;
    :cond_2
    const-string v18, "M"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 134
    const/4 v15, 0x2

    .line 135
    const/16 v17, 0x8

    .line 136
    const/16 v18, 0x7

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction$DaysOfRepeat;->setRepeat(I)V

    goto :goto_0

    .line 154
    .restart local v10    # "mTime":[Ljava/lang/String;
    :cond_3
    const/16 v18, 0x0

    aget-object v18, v10, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    aget-object v19, v10, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;->getDtstart(Ljava/lang/String;II)[J

    move-result-object v7

    .line 155
    .local v7, "data":[J
    new-instance v5, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;

    invoke-direct {v5}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;-><init>()V

    .line 156
    .local v5, "bean":Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->set_id(I)V

    .line 157
    if-eqz v10, :cond_4

    .line 158
    const/16 v18, 0x0

    aget-object v18, v10, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setHour(I)V

    .line 159
    const/16 v18, 0x1

    aget-object v18, v10, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setMinutes(I)V

    .line 164
    :goto_2
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setEnabled(Z)V

    .line 166
    invoke-virtual {v8}, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction$DaysOfRepeat;->getRepeat()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setDaysofweek(I)V

    .line 167
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setVibrate(I)V

    .line 168
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setMessage(Ljava/lang/String;)V

    .line 169
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setAlert(Ljava/lang/String;)V

    .line 170
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setIscomplete(Z)V

    .line 172
    new-instance v4, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;

    invoke-direct {v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;-><init>()V

    .line 173
    .local v4, "alarm":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    invoke-virtual {v5}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->get_id()I

    move-result v18

    move/from16 v0, v18

    iput v0, v4, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->id:I

    .line 174
    invoke-virtual {v5}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->isEnabled()Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->enabled:Z

    .line 175
    invoke-virtual {v5}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->getHour()I

    move-result v18

    move/from16 v0, v18

    iput v0, v4, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->hour:I

    .line 176
    invoke-virtual {v5}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->getMinutes()I

    move-result v18

    move/from16 v0, v18

    iput v0, v4, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->minutes:I

    .line 177
    new-instance v9, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;

    .line 178
    invoke-virtual {v5}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->getDaysofweek()I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v9, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;-><init>(I)V

    .line 180
    .local v9, "mDaysOfWeek":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;
    iput-object v9, v4, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->daysOfWeek:Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;

    .line 181
    invoke-virtual {v5}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->getVibrate()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->vibrate:Z

    .line 182
    invoke-virtual {v5}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->label:Ljava/lang/String;

    .line 183
    invoke-virtual {v5}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->isIscomplete()Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->iscomplete:Z

    .line 185
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 200
    .local v6, "cal":Ljava/util/Calendar;
    const/16 v18, 0x0

    aget-wide v18, v7, v18

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->dtstart:J

    .line 201
    const/16 v18, 0x1

    aget-wide v18, v7, v18

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->dttime:J

    .line 202
    invoke-virtual {v5}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->getAlert()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 203
    .local v16, "uri":Landroid/net/Uri;
    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->alert:Landroid/net/Uri;

    .line 205
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 206
    .local v11, "s":Ljava/lang/String;
    const-string v18, "zdy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->addAlarm(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;)J

    move-result-wide v12

    .line 209
    .local v12, "rt":J
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 210
    .local v14, "text":Ljava/lang/StringBuffer;
    const/16 v18, 0x0

    aget-object v18, v10, v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    const/16 v18, 0x1

    aget-object v18, v10, v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    const-string v18, ", the schedule of "

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f080059

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    sget-object v18, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f080059

    .line 219
    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    .line 218
    invoke-interface/range {v18 .. v20}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 161
    .end local v4    # "alarm":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    .end local v6    # "cal":Ljava/util/Calendar;
    .end local v9    # "mDaysOfWeek":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;
    .end local v11    # "s":Ljava/lang/String;
    .end local v12    # "rt":J
    .end local v14    # "text":Ljava/lang/StringBuffer;
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_4
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setHour(I)V

    .line 162
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setMinutes(I)V

    goto/16 :goto_2

    .line 181
    .restart local v4    # "alarm":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    .restart local v9    # "mDaysOfWeek":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_3
.end method


# virtual methods
.method public getDtstart(Ljava/lang/String;)J
    .locals 8
    .param p1, "start"    # Ljava/lang/String;

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 237
    const-wide/16 v2, 0x0

    .line 255
    :goto_0
    return-wide v2

    .line 239
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 240
    .local v0, "cal":Ljava/util/Calendar;
    const-wide/16 v2, 0x0

    .line 241
    .local v2, "dtStart":J
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 244
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v5, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 245
    .local v1, "dBegin":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 246
    const/16 v6, 0xb

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 247
    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 248
    const/16 v6, 0xd

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 249
    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 250
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 251
    .end local v1    # "dBegin":Ljava/util/Date;
    :catch_0
    move-exception v4

    .line 253
    .local v4, "e":Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 44
    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;->mConceptMap:Ljava/util/HashMap;

    const-string v5, "EVENT"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 46
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;->mConceptMap:Ljava/util/HashMap;

    const-string v5, "EVENT"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 47
    .local v2, "event":Ljava/lang/String;
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;->mConceptMap:Ljava/util/HashMap;

    const-string v5, "CALENDARX"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;->mConceptMap:Ljava/util/HashMap;

    const-string v5, "CALENDARX"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    .local v0, "calendar":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;->computerDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "date":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;->computerTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "time":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 52
    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;->process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .end local v0    # "calendar":Ljava/lang/String;
    .end local v1    # "date":Ljava/lang/String;
    .end local v2    # "event":Ljava/lang/String;
    .end local v3    # "time":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    .line 61
    return-void

    .line 55
    .restart local v2    # "event":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    const-string v5, "You forget to say schedule time"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    goto :goto_0

    .line 60
    .end local v2    # "event":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 58
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;->mParseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v4}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getSentence()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyApiAi(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
