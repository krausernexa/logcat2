.class public Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;
.super Ljava/lang/Object;
.source "StandardTime.java"


# instance fields
.field private day:I

.field private hour:I

.field private minute:I

.field private month:I

.field private second:I

.field private week:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->day:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->hour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->minute:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->month:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->second:I

    return v0
.end method

.method public getWeek()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->week:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->year:I

    return v0
.end method

.method public setDay(I)V
    .locals 0
    .param p1, "day"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->day:I

    .line 30
    return-void
.end method

.method public setHour(I)V
    .locals 0
    .param p1, "hour"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->hour:I

    .line 42
    return-void
.end method

.method public setMinute(I)V
    .locals 0
    .param p1, "minute"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->minute:I

    .line 48
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "month"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->month:I

    .line 24
    return-void
.end method

.method public setSecond(I)V
    .locals 0
    .param p1, "second"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->second:I

    .line 54
    return-void
.end method

.method public setWeek(I)V
    .locals 0
    .param p1, "week"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->week:I

    .line 36
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->year:I

    .line 18
    return-void
.end method
