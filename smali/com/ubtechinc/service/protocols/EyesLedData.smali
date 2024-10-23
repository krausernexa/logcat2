.class public Lcom/ubtechinc/service/protocols/EyesLedData;
.super Ljava/lang/Object;
.source "EyesLedData.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private mBright:B
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field private mColor:B
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field

.field private mLeftLed:B
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field private mRightLed:B
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field private mRunTime:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x6
    .end annotation
.end field

.field private nLightDownTime:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x5
    .end annotation
.end field

.field private nLightUpTime:I
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
.method public getPlayData()[B
    .locals 4

    .prologue
    const v3, 0xffff

    .line 115
    new-instance v1, Lcom/ubtechinc/tools/PacketData;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/ubtechinc/tools/PacketData;-><init>(I)V

    .line 117
    .local v1, "packetData":Lcom/ubtechinc/tools/PacketData;
    iget-byte v2, p0, Lcom/ubtechinc/service/protocols/EyesLedData;->mLeftLed:B

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putByte(B)V

    .line 119
    iget-byte v2, p0, Lcom/ubtechinc/service/protocols/EyesLedData;->mRightLed:B

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putByte(B)V

    .line 121
    iget-byte v2, p0, Lcom/ubtechinc/service/protocols/EyesLedData;->mBright:B

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putByte(B)V

    .line 123
    iget-byte v2, p0, Lcom/ubtechinc/service/protocols/EyesLedData;->mColor:B

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putByte(B)V

    .line 127
    iget v2, p0, Lcom/ubtechinc/service/protocols/EyesLedData;->nLightUpTime:I

    and-int/2addr v2, v3

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putShort_(Ljava/lang/Short;)V

    .line 131
    iget v2, p0, Lcom/ubtechinc/service/protocols/EyesLedData;->nLightDownTime:I

    and-int/2addr v2, v3

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putShort_(Ljava/lang/Short;)V

    .line 133
    iget v2, p0, Lcom/ubtechinc/service/protocols/EyesLedData;->mRunTime:I

    int-to-short v0, v2

    .line 134
    .local v0, "nTotalTime":S
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putShort_(Ljava/lang/Short;)V

    .line 136
    invoke-virtual {v1}, Lcom/ubtechinc/tools/PacketData;->getBuffer()[B

    move-result-object v2

    return-object v2
.end method

.method public getmBright()B
    .locals 1

    .prologue
    .line 70
    iget-byte v0, p0, Lcom/ubtechinc/service/protocols/EyesLedData;->mBright:B

    return v0
.end method

.method public getmColor()B
    .locals 1

    .prologue
    .line 78
    iget-byte v0, p0, Lcom/ubtechinc/service/protocols/EyesLedData;->mColor:B

    return v0
.end method

.method public getmLeftLed()B
    .locals 1

    .prologue
    .line 54
    iget-byte v0, p0, Lcom/ubtechinc/service/protocols/EyesLedData;->mLeftLed:B

    return v0
.end method

.method public getmRightLed()B
    .locals 1

    .prologue
    .line 62
    iget-byte v0, p0, Lcom/ubtechinc/service/protocols/EyesLedData;->mRightLed:B

    return v0
.end method

.method public getmRunTime()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/ubtechinc/service/protocols/EyesLedData;->mRunTime:I

    return v0
.end method

.method public getnLightDownTime()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/ubtechinc/service/protocols/EyesLedData;->nLightDownTime:I

    return v0
.end method

.method public getnLightUpTime()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/ubtechinc/service/protocols/EyesLedData;->nLightUpTime:I

    return v0
.end method

.method public setmBright(B)V
    .locals 0
    .param p1, "mBright"    # B

    .prologue
    .line 74
    iput-byte p1, p0, Lcom/ubtechinc/service/protocols/EyesLedData;->mBright:B

    .line 75
    return-void
.end method

.method public setmColor(B)V
    .locals 0
    .param p1, "mColor"    # B

    .prologue
    .line 82
    iput-byte p1, p0, Lcom/ubtechinc/service/protocols/EyesLedData;->mColor:B

    .line 83
    return-void
.end method

.method public setmLeftLed(B)V
    .locals 0
    .param p1, "mLeftLed"    # B

    .prologue
    .line 58
    iput-byte p1, p0, Lcom/ubtechinc/service/protocols/EyesLedData;->mLeftLed:B

    .line 59
    return-void
.end method

.method public setmRightLed(B)V
    .locals 0
    .param p1, "mRightLed"    # B

    .prologue
    .line 66
    iput-byte p1, p0, Lcom/ubtechinc/service/protocols/EyesLedData;->mRightLed:B

    .line 67
    return-void
.end method

.method public setmRunTime(I)V
    .locals 0
    .param p1, "mRunTime"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/ubtechinc/service/protocols/EyesLedData;->mRunTime:I

    .line 107
    return-void
.end method

.method public setnLightDownTime(I)V
    .locals 0
    .param p1, "nLightDownTime"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/ubtechinc/service/protocols/EyesLedData;->nLightDownTime:I

    .line 99
    return-void
.end method

.method public setnLightUpTime(I)V
    .locals 0
    .param p1, "nLightUpTime"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/ubtechinc/service/protocols/EyesLedData;->nLightUpTime:I

    .line 91
    return-void
.end method
