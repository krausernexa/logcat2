.class public Lcom/ubtechinc/service/model/BaseResponse;
.super Ljava/lang/Object;
.source "BaseResponse.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private result:S
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()S
    .locals 1

    .prologue
    .line 22
    iget-short v0, p0, Lcom/ubtechinc/service/model/BaseResponse;->result:S

    return v0
.end method

.method public setResult(S)V
    .locals 0
    .param p1, "result"    # S

    .prologue
    .line 26
    iput-short p1, p0, Lcom/ubtechinc/service/model/BaseResponse;->result:S

    .line 27
    return-void
.end method
