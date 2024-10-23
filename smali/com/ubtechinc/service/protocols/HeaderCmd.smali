.class public Lcom/ubtechinc/service/protocols/HeaderCmd;
.super Ljava/lang/Object;
.source "HeaderCmd.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private msgBuf:[B
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field private msgID:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "buf"    # [B

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/ubtechinc/service/protocols/HeaderCmd;->msgID:I

    .line 37
    iput-object p2, p0, Lcom/ubtechinc/service/protocols/HeaderCmd;->msgBuf:[B

    .line 38
    return-void
.end method


# virtual methods
.method public getMsgBuf()[B
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/HeaderCmd;->msgBuf:[B

    return-object v0
.end method

.method public getMsgID()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/ubtechinc/service/protocols/HeaderCmd;->msgID:I

    return v0
.end method

.method public setMsgBuf([B)V
    .locals 0
    .param p1, "msgBuf"    # [B

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/HeaderCmd;->msgBuf:[B

    .line 54
    return-void
.end method

.method public setMsgID(I)V
    .locals 0
    .param p1, "msgID"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/ubtechinc/service/protocols/HeaderCmd;->msgID:I

    .line 46
    return-void
.end method
