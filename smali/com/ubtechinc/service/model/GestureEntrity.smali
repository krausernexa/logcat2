.class public Lcom/ubtechinc/service/model/GestureEntrity;
.super Lcom/ubtechinc/service/model/base/BaseEntrity;
.source "GestureEntrity.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private actionParam:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field private direction:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field private type:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ubtechinc/service/model/base/BaseEntrity;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ubtechinc/service/model/GestureEntrity;->actionParam:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/ubtechinc/service/model/GestureEntrity;->direction:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/ubtechinc/service/model/GestureEntrity;->type:I

    return v0
.end method

.method public setActionParam(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionParam"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ubtechinc/service/model/GestureEntrity;->actionParam:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/ubtechinc/service/model/GestureEntrity;->direction:I

    .line 39
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/ubtechinc/service/model/GestureEntrity;->type:I

    .line 47
    return-void
.end method
