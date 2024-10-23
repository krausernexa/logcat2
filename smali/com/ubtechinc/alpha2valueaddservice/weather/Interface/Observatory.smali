.class public abstract Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;
.super Ljava/lang/Object;
.source "Observatory.java"


# instance fields
.field public weatherResultListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCurrentWeatherData(Ljava/lang/String;)V
.end method

.method public abstract getFiveDayWeatherData(Ljava/lang/String;Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;Ljava/lang/String;)V
.end method

.method public registerResultListener(Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;->weatherResultListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;->weatherResultListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_0
    return-void
.end method

.method public unRegisterResultListener(Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;->weatherResultListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method
