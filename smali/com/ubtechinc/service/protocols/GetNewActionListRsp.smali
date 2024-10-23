.class public Lcom/ubtechinc/service/protocols/GetNewActionListRsp;
.super Ljava/lang/Object;
.source "GetNewActionListRsp.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private actionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/service/protocols/NewActionInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field private isOldVersion:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubtechinc/service/protocols/GetNewActionListRsp;->isOldVersion:Z

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/service/protocols/GetNewActionListRsp;->actionList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/service/protocols/NewActionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/GetNewActionListRsp;->actionList:Ljava/util/List;

    return-object v0
.end method

.method public isOldVersion()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/ubtechinc/service/protocols/GetNewActionListRsp;->isOldVersion:Z

    return v0
.end method

.method public setActionList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/service/protocols/NewActionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "actionList":Ljava/util/List;, "Ljava/util/List<Lcom/ubtechinc/service/protocols/NewActionInfo;>;"
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/GetNewActionListRsp;->actionList:Ljava/util/List;

    .line 32
    return-void
.end method

.method public setOldVersion(Z)V
    .locals 0
    .param p1, "oldVersion"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/ubtechinc/service/protocols/GetNewActionListRsp;->isOldVersion:Z

    .line 40
    return-void
.end method
