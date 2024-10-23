.class public Lcom/ubtechinc/developer/DeveloperEyesLedData;
.super Ljava/lang/Object;
.source "DeveloperEyesLedData.java"


# instance fields
.field private mBright:B

.field private mColor:B

.field private mLeftLed:B

.field private mRightLed:B

.field private mRunTime:I

.field private nLightDownTime:I

.field private nLightUpTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlayData()[B
    .locals 4

    .prologue
    const v3, 0xffff

    .line 105
    new-instance v1, Lcom/ubtechinc/tools/PacketData;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/ubtechinc/tools/PacketData;-><init>(I)V

    .line 107
    .local v1, "packetData":Lcom/ubtechinc/tools/PacketData;
    iget-byte v2, p0, Lcom/ubtechinc/developer/DeveloperEyesLedData;->mLeftLed:B

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putByte(B)V

    .line 109
    iget-byte v2, p0, Lcom/ubtechinc/developer/DeveloperEyesLedData;->mRightLed:B

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putByte(B)V

    .line 111
    iget-byte v2, p0, Lcom/ubtechinc/developer/DeveloperEyesLedData;->mBright:B

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putByte(B)V

    .line 113
    iget-byte v2, p0, Lcom/ubtechinc/developer/DeveloperEyesLedData;->mColor:B

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putByte(B)V

    .line 117
    iget v2, p0, Lcom/ubtechinc/developer/DeveloperEyesLedData;->nLightUpTime:I

    and-int/2addr v2, v3

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putShort_(Ljava/lang/Short;)V

    .line 121
    iget v2, p0, Lcom/ubtechinc/developer/DeveloperEyesLedData;->nLightDownTime:I

    and-int/2addr v2, v3

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putShort_(Ljava/lang/Short;)V

    .line 123
    iget v2, p0, Lcom/ubtechinc/developer/DeveloperEyesLedData;->mRunTime:I

    int-to-short v0, v2

    .line 124
    .local v0, "nTotalTime":S
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putShort_(Ljava/lang/Short;)V

    .line 126
    invoke-virtual {v1}, Lcom/ubtechinc/tools/PacketData;->getBuffer()[B

    move-result-object v2

    return-object v2
.end method

.method public getmBright()B
    .locals 1

    .prologue
    .line 60
    iget-byte v0, p0, Lcom/ubtechinc/developer/DeveloperEyesLedData;->mBright:B

    return v0
.end method

.method public getmColor()B
    .locals 1

    .prologue
    .line 68
    iget-byte v0, p0, Lcom/ubtechinc/developer/DeveloperEyesLedData;->mColor:B

    return v0
.end method

.method public getmLeftLed()B
    .locals 1

    .prologue
    .line 44
    iget-byte v0, p0, Lcom/ubtechinc/developer/DeveloperEyesLedData;->mLeftLed:B

    return v0
.end method

.method public getmRightLed()B
    .locals 1

    .prologue
    .line 52
    iget-byte v0, p0, Lcom/ubtechinc/developer/DeveloperEyesLedData;->mRightLed:B

    return v0
.end method

.method public getmRunTime()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/ubtechinc/developer/DeveloperEyesLedData;->mRunTime:I

    return v0
.end method

.method public getnLightDownTime()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/ubtechinc/developer/DeveloperEyesLedData;->nLightDownTime:I

    return v0
.end method

.method public getnLightUpTime()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/ubtechinc/developer/DeveloperEyesLedData;->nLightUpTime:I

    return v0
.end method

.method public setmBright(B)V
    .locals 0
    .param p1, "mBright"    # B

    .prologue
    .line 64
    iput-byte p1, p0, Lcom/ubtechinc/developer/DeveloperEyesLedData;->mBright:B

    .line 65
    return-void
.end method

.method public setmColor(B)V
    .locals 0
    .param p1, "mColor"    # B

    .prologue
    .line 72
    iput-byte p1, p0, Lcom/ubtechinc/developer/DeveloperEyesLedData;->mColor:B

    .line 73
    return-void
.end method

.method public setmLeftLed(B)V
    .locals 0
    .param p1, "mLeftLed"    # B

    .prologue
    .line 48
    iput-byte p1, p0, Lcom/ubtechinc/developer/DeveloperEyesLedData;->mLeftLed:B

    .line 49
    return-void
.end method

.method public setmRightLed(B)V
    .locals 0
    .param p1, "mRightLed"    # B

    .prologue
    .line 56
    iput-byte p1, p0, Lcom/ubtechinc/developer/DeveloperEyesLedData;->mRightLed:B

    .line 57
    return-void
.end method

.method public setmRunTime(I)V
    .locals 0
    .param p1, "mRunTime"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/ubtechinc/developer/DeveloperEyesLedData;->mRunTime:I

    .line 97
    return-void
.end method

.method public setnLightDownTime(I)V
    .locals 0
    .param p1, "nLightDownTime"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/ubtechinc/developer/DeveloperEyesLedData;->nLightDownTime:I

    .line 89
    return-void
.end method

.method public setnLightUpTime(I)V
    .locals 0
    .param p1, "nLightUpTime"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/ubtechinc/developer/DeveloperEyesLedData;->nLightUpTime:I

    .line 81
    return-void
.end method
