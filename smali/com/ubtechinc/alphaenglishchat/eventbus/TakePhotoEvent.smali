.class public Lcom/ubtechinc/alphaenglishchat/eventbus/TakePhotoEvent;
.super Lcom/ubtechinc/alphaenglishchat/eventbus/abstractclass/BaseEvent;
.source "TakePhotoEvent.java"


# static fields
.field public static final STATE_PHOTO_END:I = 0x1

.field public static final STATE_PHOTO_START:I = 0x0

.field public static final STATE_SMARTCAMERA_END:I = 0x3

.field public static final STATE_SMARTCAMERA_START:I = 0x2


# instance fields
.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/eventbus/abstractclass/BaseEvent;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public getmState()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/eventbus/TakePhotoEvent;->mState:I

    return v0
.end method

.method public setmState(I)V
    .locals 0
    .param p1, "mState"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/ubtechinc/alphaenglishchat/eventbus/TakePhotoEvent;->mState:I

    .line 29
    return-void
.end method
