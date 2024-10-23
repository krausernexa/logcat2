.class public Lcom/ubtechinc/service/model/ActionFileEntrity;
.super Ljava/lang/Object;
.source "ActionFileEntrity.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private actionFilePath:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field

.field private actionId:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field private actionName:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field private actionOriginalID:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x5
    .end annotation
.end field

.field private actionType:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field private downloadState:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x4
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
.method public getActionFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ubtechinc/service/model/ActionFileEntrity;->actionFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getActionId()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/ubtechinc/service/model/ActionFileEntrity;->actionId:I

    return v0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ubtechinc/service/model/ActionFileEntrity;->actionName:Ljava/lang/String;

    return-object v0
.end method

.method public getActionOriginalID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ubtechinc/service/model/ActionFileEntrity;->actionOriginalID:Ljava/lang/String;

    return-object v0
.end method

.method public getActionType()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/ubtechinc/service/model/ActionFileEntrity;->actionType:I

    return v0
.end method

.method public getDownloadState()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/ubtechinc/service/model/ActionFileEntrity;->downloadState:I

    return v0
.end method

.method public setActionFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionFilePath"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ubtechinc/service/model/ActionFileEntrity;->actionFilePath:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setActionId(I)V
    .locals 0
    .param p1, "actionId"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/ubtechinc/service/model/ActionFileEntrity;->actionId:I

    .line 43
    return-void
.end method

.method public setActionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/ubtechinc/service/model/ActionFileEntrity;->actionName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setActionOriginalID(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionOriginalID"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/ubtechinc/service/model/ActionFileEntrity;->actionOriginalID:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setActionType(I)V
    .locals 0
    .param p1, "actionType"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/ubtechinc/service/model/ActionFileEntrity;->actionType:I

    .line 51
    return-void
.end method

.method public setDownloadState(I)V
    .locals 0
    .param p1, "downloadState"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/ubtechinc/service/model/ActionFileEntrity;->downloadState:I

    .line 35
    return-void
.end method
