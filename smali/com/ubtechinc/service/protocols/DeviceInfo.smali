.class public Lcom/ubtechinc/service/protocols/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private mDevName:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field private mIpAddress:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field private mMacAddress:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field

.field private mOsVersion:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field private robotNo:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v2, "Alpha2"

    iput-object v2, p0, Lcom/ubtechinc/service/protocols/DeviceInfo;->mDevName:Ljava/lang/String;

    .line 69
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, p0, Lcom/ubtechinc/service/protocols/DeviceInfo;->mOsVersion:Ljava/lang/String;

    .line 71
    new-instance v1, Lcom/ubtechinc/utils/WifiControl;

    invoke-direct {v1, p1}, Lcom/ubtechinc/utils/WifiControl;-><init>(Landroid/content/Context;)V

    .line 72
    .local v1, "wifiControl":Lcom/ubtechinc/utils/WifiControl;
    invoke-virtual {v1}, Lcom/ubtechinc/utils/WifiControl;->getIPAddress()I

    move-result v0

    .line 73
    .local v0, "nAddress":I
    invoke-direct {p0, v0}, Lcom/ubtechinc/service/protocols/DeviceInfo;->intToIp(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ubtechinc/service/protocols/DeviceInfo;->mIpAddress:Ljava/lang/String;

    .line 75
    invoke-virtual {v1}, Lcom/ubtechinc/utils/WifiControl;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ubtechinc/service/protocols/DeviceInfo;->mMacAddress:Ljava/lang/String;

    .line 76
    iget-object v2, p0, Lcom/ubtechinc/service/protocols/DeviceInfo;->mMacAddress:Ljava/lang/String;

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ubtechinc/service/protocols/DeviceInfo;->robotNo:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private intToIp(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRobotNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/DeviceInfo;->robotNo:Ljava/lang/String;

    return-object v0
.end method

.method public getmDevName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/DeviceInfo;->mDevName:Ljava/lang/String;

    return-object v0
.end method

.method public getmIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/DeviceInfo;->mIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getmMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/DeviceInfo;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getmOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/DeviceInfo;->mOsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setRobotNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "robotNo"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/DeviceInfo;->robotNo:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setmDevName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDevName"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/DeviceInfo;->mDevName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setmIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIpAddress"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/DeviceInfo;->mIpAddress:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setmMacAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMacAddress"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/DeviceInfo;->mMacAddress:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setmOsVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mOsVersion"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/DeviceInfo;->mOsVersion:Ljava/lang/String;

    .line 97
    return-void
.end method
