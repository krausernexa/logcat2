.class public Lcom/ubtechinc/service/protocols/CtrlAllRobotInfo;
.super Ljava/lang/Object;
.source "CtrlAllRobotInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x220c76db79b10a68L


# instance fields
.field private actionName:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field private mBroadcastIndex:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field private reserve:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
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
.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/CtrlAllRobotInfo;->actionName:Ljava/lang/String;

    return-object v0
.end method

.method public getReserve()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/CtrlAllRobotInfo;->reserve:Ljava/lang/String;

    return-object v0
.end method

.method public getmBroadcastIndex()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/ubtechinc/service/protocols/CtrlAllRobotInfo;->mBroadcastIndex:I

    return v0
.end method

.method public setActionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/CtrlAllRobotInfo;->actionName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setReserve(Ljava/lang/String;)V
    .locals 0
    .param p1, "reserve"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/CtrlAllRobotInfo;->reserve:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setmBroadcastIndex(I)V
    .locals 0
    .param p1, "mBroadcastIndex"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/ubtechinc/service/protocols/CtrlAllRobotInfo;->mBroadcastIndex:I

    .line 45
    return-void
.end method
