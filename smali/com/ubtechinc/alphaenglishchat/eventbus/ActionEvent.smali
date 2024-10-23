.class public Lcom/ubtechinc/alphaenglishchat/eventbus/ActionEvent;
.super Lcom/ubtechinc/alphaenglishchat/eventbus/abstractclass/BaseEvent;
.source "ActionEvent.java"


# static fields
.field public static final STATE_ACTIONING:I = 0x0

.field public static final STATE_IDLE:I = 0x1


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
    .line 24
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/eventbus/ActionEvent;->mState:I

    return v0
.end method

.method public setmState(I)V
    .locals 0
    .param p1, "mState"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/ubtechinc/alphaenglishchat/eventbus/ActionEvent;->mState:I

    .line 29
    return-void
.end method
