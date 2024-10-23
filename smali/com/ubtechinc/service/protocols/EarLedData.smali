.class public Lcom/ubtechinc/service/protocols/EarLedData;
.super Ljava/lang/Object;
.source "EarLedData.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private mBright:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field

.field private mLedDownTime:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x5
    .end annotation
.end field

.field private mLedUpTime:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x4
    .end annotation
.end field

.field private mLeftLed:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field private mRightLed:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field private mRunTime:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
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

    .line 99
    new-instance v1, Lcom/ubtechinc/tools/PacketData;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/ubtechinc/tools/PacketData;-><init>(I)V

    .line 101
    .local v1, "packetData":Lcom/ubtechinc/tools/PacketData;
    iget v2, p0, Lcom/ubtechinc/service/protocols/EarLedData;->mLeftLed:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putByte(B)V

    .line 103
    iget v2, p0, Lcom/ubtechinc/service/protocols/EarLedData;->mRightLed:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putByte(B)V

    .line 105
    iget v2, p0, Lcom/ubtechinc/service/protocols/EarLedData;->mBright:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putByte(B)V

    .line 108
    iget v2, p0, Lcom/ubtechinc/service/protocols/EarLedData;->mLedUpTime:I

    and-int/2addr v2, v3

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putShort_(Ljava/lang/Short;)V

    .line 110
    iget v2, p0, Lcom/ubtechinc/service/protocols/EarLedData;->mLedDownTime:I

    and-int/2addr v2, v3

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putShort_(Ljava/lang/Short;)V

    .line 113
    iget v2, p0, Lcom/ubtechinc/service/protocols/EarLedData;->mRunTime:I

    int-to-short v0, v2

    .line 114
    .local v0, "nTotalTime":S
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putShort_(Ljava/lang/Short;)V

    .line 116
    invoke-virtual {v1}, Lcom/ubtechinc/tools/PacketData;->getBuffer()[B

    move-result-object v2

    return-object v2
.end method

.method public getmBright()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/ubtechinc/service/protocols/EarLedData;->mBright:I

    return v0
.end method

.method public getmLedDownTime()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/ubtechinc/service/protocols/EarLedData;->mLedDownTime:I

    return v0
.end method

.method public getmLedUpTime()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/ubtechinc/service/protocols/EarLedData;->mLedUpTime:I

    return v0
.end method

.method public getmLeftLed()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/ubtechinc/service/protocols/EarLedData;->mLeftLed:I

    return v0
.end method

.method public getmRightLed()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/ubtechinc/service/protocols/EarLedData;->mRightLed:I

    return v0
.end method

.method public getmRunTime()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/ubtechinc/service/protocols/EarLedData;->mRunTime:I

    return v0
.end method

.method public setmBright(I)V
    .locals 0
    .param p1, "mBright"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/ubtechinc/service/protocols/EarLedData;->mBright:I

    .line 79
    return-void
.end method

.method public setmLedDownTime(I)V
    .locals 0
    .param p1, "mLedDownTime"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/ubtechinc/service/protocols/EarLedData;->mLedDownTime:I

    .line 91
    return-void
.end method

.method public setmLedUpTime(I)V
    .locals 0
    .param p1, "mLedUpTime"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/ubtechinc/service/protocols/EarLedData;->mLedUpTime:I

    .line 85
    return-void
.end method

.method public setmLeftLed(I)V
    .locals 0
    .param p1, "mLeftLed"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/ubtechinc/service/protocols/EarLedData;->mLeftLed:I

    .line 67
    return-void
.end method

.method public setmRightLed(I)V
    .locals 0
    .param p1, "mRightLed"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/ubtechinc/service/protocols/EarLedData;->mRightLed:I

    .line 73
    return-void
.end method

.method public setmRunTime(I)V
    .locals 0
    .param p1, "mRunTime"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/ubtechinc/service/protocols/EarLedData;->mRunTime:I

    .line 55
    return-void
.end method
