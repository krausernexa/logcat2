.class public Lcom/ubtechinc/service/protocols/MotorSocket;
.super Ljava/lang/Object;
.source "MotorSocket.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private cmd:B
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field private param:[B
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
.method public getCmd()B
    .locals 1

    .prologue
    .line 26
    iget-byte v0, p0, Lcom/ubtechinc/service/protocols/MotorSocket;->cmd:B

    return v0
.end method

.method public getParam()[B
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/MotorSocket;->param:[B

    return-object v0
.end method

.method public setCmd(B)V
    .locals 0
    .param p1, "cmd"    # B

    .prologue
    .line 30
    iput-byte p1, p0, Lcom/ubtechinc/service/protocols/MotorSocket;->cmd:B

    .line 31
    return-void
.end method

.method public setParam([B)V
    .locals 0
    .param p1, "param"    # [B

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/MotorSocket;->param:[B

    .line 39
    return-void
.end method
