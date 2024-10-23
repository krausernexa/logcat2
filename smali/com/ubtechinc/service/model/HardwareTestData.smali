.class public Lcom/ubtechinc/service/model/HardwareTestData;
.super Ljava/lang/Object;
.source "HardwareTestData.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private cmd:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field private datas:[B
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
.method public getCmd()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/ubtechinc/service/model/HardwareTestData;->cmd:I

    return v0
.end method

.method public getDatas()[B
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ubtechinc/service/model/HardwareTestData;->datas:[B

    return-object v0
.end method

.method public setCmd(I)V
    .locals 0
    .param p1, "cmd"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/ubtechinc/service/model/HardwareTestData;->cmd:I

    .line 31
    return-void
.end method

.method public setDatas([B)V
    .locals 0
    .param p1, "datas"    # [B

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ubtechinc/service/model/HardwareTestData;->datas:[B

    .line 39
    return-void
.end method
