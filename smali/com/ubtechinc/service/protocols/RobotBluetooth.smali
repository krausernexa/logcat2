.class public Lcom/ubtechinc/service/protocols/RobotBluetooth;
.super Ljava/lang/Object;
.source "RobotBluetooth.java"


# instance fields
.field private bondState:I

.field private deviceAddress:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/ubtechinc/service/protocols/RobotBluetooth;->bondState:I

    return-void
.end method


# virtual methods
.method public getBondState()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/ubtechinc/service/protocols/RobotBluetooth;->bondState:I

    return v0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/RobotBluetooth;->deviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/RobotBluetooth;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public setBondState(I)V
    .locals 0
    .param p1, "bondState"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/ubtechinc/service/protocols/RobotBluetooth;->bondState:I

    .line 40
    return-void
.end method

.method public setDeviceAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/RobotBluetooth;->deviceAddress:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/RobotBluetooth;->deviceName:Ljava/lang/String;

    .line 31
    return-void
.end method
