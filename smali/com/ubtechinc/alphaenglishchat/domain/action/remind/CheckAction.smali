.class public Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;
.super Ljava/lang/Thread;
.source "CheckAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction$DaysOfRepeat;
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
    .line 37
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;->mContext:Landroid/content/Context;

    .line 39
    sput-object p3, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .line 40
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;->mParseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .line 41
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;->mParseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;->mConceptMap:Ljava/util/HashMap;

    .line 42
    return-void
.end method

.method private computerDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "calendar"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xa

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "date":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-static {p1, v5}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->computer(Ljava/lang/String;I)Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    move-result-object v4

    .line 85
    .local v4, "standardTime":Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->getYear()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v4}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->getMonth()I

    move-result v2

    .line 89
    .local v2, "month":I
    if-ge v2, v7, :cond_0

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :goto_0
    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v4}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->getDay()I

    move-result v1

    .line 96
    .local v1, "day":I
    if-ge v1, v7, :cond_1

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    return-object v0

    .line 92
    .end local v1    # "day":I
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 99
    .restart local v1    # "day":I
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private computerTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "calendar"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xa

    .line 106
    const/4 v5, 0x0

    .line 107
    .local v5, "time":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->computer(Ljava/lang/String;I)Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    move-result-object v4

    .line 108
    .local v4, "standardTime":Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->getHour()I

    move-result v0

    .line 110
    .local v0, "hour":I
    if-ge v0, v8, :cond_0

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :goto_0
    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v4}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->getMinute()I

    move-result v1

    .line 117
    .local v1, "minute":I
    if-ge v1, v8, :cond_1

    .line 118
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :goto_1
    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v4}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->getSecond()I

    move-result v3

    .line 124
    .local v3, "second":I
    if-ge v3, v8, :cond_2

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 130
    return-object v5

    .line 113
    .end local v1    # "minute":I
    .end local v3    # "second":I
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 120
    .restart local v1    # "minute":I
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 127
    .restart local v3    # "second":I
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "repeat"    # Ljava/lang/String;
    .param p4, "event"    # Ljava/lang/String;

    .prologue
    .line 134
    new-instance v7, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction$DaysOfRepeat;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v1}, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction$DaysOfRepeat;-><init>(Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction$1;)V

    .line 135
    .local v7, "days":Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction$DaysOfRepeat;
    const/4 v15, -0x1

    .line 136
    .local v15, "type":I
    const/16 v17, -0x1

    .line 137
    .local v17, "value":I
    if-eqz p3, :cond_0

    const-string v18, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 138
    const-string v18, "W"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 139
    const/4 v15, 0x1

    .line 140
    const/16 v18, 0x1

    const/16 v19, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 141
    add-int/lit8 v18, v17, -0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction$DaysOfRepeat;->setRepeat(I)V

    .line 151
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;->getDtstart(Ljava/lang/String;)J

    move-result-wide v8

    .line 152
    .local v8, "dtstart":J
    const/4 v11, 0x0

    .line 153
    .local v11, "mTime":[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 154
    const-string v18, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 156
    :cond_1
    new-instance v5, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;

    invoke-direct {v5}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;-><init>()V

    .line 157
    .local v5, "bean":Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->set_id(I)V

    .line 158
    if-eqz v11, :cond_3

    .line 159
    const/16 v18, 0x0

    aget-object v18, v11, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setHour(I)V

    .line 160
    const/16 v18, 0x1

    aget-object v18, v11, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setMinutes(I)V

    .line 165
    :goto_1
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setEnabled(Z)V

    .line 167
    invoke-virtual {v7}, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction$DaysOfRepeat;->getRepeat()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setDaysofweek(I)V

    .line 168
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setVibrate(I)V

    .line 169
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setMessage(Ljava/lang/String;)V

    .line 170
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setAlert(Ljava/lang/String;)V

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
    new-instance v10, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;

    .line 178
    invoke-virtual {v5}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->getDaysofweek()I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v10, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;-><init>(I)V

    .line 180
    .local v10, "mDaysOfWeek":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;
    iput-object v10, v4, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->daysOfWeek:Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;

    .line 181
    invoke-virtual {v5}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->getVibrate()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/16 v18, 0x1

    :goto_2
    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->vibrate:Z

    .line 182
    invoke-virtual {v5}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->label:Ljava/lang/String;

    .line 184
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 199
    .local v6, "cal":Ljava/util/Calendar;
    iput-wide v8, v4, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->dtstart:J

    .line 200
    invoke-virtual {v5}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->getAlert()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 201
    .local v16, "uri":Landroid/net/Uri;
    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->alert:Landroid/net/Uri;

    .line 203
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v14

    .line 204
    .local v14, "s":Ljava/lang/String;
    const-string v18, "zdy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->addAlarm(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;)J

    move-result-wide v12

    .line 206
    .local v12, "rt":J
    sget-object v18, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f080059

    .line 207
    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    .line 206
    invoke-interface/range {v18 .. v20}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    .line 208
    return-void

    .line 142
    .end local v4    # "alarm":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    .end local v5    # "bean":Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;
    .end local v6    # "cal":Ljava/util/Calendar;
    .end local v8    # "dtstart":J
    .end local v10    # "mDaysOfWeek":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;
    .end local v11    # "mTime":[Ljava/lang/String;
    .end local v12    # "rt":J
    .end local v14    # "s":Ljava/lang/String;
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_2
    const-string v18, "M"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 143
    const/4 v15, 0x2

    .line 144
    const/16 v17, 0x8

    .line 145
    const/16 v18, 0x7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction$DaysOfRepeat;->setRepeat(I)V

    goto/16 :goto_0

    .line 162
    .restart local v5    # "bean":Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;
    .restart local v8    # "dtstart":J
    .restart local v11    # "mTime":[Ljava/lang/String;
    :cond_3
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setHour(I)V

    .line 163
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setMinutes(I)V

    goto/16 :goto_1

    .line 181
    .restart local v4    # "alarm":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    .restart local v10    # "mDaysOfWeek":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_2
.end method


# virtual methods
.method public getDtstart(Ljava/lang/String;)J
    .locals 8
    .param p1, "start"    # Ljava/lang/String;

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 225
    const-wide/16 v2, 0x0

    .line 243
    :goto_0
    return-wide v2

    .line 227
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 228
    .local v0, "cal":Ljava/util/Calendar;
    const-wide/16 v2, 0x0

    .line 229
    .local v2, "dtStart":J
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 232
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v5, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 233
    .local v1, "dBegin":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 234
    const/16 v6, 0xb

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 235
    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 236
    const/16 v6, 0xd

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 237
    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 238
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 239
    .end local v1    # "dBegin":Ljava/util/Date;
    :catch_0
    move-exception v4

    .line 241
    .local v4, "e":Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public process(Ljava/lang/String;)V
    .locals 9
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;->getDtstart(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "dts":Ljava/lang/String;
    const-string v5, ""

    .line 60
    .local v5, "tts":Ljava/lang/String;
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->getAlarmListByDate(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 62
    .local v0, "d2":Ljava/util/List;, "Ljava/util/List<Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 63
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;->mContext:Landroid/content/Context;

    const v7, 0x7f08005e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 78
    :goto_0
    sget-object v6, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    .line 80
    return-void

    .line 65
    :cond_0
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 66
    .local v2, "number":I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;

    .line 68
    .local v3, "remind":Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v4, "text":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;->mContext:Landroid/content/Context;

    const v7, 0x7f08005d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v3}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->getHour()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;->mContext:Landroid/content/Context;

    const v7, 0x7f08005a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v3}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->getMinutes()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;->mContext:Landroid/content/Context;

    const v7, 0x7f08005b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;->mContext:Landroid/content/Context;

    const v7, 0x7f08005c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v3}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 46
    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;->mConceptMap:Ljava/util/HashMap;

    const-string v2, "CALENDARX"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;->mConceptMap:Ljava/util/HashMap;

    const-string v2, "CALENDARX"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    .local v0, "date":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;->computerDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;->process(Ljava/lang/String;)V

    .line 54
    .end local v0    # "date":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    .line 55
    return-void

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;->mParseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getSentence()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyApiAi(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
