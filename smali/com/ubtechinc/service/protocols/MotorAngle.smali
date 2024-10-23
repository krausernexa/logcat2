.class public Lcom/ubtechinc/service/protocols/MotorAngle;
.super Ljava/lang/Object;
.source "MotorAngle.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private angel:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field private id:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field private time:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
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
.method public getAngel()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/ubtechinc/service/protocols/MotorAngle;->angel:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/ubtechinc/service/protocols/MotorAngle;->id:I

    return v0
.end method

.method public getTime()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/ubtechinc/service/protocols/MotorAngle;->time:I

    return v0
.end method

.method public setAngel(I)V
    .locals 0
    .param p1, "angel"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/ubtechinc/service/protocols/MotorAngle;->angel:I

    .line 51
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/ubtechinc/service/protocols/MotorAngle;->id:I

    .line 43
    return-void
.end method

.method public setTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/ubtechinc/service/protocols/MotorAngle;->time:I

    .line 35
    return-void
.end method
