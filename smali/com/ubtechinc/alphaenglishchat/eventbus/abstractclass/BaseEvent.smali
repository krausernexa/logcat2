.class public abstract Lcom/ubtechinc/alphaenglishchat/eventbus/abstractclass/BaseEvent;
.super Ljava/lang/Object;
.source "BaseEvent.java"


# instance fields
.field private mCmdID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getmCmdID()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/eventbus/abstractclass/BaseEvent;->mCmdID:I

    return v0
.end method

.method public setmCmdID(I)V
    .locals 0
    .param p1, "mCmdID"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/ubtechinc/alphaenglishchat/eventbus/abstractclass/BaseEvent;->mCmdID:I

    .line 24
    return-void
.end method
