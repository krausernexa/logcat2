.class public Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;
.super Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;
.source "AlphaEvent.java"


# direct methods
.method public constructor <init>(Lcom/ubtechinc/alpha2serverlib/eventdispatch/IStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/ubtechinc/alpha2serverlib/eventdispatch/IStateListener;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;-><init>(Lcom/ubtechinc/alpha2serverlib/eventdispatch/IStateListener;)V

    .line 13
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-int v0, v0

    const v1, 0xf4240

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->mID:I

    .line 14
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->getmStateListener()Lcom/ubtechinc/alpha2serverlib/eventdispatch/IStateListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/IStateListener;->onEventPause(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;)V

    .line 24
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->getmStateListener()Lcom/ubtechinc/alpha2serverlib/eventdispatch/IStateListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/IStateListener;->onEventResume(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;)V

    .line 29
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->getmStateListener()Lcom/ubtechinc/alpha2serverlib/eventdispatch/IStateListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/IStateListener;->onEventStart(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;)V

    .line 19
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->getmStateListener()Lcom/ubtechinc/alpha2serverlib/eventdispatch/IStateListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/IStateListener;->onEventStop(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;)V

    .line 34
    return-void
.end method
