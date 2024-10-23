.class public Lcom/ubtechinc/service/protocols/SetRTCTimeData;
.super Ljava/lang/Object;
.source "SetRTCTimeData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1e1b4abf8568090aL


# instance fields
.field private day:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field private hour:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x4
    .end annotation
.end field

.field private minute:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x5
    .end annotation
.end field

.field private month:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field private second:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x6
    .end annotation
.end field

.field private timeZone:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x7
    .end annotation
.end field

.field private week:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field

.field private year:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSerialversionuid()J
    .locals 2

    .prologue
    .line 80
    const-wide v0, 0x1e1b4abf8568090aL

    return-wide v0
.end method


# virtual methods
.method public getDay()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/ubtechinc/service/protocols/SetRTCTimeData;->day:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/ubtechinc/service/protocols/SetRTCTimeData;->hour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/ubtechinc/service/protocols/SetRTCTimeData;->minute:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/ubtechinc/service/protocols/SetRTCTimeData;->month:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/ubtechinc/service/protocols/SetRTCTimeData;->second:I

    return v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/SetRTCTimeData;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getWeek()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/ubtechinc/service/protocols/SetRTCTimeData;->week:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/ubtechinc/service/protocols/SetRTCTimeData;->year:I

    return v0
.end method

.method public setDay(I)V
    .locals 0
    .param p1, "day"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/ubtechinc/service/protocols/SetRTCTimeData;->day:I

    .line 54
    return-void
.end method

.method public setHour(I)V
    .locals 0
    .param p1, "hour"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/ubtechinc/service/protocols/SetRTCTimeData;->hour:I

    .line 66
    return-void
.end method

.method public setMinute(I)V
    .locals 0
    .param p1, "minute"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/ubtechinc/service/protocols/SetRTCTimeData;->minute:I

    .line 72
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "month"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/ubtechinc/service/protocols/SetRTCTimeData;->month:I

    .line 48
    return-void
.end method

.method public setSecond(I)V
    .locals 0
    .param p1, "second"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/ubtechinc/service/protocols/SetRTCTimeData;->second:I

    .line 78
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/SetRTCTimeData;->timeZone:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setWeek(I)V
    .locals 0
    .param p1, "week"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/ubtechinc/service/protocols/SetRTCTimeData;->week:I

    .line 60
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/ubtechinc/service/protocols/SetRTCTimeData;->year:I

    .line 42
    return-void
.end method
