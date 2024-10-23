.class public Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;
.super Ljava/lang/Thread;
.source "Forcast5Action.java"


# static fields
.field private static final DATE_INCREMENT:I = 0x1

.field private static final DAY_OF_WEEK:I = 0x0

.field private static final TIME_INCREMENT:I = 0x2


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

.field private mParseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

.field private observatory:Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;


# direct methods
.method public constructor <init>(Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V
    .locals 1
    .param p1, "observatory"    # Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;
    .param p2, "parseResult"    # Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->observatory:Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;

    .line 35
    iput-object p2, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->mParseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .line 36
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->mParseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->mConceptMap:Ljava/util/HashMap;

    .line 37
    return-void
.end method

.method private computeTime(II)Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;
    .locals 13
    .param p1, "increment"    # I
    .param p2, "week"    # I

    .prologue
    const/4 v12, -0x1

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 120
    .local v6, "time":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 121
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 122
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 123
    .local v10, "year":I
    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 124
    .local v5, "month":I
    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 125
    .local v1, "day":I
    const/16 v11, 0xa

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 126
    .local v2, "hour":I
    const/16 v11, 0xc

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 127
    .local v4, "minute":I
    const/4 v11, 0x7

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 129
    .local v9, "weekDay":I
    add-int/lit8 v5, v5, 0x1

    .line 130
    new-instance v8, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;

    invoke-direct {v8}, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;-><init>()V

    .line 131
    .local v8, "weatherTime":Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;
    if-le p1, v12, :cond_1

    .line 132
    invoke-virtual {v8, v10}, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->setYear(I)V

    .line 133
    invoke-virtual {v8, v5}, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->setMonth(I)V

    .line 134
    add-int v11, v1, p1

    const/16 v12, 0x1f

    if-ge v11, v12, :cond_0

    .line 135
    add-int v11, v1, p1

    invoke-virtual {v8, v11}, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->setDay(I)V

    .line 149
    :cond_0
    :goto_0
    return-object v8

    .line 137
    :cond_1
    if-le p2, v12, :cond_0

    .line 138
    invoke-virtual {v8, v10}, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->setYear(I)V

    .line 139
    invoke-virtual {v8, v5}, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->setMonth(I)V

    .line 140
    if-le p2, v9, :cond_2

    .line 141
    sub-int v3, p2, v9

    .line 142
    .local v3, "incre":I
    add-int v11, v1, v3

    invoke-virtual {v8, v11}, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->setDay(I)V

    goto :goto_0

    .line 144
    .end local v3    # "incre":I
    :cond_2
    rsub-int/lit8 v11, v9, 0x7

    add-int v3, p2, v11

    .line 145
    .restart local v3    # "incre":I
    add-int v11, v1, v3

    invoke-virtual {v8, v11}, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->setDay(I)V

    .line 146
    invoke-virtual {v8, p2}, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->setWeek(I)V

    goto :goto_0
.end method

.method private createWeatherTime(Ljava/lang/String;)Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;
    .locals 14
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v10, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;

    invoke-direct {v10}, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;-><init>()V

    .line 154
    .local v10, "weatherTime":Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;
    const/4 v8, -0x1

    .line 155
    .local v8, "monthValue":I
    const/4 v4, -0x1

    .line 156
    .local v4, "dayValue":I
    const-string v13, "MONTH"

    invoke-direct {p0, p1, v13}, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->parseValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 157
    .local v9, "value":Ljava/lang/String;
    if-eqz v9, :cond_0

    const-string v13, ""

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 158
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 160
    :cond_0
    const-string v13, "DAY"

    invoke-direct {p0, p1, v13}, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->parseValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 161
    if-eqz v9, :cond_1

    const-string v13, ""

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 162
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 165
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 167
    .local v2, "currTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 168
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 169
    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 170
    .local v12, "year":I
    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 171
    .local v7, "month":I
    const/4 v13, 0x5

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 172
    .local v1, "day":I
    const/16 v13, 0xa

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 173
    .local v5, "hour":I
    const/16 v13, 0xc

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 174
    .local v6, "minute":I
    const/4 v13, 0x7

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 175
    .local v11, "weekDay":I
    const/4 v13, -0x1

    if-le v8, v13, :cond_3

    .line 176
    const/4 v13, -0x1

    if-le v4, v13, :cond_2

    .line 177
    invoke-virtual {v10, v12}, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->setYear(I)V

    .line 178
    invoke-virtual {v10, v8}, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->setMonth(I)V

    .line 179
    invoke-virtual {v10, v4}, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->setDay(I)V

    .line 194
    :goto_0
    return-object v10

    .line 181
    :cond_2
    invoke-virtual {v10, v12}, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->setYear(I)V

    .line 182
    invoke-virtual {v10, v8}, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->setMonth(I)V

    .line 183
    invoke-virtual {v10, v1}, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->setDay(I)V

    goto :goto_0

    .line 186
    :cond_3
    const/4 v13, -0x1

    if-le v4, v13, :cond_4

    .line 187
    invoke-virtual {v10, v12}, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->setYear(I)V

    .line 188
    invoke-virtual {v10, v7}, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->setMonth(I)V

    .line 189
    invoke-virtual {v10, v4}, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->setDay(I)V

    goto :goto_0

    .line 191
    :cond_4
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private getDay(Ljava/lang/String;)I
    .locals 6
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 98
    const-string v4, "("

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 99
    .local v1, "indexStart":I
    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 100
    .local v2, "indexStop":I
    const/4 v0, -0x1

    .line 101
    .local v0, "day":I
    if-le v1, v5, :cond_0

    if-le v2, v5, :cond_0

    if-ge v1, v2, :cond_0

    .line 102
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "number":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 105
    .end local v3    # "number":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private getTime(Ljava/lang/String;)Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;
    .locals 4
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 75
    const/4 v1, 0x0

    .line 77
    .local v1, "weatherTime":Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;
    const-string v2, "DAY_OF_WEEK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->getDay(Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, "day":I
    if-le v0, v3, :cond_0

    .line 80
    add-int/lit8 v2, v0, -0x1

    invoke-direct {p0, v3, v2}, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->computeTime(II)Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;

    move-result-object v1

    .line 94
    .end local v0    # "day":I
    :cond_0
    :goto_0
    return-object v1

    .line 82
    :cond_1
    const-string v2, "INCREMENT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->getDay(Ljava/lang/String;)I

    move-result v0

    .line 84
    .restart local v0    # "day":I
    if-le v0, v3, :cond_0

    .line 85
    invoke-direct {p0, v0, v3}, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->computeTime(II)Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;

    move-result-object v1

    goto :goto_0

    .line 87
    .end local v0    # "day":I
    :cond_2
    const-string v2, "_TIMEINCREMENT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    const-string v2, "DAY"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->createWeatherTime(Ljava/lang/String;)Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;

    move-result-object v1

    goto :goto_0

    .line 91
    :cond_3
    const-string v2, "HOUR"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private parseValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "timeType"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 199
    .local v1, "start":I
    const/4 v0, 0x0

    .line 200
    .local v0, "end":I
    const/4 v2, 0x0

    .line 201
    .local v2, "value":Ljava/lang/String;
    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    .line 202
    const-string v3, "("

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 203
    const-string v3, ")"

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 204
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 207
    :cond_0
    return-object v2
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 41
    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->mConceptMap:Ljava/util/HashMap;

    const-string v7, "CITY"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->mConceptMap:Ljava/util/HashMap;

    const-string v7, "CALENDARX"

    .line 43
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 44
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->mConceptMap:Ljava/util/HashMap;

    const-string v7, "CITY"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    .local v0, "cityName":Ljava/lang/String;
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->mConceptMap:Ljava/util/HashMap;

    const-string v7, "CALENDARX"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 46
    .local v4, "time":Ljava/lang/String;
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->mConceptMap:Ljava/util/HashMap;

    const-string v7, "WEATHER_CONDITION"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 47
    .local v5, "weatherCondition":Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 48
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cityName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    const/4 v3, 0x0

    .line 51
    .local v3, "standardTime":Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;
    const/4 v6, 0x1

    :try_start_1
    invoke-static {v4, v6}, Lcom/ubtechinc/alphaenglishchat/nuance/ComputerStandardTime;->computer(Ljava/lang/String;I)Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 55
    :goto_0
    :try_start_2
    const-string v6, "ok."

    invoke-static {v6}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyApiAi(Ljava/lang/String;)V

    .line 56
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->observatory:Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;

    invoke-virtual {v6, v0, v3, v5}, Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;->getFiveDayWeatherData(Ljava/lang/String;Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;Ljava/lang/String;)V

    .line 71
    .end local v0    # "cityName":Ljava/lang/String;
    .end local v3    # "standardTime":Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;
    .end local v4    # "time":Ljava/lang/String;
    .end local v5    # "weatherCondition":Ljava/lang/String;
    :cond_0
    :goto_1
    monitor-exit p0

    .line 72
    return-void

    .line 52
    .restart local v0    # "cityName":Ljava/lang/String;
    .restart local v3    # "standardTime":Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;
    .restart local v4    # "time":Ljava/lang/String;
    .restart local v5    # "weatherCondition":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v0    # "cityName":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "standardTime":Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;
    .end local v4    # "time":Ljava/lang/String;
    .end local v5    # "weatherCondition":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 58
    .restart local v0    # "cityName":Ljava/lang/String;
    .restart local v4    # "time":Ljava/lang/String;
    .restart local v5    # "weatherCondition":Ljava/lang/String;
    :cond_1
    :try_start_3
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->mParseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v6}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getSentence()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyApiAi(Ljava/lang/String;)V

    goto :goto_1

    .line 60
    .end local v0    # "cityName":Ljava/lang/String;
    .end local v4    # "time":Ljava/lang/String;
    .end local v5    # "weatherCondition":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->mConceptMap:Ljava/util/HashMap;

    const-string v7, "CITY"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 61
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->observatory:Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;

    iget-object v6, v6, Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;->weatherResultListenerList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;

    .line 62
    .local v2, "item":Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;
    const-string v7, "You forget to say time."

    invoke-interface {v2, v7}, Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;->onResultFail(Ljava/lang/String;)V

    goto :goto_2

    .line 64
    .end local v2    # "item":Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;
    :cond_3
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->mConceptMap:Ljava/util/HashMap;

    const-string v7, "CALENDARX"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 65
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->observatory:Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;

    iget-object v6, v6, Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;->weatherResultListenerList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;

    .line 66
    .restart local v2    # "item":Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;
    const-string v7, "You forget to say the city."

    invoke-interface {v2, v7}, Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;->onResultFail(Ljava/lang/String;)V

    goto :goto_3

    .line 69
    .end local v2    # "item":Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;
    :cond_4
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->mParseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v6}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getSentence()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyApiAi(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
