.class public Lcom/ubtechinc/service/protocols/CustomMessage;
.super Ljava/lang/Object;
.source "CustomMessage.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field appID:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field msg:[B
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/CustomMessage;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()[B
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/CustomMessage;->msg:[B

    return-object v0
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0
    .param p1, "appID"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/CustomMessage;->appID:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setMsg([B)V
    .locals 0
    .param p1, "msg"    # [B

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/CustomMessage;->msg:[B

    .line 38
    return-void
.end method
