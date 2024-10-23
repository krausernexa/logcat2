.class public abstract Lai/api/DefaultAIListener;
.super Ljava/lang/Object;
.source "DefaultAIListener.java"

# interfaces
.implements Lai/api/AIListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioLevel(F)V
    .locals 0
    .param p1, "level"    # F

    .prologue
    .line 32
    return-void
.end method

.method public onListeningFinished()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public onListeningStarted()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
