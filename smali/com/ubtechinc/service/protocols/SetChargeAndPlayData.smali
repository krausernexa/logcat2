.class public Lcom/ubtechinc/service/protocols/SetChargeAndPlayData;
.super Ljava/lang/Object;
.source "SetChargeAndPlayData.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private mIsFromClient:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field private mIsOpen:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field private mIsSetting:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field private mSetOpen:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ismIsFromClient()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/ubtechinc/service/protocols/SetChargeAndPlayData;->mIsFromClient:Z

    return v0
.end method

.method public ismIsOpen()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/ubtechinc/service/protocols/SetChargeAndPlayData;->mIsOpen:Z

    return v0
.end method

.method public ismIsSetting()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/ubtechinc/service/protocols/SetChargeAndPlayData;->mIsSetting:Z

    return v0
.end method

.method public ismSetOpen()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/ubtechinc/service/protocols/SetChargeAndPlayData;->mSetOpen:Z

    return v0
.end method

.method public setmIsFromClient(Z)V
    .locals 0
    .param p1, "mIsFromClient"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/ubtechinc/service/protocols/SetChargeAndPlayData;->mIsFromClient:Z

    .line 32
    return-void
.end method

.method public setmIsOpen(Z)V
    .locals 0
    .param p1, "mIsOpen"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/ubtechinc/service/protocols/SetChargeAndPlayData;->mIsOpen:Z

    .line 48
    return-void
.end method

.method public setmIsSetting(Z)V
    .locals 0
    .param p1, "mIsSetting"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/ubtechinc/service/protocols/SetChargeAndPlayData;->mIsSetting:Z

    .line 40
    return-void
.end method

.method public setmSetOpen(Z)V
    .locals 0
    .param p1, "mSetOpen"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/ubtechinc/service/protocols/SetChargeAndPlayData;->mSetOpen:Z

    .line 56
    return-void
.end method
