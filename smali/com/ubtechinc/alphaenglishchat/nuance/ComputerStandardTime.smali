.class public Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;
.super Ljava/lang/Object;
.source "ComputerStandardTime.java"


# static fields
.field private static final INCREMENT_DAY:I = 0x2

.field private static final INCREMENT_HOUR:I = 0x3

.field private static final INCREMENT_MINUTE:I = 0x4

.field private static final INCREMENT_MONTH:I = 0x1

.field private static final INCREMENT_YEAR:I = 0x0

.field private static final ONE_DAY_MILLS:J = 0x5265c00L

.field private static final ONE_HOUR_MILLS:J = 0x36ee80L

.field private static final ONE_MINUTE_MILLS:J = 0xea60L

.field public static final PARSE_DATE:I = 0x1

.field public static final PARSE_TIME:I = 0x0

.field private static final TYPE_DATE:I = 0x1

.field private static final TYPE_DATE_INCRE_DAY:I = 0x2

.field private static final TYPE_DATE_INCRE_MONTH:I = 0x1

.field private static final TYPE_DATE_WEEK:I = 0x0

.field private static final TYPE_TIME:I = 0x0

.field private static final TYPE_TIME_INCRE_HOUR:I = 0x3

.field private static final TYPE_TIME_INCRE_MINUTE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateStandardTime(JII)Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;
    .locals 8
    .param p0, "currTime"    # J
    .param p2, "type"    # I
    .param p3, "incre"    # I

    .prologue
    .line 289
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 290
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v1, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    invoke-direct {v1}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;-><init>()V

    .line 291
    .local v1, "standardTime":Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;
    const-wide/16 v2, -0x1

    .line 293
    .local v2, "increment":J
    packed-switch p2, :pswitch_data_0

    .line 309
    :goto_0
    :pswitch_0
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 310
    add-long/2addr p0, v2

    .line 311
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 316
    :goto_1
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setYear(I)V

    .line 317
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setMonth(I)V

    .line 318
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setDay(I)V

    .line 319
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setWeek(I)V

    .line 320
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setHour(I)V

    .line 321
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setMinute(I)V

    .line 322
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setSecond(I)V

    .line 323
    return-object v1

    .line 299
    :pswitch_1
    const-wide/32 v4, 0x5265c00

    int-to-long v6, p3

    mul-long v2, v4, v6

    .line 300
    goto :goto_0

    .line 302
    :pswitch_2
    const-wide/32 v4, 0x36ee80

    int-to-long v6, p3

    mul-long v2, v4, v6

    .line 303
    goto :goto_0

    .line 305
    :pswitch_3
    const-wide/32 v4, 0xea60

    int-to-long v6, p3

    mul-long v2, v4, v6

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static computeTime(II)Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;
    .locals 14
    .param p0, "increment"    # I
    .param p1, "type"    # I

    .prologue
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 121
    .local v8, "time":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 122
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 123
    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 124
    .local v11, "year":I
    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 125
    .local v5, "month":I
    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 126
    .local v1, "day":I
    const/16 v12, 0xa

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 127
    .local v2, "hour":I
    const/16 v12, 0xc

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 128
    .local v4, "minute":I
    const/16 v12, 0xd

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 129
    .local v6, "second":I
    const/4 v12, 0x7

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 131
    .local v10, "weekDay":I
    add-int/lit8 v5, v5, 0x1

    .line 132
    new-instance v7, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    invoke-direct {v7}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;-><init>()V

    .line 134
    .local v7, "standardTime":Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;
    const/4 v12, 0x2

    if-ne p1, v12, :cond_1

    .line 135
    const/4 v12, 0x2

    invoke-static {v8, v9, v12, p0}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->calculateStandardTime(JII)Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    move-result-object v7

    .line 172
    :cond_0
    :goto_0
    return-object v7

    .line 141
    :cond_1
    const/4 v12, 0x1

    if-ne p1, v12, :cond_3

    .line 142
    invoke-virtual {v7, v11}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setYear(I)V

    .line 143
    invoke-virtual {v7, v1}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setDay(I)V

    .line 144
    add-int v12, v5, p0

    const/16 v13, 0xd

    if-ge v12, v13, :cond_2

    .line 145
    add-int v12, v5, p0

    invoke-virtual {v7, v12}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setMonth(I)V

    .line 150
    :goto_1
    invoke-virtual {v7, v2}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setHour(I)V

    .line 151
    invoke-virtual {v7, v4}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setMinute(I)V

    .line 152
    invoke-virtual {v7, v6}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setSecond(I)V

    goto :goto_0

    .line 147
    :cond_2
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v7, v12}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setYear(I)V

    .line 148
    add-int v12, v5, p0

    add-int/lit8 v12, v12, -0xc

    invoke-virtual {v7, v12}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setDay(I)V

    goto :goto_1

    .line 153
    :cond_3
    if-nez p1, :cond_5

    .line 154
    invoke-virtual {v7, v11}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setYear(I)V

    .line 155
    invoke-virtual {v7, v5}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setMonth(I)V

    .line 156
    if-le p0, v10, :cond_4

    .line 157
    sub-int v3, p0, v10

    .line 158
    .local v3, "incre":I
    const/4 v12, 0x2

    invoke-static {v8, v9, v12, v3}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->calculateStandardTime(JII)Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    move-result-object v7

    .line 160
    goto :goto_0

    .line 161
    .end local v3    # "incre":I
    :cond_4
    rsub-int/lit8 v12, v10, 0x7

    add-int v3, p0, v12

    .line 162
    .restart local v3    # "incre":I
    const/4 v12, 0x2

    invoke-static {v8, v9, v12, v3}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->calculateStandardTime(JII)Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    move-result-object v7

    .line 165
    goto :goto_0

    .line 166
    .end local v3    # "incre":I
    :cond_5
    const/4 v12, 0x3

    if-ne p1, v12, :cond_6

    .line 167
    const/4 v12, 0x3

    invoke-static {v8, v9, v12, p0}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->calculateStandardTime(JII)Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    move-result-object v7

    goto :goto_0

    .line 168
    :cond_6
    const/4 v12, 0x4

    if-ne p1, v12, :cond_0

    .line 169
    const/4 v12, 0x4

    invoke-static {v8, v9, v12, p0}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->calculateStandardTime(JII)Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    move-result-object v7

    goto :goto_0
.end method

.method public static computer(Ljava/lang/String;I)Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;
    .locals 7
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 36
    new-instance v2, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    invoke-direct {v2}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;-><init>()V

    .line 38
    .local v2, "standardTime":Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;
    if-ne p1, v6, :cond_6

    .line 39
    const-string v4, "DAY_OF_WEEK"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 40
    invoke-static {p0}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->getDay(Ljava/lang/String;)I

    move-result v0

    .line 41
    .local v0, "day":I
    const/4 v4, -0x1

    if-le v0, v4, :cond_0

    .line 42
    invoke-static {v0, v5}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->computeTime(II)Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    move-result-object v2

    .line 72
    .end local v0    # "day":I
    :cond_0
    :goto_0
    return-object v2

    .line 44
    :cond_1
    const-string v4, "INCREMENT"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 45
    invoke-static {p0}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->getIncrement(Ljava/lang/String;)I

    move-result v1

    .line 46
    .local v1, "increment":I
    invoke-static {p0}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->getStep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "step":Ljava/lang/String;
    const-string v4, "day"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, " day"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 48
    :cond_2
    const/4 v4, 0x2

    invoke-static {v1, v4}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->computeTime(II)Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    move-result-object v2

    goto :goto_0

    .line 49
    :cond_3
    const-string v4, "month"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, " month"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    :cond_4
    invoke-static {v1, v6}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->computeTime(II)Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    move-result-object v2

    goto :goto_0

    .line 52
    .end local v1    # "increment":I
    .end local v3    # "step":Ljava/lang/String;
    :cond_5
    const-string v4, "_TIMEINCREMENT"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 54
    const-string v4, "DAY"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    invoke-static {p0, v6}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->createStandardTime(Ljava/lang/String;I)Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    move-result-object v2

    goto :goto_0

    .line 57
    :cond_6
    if-nez p1, :cond_0

    .line 58
    const-string v4, "HOUR"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 59
    invoke-static {p0, v5}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->createStandardTime(Ljava/lang/String;I)Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    move-result-object v2

    goto :goto_0

    .line 60
    :cond_7
    const-string v4, "MINUTE"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 61
    invoke-static {p0, v5}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->createStandardTime(Ljava/lang/String;I)Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    move-result-object v2

    goto :goto_0

    .line 62
    :cond_8
    const-string v4, "INCREMENT"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    invoke-static {p0}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->getIncrement(Ljava/lang/String;)I

    move-result v1

    .line 64
    .restart local v1    # "increment":I
    invoke-static {p0}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->getStep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .restart local v3    # "step":Ljava/lang/String;
    const-string v4, "hour"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, " hour"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 66
    :cond_9
    const/4 v4, 0x3

    invoke-static {v1, v4}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->computeTime(II)Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    move-result-object v2

    goto/16 :goto_0

    .line 67
    :cond_a
    const-string v4, "minute"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, " minute"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    :cond_b
    const/4 v4, 0x4

    invoke-static {v1, v4}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->computeTime(II)Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private static createStandardTime(Ljava/lang/String;I)Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;
    .locals 21
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 176
    new-instance v15, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    invoke-direct {v15}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;-><init>()V

    .line 178
    .local v15, "standardTime":Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 179
    .local v4, "currTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 180
    .local v3, "calendar":Ljava/util/Calendar;
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 181
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 182
    .local v18, "year":I
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 183
    .local v12, "month":I
    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 184
    .local v6, "day":I
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 185
    .local v8, "hour":I
    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 186
    .local v10, "minute":I
    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 187
    .local v14, "second":I
    const/16 v19, 0x7

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 188
    .local v17, "weekDay":I
    add-int/lit8 v12, v12, 0x1

    .line 190
    const/16 v19, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 191
    const/4 v13, -0x1

    .line 192
    .local v13, "monthValue":I
    const/4 v7, -0x1

    .line 193
    .local v7, "dayValue":I
    const-string v19, "MONTH"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->parseValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 194
    .local v16, "value":Ljava/lang/String;
    if-eqz v16, :cond_0

    const-string v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 195
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 197
    :cond_0
    const-string v19, "DAY"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->parseValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 198
    if-eqz v16, :cond_1

    const-string v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 199
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 202
    :cond_1
    const/16 v19, -0x1

    move/from16 v0, v19

    if-le v13, v0, :cond_4

    .line 203
    const/16 v19, -0x1

    move/from16 v0, v19

    if-le v7, v0, :cond_3

    .line 204
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setYear(I)V

    .line 205
    invoke-virtual {v15, v13}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setMonth(I)V

    .line 206
    invoke-virtual {v15, v7}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setDay(I)V

    .line 221
    :goto_0
    invoke-virtual {v15, v8}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setHour(I)V

    .line 222
    invoke-virtual {v15, v10}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setMinute(I)V

    .line 223
    invoke-virtual {v15, v14}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setSecond(I)V

    .line 268
    .end local v7    # "dayValue":I
    .end local v13    # "monthValue":I
    .end local v16    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v15

    .line 208
    .restart local v7    # "dayValue":I
    .restart local v13    # "monthValue":I
    .restart local v16    # "value":Ljava/lang/String;
    :cond_3
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setYear(I)V

    .line 209
    invoke-virtual {v15, v13}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setMonth(I)V

    .line 210
    invoke-virtual {v15, v6}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setDay(I)V

    goto :goto_0

    .line 213
    :cond_4
    const/16 v19, -0x1

    move/from16 v0, v19

    if-le v7, v0, :cond_5

    .line 214
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setYear(I)V

    .line 215
    invoke-virtual {v15, v12}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setMonth(I)V

    .line 216
    invoke-virtual {v15, v7}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setDay(I)V

    goto :goto_0

    .line 218
    :cond_5
    const/4 v15, 0x0

    goto :goto_0

    .line 224
    .end local v7    # "dayValue":I
    .end local v13    # "monthValue":I
    .end local v16    # "value":Ljava/lang/String;
    :cond_6
    if-nez p1, :cond_2

    .line 225
    const/4 v2, 0x0

    .line 226
    .local v2, "ampm":Ljava/lang/String;
    const/4 v9, -0x1

    .line 227
    .local v9, "hourValue":I
    const/4 v11, -0x1

    .line 228
    .local v11, "minuteValue":I
    const-string v19, "HOUR"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->parseValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 229
    .restart local v16    # "value":Ljava/lang/String;
    if-eqz v16, :cond_7

    const-string v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 230
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 232
    :cond_7
    const-string v19, "MINUTE"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->parseValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 233
    if-eqz v16, :cond_8

    const-string v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 234
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 236
    :cond_8
    const-string v19, "AMPM"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->parseValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 237
    if-eqz v16, :cond_9

    const-string v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 238
    move-object/from16 v2, v16

    .line 241
    :cond_9
    if-eqz v2, :cond_a

    const-string v19, "pm"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 242
    add-int/lit8 v19, v9, 0xc

    const/16 v20, 0x18

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    .line 243
    add-int/lit8 v9, v9, 0xc

    .line 246
    :cond_a
    const/16 v19, -0x1

    move/from16 v0, v19

    if-le v9, v0, :cond_d

    .line 247
    const/16 v19, -0x1

    move/from16 v0, v19

    if-le v11, v0, :cond_c

    .line 248
    invoke-virtual {v15, v9}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setHour(I)V

    .line 249
    invoke-virtual {v15, v11}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setMinute(I)V

    .line 262
    :cond_b
    :goto_2
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setYear(I)V

    .line 263
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setWeek(I)V

    .line 264
    invoke-virtual {v15, v12}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setMonth(I)V

    .line 265
    invoke-virtual {v15, v6}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setDay(I)V

    .line 266
    invoke-virtual {v15, v14}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setSecond(I)V

    goto/16 :goto_1

    .line 251
    :cond_c
    invoke-virtual {v15, v9}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setHour(I)V

    .line 252
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setMinute(I)V

    goto :goto_2

    .line 255
    :cond_d
    const/16 v19, -0x1

    move/from16 v0, v19

    if-le v11, v0, :cond_b

    .line 256
    invoke-virtual {v15, v8}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setHour(I)V

    .line 257
    invoke-virtual {v15, v11}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->setMinute(I)V

    goto :goto_2
.end method

.method private static getDay(Ljava/lang/String;)I
    .locals 6
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 99
    const-string v4, "("

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 100
    .local v1, "indexStart":I
    const-string v4, ")"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 101
    .local v2, "indexStop":I
    const/4 v0, -0x1

    .line 102
    .local v0, "day":I
    if-le v1, v5, :cond_0

    if-le v2, v5, :cond_0

    if-ge v1, v2, :cond_0

    .line 103
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "number":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 106
    .end local v3    # "number":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private static getIncrement(Ljava/lang/String;)I
    .locals 6
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 87
    const-string v4, "INCREMENT"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 88
    .local v1, "indexStart":I
    const-string v4, "("

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 89
    const-string v4, ")"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 90
    .local v2, "indexStop":I
    const/4 v0, -0x1

    .line 91
    .local v0, "increment":I
    if-le v1, v5, :cond_0

    if-le v2, v5, :cond_0

    if-ge v1, v2, :cond_0

    .line 92
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "number":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 95
    .end local v3    # "number":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private static getStep(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 76
    const-string v3, "STEP"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 77
    .local v0, "indexStart":I
    const-string v3, "("

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 78
    const-string v3, ")"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 79
    .local v1, "indexStop":I
    const/4 v2, 0x0

    .line 80
    .local v2, "step":Ljava/lang/String;
    if-le v0, v4, :cond_0

    if-le v1, v4, :cond_0

    if-ge v0, v1, :cond_0

    .line 81
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 83
    :cond_0
    return-object v2
.end method

.method private static parseValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "timeType"    # Ljava/lang/String;

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 273
    .local v2, "start":I
    const/4 v0, 0x0

    .line 274
    .local v0, "end":I
    const/4 v3, 0x0

    .line 275
    .local v3, "value":Ljava/lang/String;
    const/4 v4, -0x1

    if-le v2, v4, :cond_0

    .line 276
    const-string v4, "("

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 277
    const-string v4, ")"

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v1, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 282
    const-string v4, "\\s*"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-object v3
.end method
