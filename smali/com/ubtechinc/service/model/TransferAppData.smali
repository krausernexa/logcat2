.class public Lcom/ubtechinc/service/model/TransferAppData;
.super Ljava/lang/Object;
.source "TransferAppData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


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

.field private packageName:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmd()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/ubtechinc/service/model/TransferAppData;->cmd:I

    return v0
.end method

.method public getDatas()[B
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ubtechinc/service/model/TransferAppData;->datas:[B

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ubtechinc/service/model/TransferAppData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setCmd(I)V
    .locals 0
    .param p1, "cmd"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/ubtechinc/service/model/TransferAppData;->cmd:I

    .line 40
    return-void
.end method

.method public setDatas([B)V
    .locals 0
    .param p1, "datas"    # [B

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ubtechinc/service/model/TransferAppData;->datas:[B

    .line 46
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/ubtechinc/service/model/TransferAppData;->packageName:Ljava/lang/String;

    .line 52
    return-void
.end method