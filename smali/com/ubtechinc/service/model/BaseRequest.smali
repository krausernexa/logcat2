.class public Lcom/ubtechinc/service/model/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private cmd:S
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmd()S
    .locals 1

    .prologue
    .line 21
    iget-short v0, p0, Lcom/ubtechinc/service/model/BaseRequest;->cmd:S

    return v0
.end method

.method public setCmd(S)V
    .locals 0
    .param p1, "cmd"    # S

    .prologue
    .line 25
    iput-short p1, p0, Lcom/ubtechinc/service/model/BaseRequest;->cmd:S

    .line 26
    return-void
.end method
