.class public Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;
.super Ljava/lang/Object;
.source "WeatherTime.java"


# instance fields
.field private day:I

.field private month:I

.field private time:I

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
    .line 24
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->day:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->month:I

    return v0
.end method

.method public getTime()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->time:I

    return v0
.end method

.method public getWeek()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->week:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->year:I

    return v0
.end method

.method public setDay(I)V
    .locals 0
    .param p1, "day"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->day:I

    .line 28
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "month"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->month:I

    .line 22
    return-void
.end method

.method public setTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->time:I

    .line 40
    return-void
.end method

.method public setWeek(I)V
    .locals 0
    .param p1, "week"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->week:I

    .line 34
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/WeatherTime;->year:I

    .line 16
    return-void
.end method
