.class public Lcom/ubtechinc/service/protocols/GetNewActionList;
.super Ljava/lang/Object;
.source "GetNewActionList.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private actionType:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field private languageType:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionType()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/ubtechinc/service/protocols/GetNewActionList;->actionType:I

    return v0
.end method

.method public getLanguageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/GetNewActionList;->languageType:Ljava/lang/String;

    return-object v0
.end method

.method public setActionType(I)V
    .locals 0
    .param p1, "actionType"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/ubtechinc/service/protocols/GetNewActionList;->actionType:I

    .line 45
    return-void
.end method

.method public setLanguageType(Ljava/lang/String;)V
    .locals 0
    .param p1, "languageType"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/GetNewActionList;->languageType:Ljava/lang/String;

    .line 37
    return-void
.end method
