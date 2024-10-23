.class public Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;
.super Lcom/ubtechinc/alphaenglishchat/eventbus/abstractclass/BaseEvent;
.source "MusicEvent.java"


# static fields
.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_PLAYING:I


# instance fields
.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/eventbus/abstractclass/BaseEvent;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public getmState()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;->mState:I

    return v0
.end method

.method public setmState(I)V
    .locals 0
    .param p1, "mState"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;->mState:I

    .line 30
    return-void
.end method
