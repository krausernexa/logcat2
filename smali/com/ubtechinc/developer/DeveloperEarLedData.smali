.class public Lcom/ubtechinc/developer/DeveloperEarLedData;
.super Ljava/lang/Object;
.source "DeveloperEarLedData.java"


# instance fields
.field private mBright:I

.field private mLedDownTime:I

.field private mLedUpTime:I

.field private mLeftLed:I

.field private mRightLed:I

.field private mRunTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlayData()[B
    .locals 4

    .prologue
    const v3, 0xffff

    .line 89
    new-instance v1, Lcom/ubtechinc/tools/PacketData;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/ubtechinc/tools/PacketData;-><init>(I)V

    .line 91
    .local v1, "packetData":Lcom/ubtechinc/tools/PacketData;
    iget v2, p0, Lcom/ubtechinc/developer/DeveloperEarLedData;->mLeftLed:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putByte(B)V

    .line 93
    iget v2, p0, Lcom/ubtechinc/developer/DeveloperEarLedData;->mRightLed:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putByte(B)V

    .line 95
    iget v2, p0, Lcom/ubtechinc/developer/DeveloperEarLedData;->mBright:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putByte(B)V

    .line 98
    iget v2, p0, Lcom/ubtechinc/developer/DeveloperEarLedData;->mLedUpTime:I

    and-int/2addr v2, v3

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putShort_(Ljava/lang/Short;)V

    .line 100
    iget v2, p0, Lcom/ubtechinc/developer/DeveloperEarLedData;->mLedDownTime:I

    and-int/2addr v2, v3

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putShort_(Ljava/lang/Short;)V

    .line 103
    iget v2, p0, Lcom/ubtechinc/developer/DeveloperEarLedData;->mRunTime:I

    int-to-short v0, v2

    .line 104
    .local v0, "nTotalTime":S
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/tools/PacketData;->putShort_(Ljava/lang/Short;)V

    .line 106
    invoke-virtual {v1}, Lcom/ubtechinc/tools/PacketData;->getBuffer()[B

    move-result-object v2

    return-object v2
.end method

.method public getmBright()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/ubtechinc/developer/DeveloperEarLedData;->mBright:I

    return v0
.end method

.method public getmLedDownTime()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/ubtechinc/developer/DeveloperEarLedData;->mLedDownTime:I

    return v0
.end method

.method public getmLedUpTime()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/ubtechinc/developer/DeveloperEarLedData;->mLedUpTime:I

    return v0
.end method

.method public getmLeftLed()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/ubtechinc/developer/DeveloperEarLedData;->mLeftLed:I

    return v0
.end method

.method public getmRightLed()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/ubtechinc/developer/DeveloperEarLedData;->mRightLed:I

    return v0
.end method

.method public getmRunTime()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/ubtechinc/developer/DeveloperEarLedData;->mRunTime:I

    return v0
.end method

.method public setmBright(I)V
    .locals 0
    .param p1, "mBright"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/ubtechinc/developer/DeveloperEarLedData;->mBright:I

    .line 69
    return-void
.end method

.method public setmLedDownTime(I)V
    .locals 0
    .param p1, "mLedDownTime"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/ubtechinc/developer/DeveloperEarLedData;->mLedDownTime:I

    .line 81
    return-void
.end method

.method public setmLedUpTime(I)V
    .locals 0
    .param p1, "mLedUpTime"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/ubtechinc/developer/DeveloperEarLedData;->mLedUpTime:I

    .line 75
    return-void
.end method

.method public setmLeftLed(I)V
    .locals 0
    .param p1, "mLeftLed"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/ubtechinc/developer/DeveloperEarLedData;->mLeftLed:I

    .line 57
    return-void
.end method

.method public setmRightLed(I)V
    .locals 0
    .param p1, "mRightLed"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/ubtechinc/developer/DeveloperEarLedData;->mRightLed:I

    .line 63
    return-void
.end method

.method public setmRunTime(I)V
    .locals 0
    .param p1, "mRunTime"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/ubtechinc/developer/DeveloperEarLedData;->mRunTime:I

    .line 45
    return-void
.end method
