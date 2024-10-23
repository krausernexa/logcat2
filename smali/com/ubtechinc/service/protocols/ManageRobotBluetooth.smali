.class public Lcom/ubtechinc/service/protocols/ManageRobotBluetooth;
.super Ljava/lang/Object;
.source "ManageRobotBluetooth.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private code:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field private content:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field

.field private isSendByClient:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field private orderCmd:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/ubtechinc/service/protocols/ManageRobotBluetooth;->code:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/ManageRobotBluetooth;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderCmd()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/ubtechinc/service/protocols/ManageRobotBluetooth;->orderCmd:I

    return v0
.end method

.method public isSendByClient()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/ubtechinc/service/protocols/ManageRobotBluetooth;->isSendByClient:Z

    return v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/ubtechinc/service/protocols/ManageRobotBluetooth;->code:I

    .line 78
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/ManageRobotBluetooth;->content:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setOrderCmd(I)V
    .locals 0
    .param p1, "orderCmd"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/ubtechinc/service/protocols/ManageRobotBluetooth;->orderCmd:I

    .line 62
    return-void
.end method

.method public setSendByClient(Z)V
    .locals 0
    .param p1, "sendByClient"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/ubtechinc/service/protocols/ManageRobotBluetooth;->isSendByClient:Z

    .line 70
    return-void
.end method
