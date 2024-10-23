.class public Lcom/ubtechinc/service/protocols/AllMotoAngle;
.super Ljava/lang/Object;
.source "AllMotoAngle.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field m_nAngle1:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field m_nAngle10:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x9
    .end annotation
.end field

.field m_nAngle11:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xa
    .end annotation
.end field

.field m_nAngle12:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xb
    .end annotation
.end field

.field m_nAngle13:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xc
    .end annotation
.end field

.field m_nAngle14:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xd
    .end annotation
.end field

.field m_nAngle15:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xe
    .end annotation
.end field

.field m_nAngle16:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xf
    .end annotation
.end field

.field m_nAngle17:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x10
    .end annotation
.end field

.field m_nAngle18:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x11
    .end annotation
.end field

.field m_nAngle19:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x12
    .end annotation
.end field

.field m_nAngle2:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field m_nAngle20:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x13
    .end annotation
.end field

.field m_nAngle3:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field m_nAngle4:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field

.field m_nAngle5:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x4
    .end annotation
.end field

.field m_nAngle6:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x5
    .end annotation
.end field

.field m_nAngle7:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x6
    .end annotation
.end field

.field m_nAngle8:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x7
    .end annotation
.end field

.field m_nAngle9:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x8
    .end annotation
.end field

.field m_nTime:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x14
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAngle()[I
    .locals 3

    .prologue
    .line 72
    const/16 v1, 0x14

    new-array v0, v1, [I

    .line 74
    .local v0, "angle":[I
    const/4 v1, 0x0

    iget v2, p0, Lcom/ubtechinc/service/protocols/AllMotoAngle;->m_nAngle1:I

    aput v2, v0, v1

    .line 75
    const/4 v1, 0x1

    iget v2, p0, Lcom/ubtechinc/service/protocols/AllMotoAngle;->m_nAngle2:I

    aput v2, v0, v1

    .line 76
    const/4 v1, 0x2

    iget v2, p0, Lcom/ubtechinc/service/protocols/AllMotoAngle;->m_nAngle3:I

    aput v2, v0, v1

    .line 77
    const/4 v1, 0x3

    iget v2, p0, Lcom/ubtechinc/service/protocols/AllMotoAngle;->m_nAngle4:I

    aput v2, v0, v1

    .line 78
    const/4 v1, 0x4

    iget v2, p0, Lcom/ubtechinc/service/protocols/AllMotoAngle;->m_nAngle5:I

    aput v2, v0, v1

    .line 79
    const/4 v1, 0x5

    iget v2, p0, Lcom/ubtechinc/service/protocols/AllMotoAngle;->m_nAngle6:I

    aput v2, v0, v1

    .line 80
    const/4 v1, 0x6

    iget v2, p0, Lcom/ubtechinc/service/protocols/AllMotoAngle;->m_nAngle7:I

    aput v2, v0, v1

    .line 81
    const/4 v1, 0x7

    iget v2, p0, Lcom/ubtechinc/service/protocols/AllMotoAngle;->m_nAngle8:I

    aput v2, v0, v1

    .line 82
    const/16 v1, 0x8

    iget v2, p0, Lcom/ubtechinc/service/protocols/AllMotoAngle;->m_nAngle9:I

    aput v2, v0, v1

    .line 83
    const/16 v1, 0x9

    iget v2, p0, Lcom/ubtechinc/service/protocols/AllMotoAngle;->m_nAngle10:I

    aput v2, v0, v1

    .line 84
    const/16 v1, 0xa

    iget v2, p0, Lcom/ubtechinc/service/protocols/AllMotoAngle;->m_nAngle11:I

    aput v2, v0, v1

    .line 85
    const/16 v1, 0xb

    iget v2, p0, Lcom/ubtechinc/service/protocols/AllMotoAngle;->m_nAngle12:I

    aput v2, v0, v1

    .line 86
    const/16 v1, 0xc

    iget v2, p0, Lcom/ubtechinc/service/protocols/AllMotoAngle;->m_nAngle13:I

    aput v2, v0, v1

    .line 87
    const/16 v1, 0xd

    iget v2, p0, Lcom/ubtechinc/service/protocols/AllMotoAngle;->m_nAngle14:I

    aput v2, v0, v1

    .line 88
    const/16 v1, 0xe

    iget v2, p0, Lcom/ubtechinc/service/protocols/AllMotoAngle;->m_nAngle15:I

    aput v2, v0, v1

    .line 89
    const/16 v1, 0xf

    iget v2, p0, Lcom/ubtechinc/service/protocols/AllMotoAngle;->m_nAngle16:I

    aput v2, v0, v1

    .line 90
    const/16 v1, 0x10

    iget v2, p0, Lcom/ubtechinc/service/protocols/AllMotoAngle;->m_nAngle17:I

    aput v2, v0, v1

    .line 91
    const/16 v1, 0x11

    iget v2, p0, Lcom/ubtechinc/service/protocols/AllMotoAngle;->m_nAngle18:I

    aput v2, v0, v1

    .line 92
    const/16 v1, 0x12

    iget v2, p0, Lcom/ubtechinc/service/protocols/AllMotoAngle;->m_nAngle19:I

    aput v2, v0, v1

    .line 93
    const/16 v1, 0x13

    iget v2, p0, Lcom/ubtechinc/service/protocols/AllMotoAngle;->m_nAngle20:I

    aput v2, v0, v1

    .line 94
    return-object v0
.end method

.method public getM_nTime()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/ubtechinc/service/protocols/AllMotoAngle;->m_nTime:I

    return v0
.end method

.method public setM_nTime(I)V
    .locals 0
    .param p1, "m_nTime"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/ubtechinc/service/protocols/AllMotoAngle;->m_nTime:I

    .line 69
    return-void
.end method
