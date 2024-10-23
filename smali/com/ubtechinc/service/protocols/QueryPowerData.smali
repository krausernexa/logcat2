.class public Lcom/ubtechinc/service/protocols/QueryPowerData;
.super Ljava/lang/Object;
.source "QueryPowerData.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private mIsFromClient:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field private powerValue:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
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
.method public getPowerValue()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/ubtechinc/service/protocols/QueryPowerData;->powerValue:I

    return v0
.end method

.method public ismIsFromClient()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/ubtechinc/service/protocols/QueryPowerData;->mIsFromClient:Z

    return v0
.end method

.method public setPowerValue(I)V
    .locals 0
    .param p1, "powerValue"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/ubtechinc/service/protocols/QueryPowerData;->powerValue:I

    .line 31
    return-void
.end method

.method public setmIsFromClient(Z)V
    .locals 0
    .param p1, "mIsFromClient"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/ubtechinc/service/protocols/QueryPowerData;->mIsFromClient:Z

    .line 25
    return-void
.end method
