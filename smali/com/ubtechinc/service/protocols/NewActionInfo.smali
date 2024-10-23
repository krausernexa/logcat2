.class public Lcom/ubtechinc/service/protocols/NewActionInfo;
.super Ljava/lang/Object;
.source "NewActionInfo.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private actionName:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field private actionType:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field private id:Ljava/lang/String;
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
.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/NewActionInfo;->actionName:Ljava/lang/String;

    return-object v0
.end method

.method public getActionType()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/ubtechinc/service/protocols/NewActionInfo;->actionType:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/NewActionInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setActionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/NewActionInfo;->actionName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setActionType(I)V
    .locals 0
    .param p1, "actionType"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/ubtechinc/service/protocols/NewActionInfo;->actionType:I

    .line 34
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/NewActionInfo;->id:Ljava/lang/String;

    .line 42
    return-void
.end method
