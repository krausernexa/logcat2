.class public Lcom/ubtechinc/service/protocols/SetWifiToConnect;
.super Ljava/lang/Object;
.source "SetWifiToConnect.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private capabilities:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field private knowWifi:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field

.field private psw:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field private ssid:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCapabilities()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/SetWifiToConnect;->capabilities:Ljava/lang/String;

    return-object v0
.end method

.method public getPsw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/SetWifiToConnect;->psw:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/SetWifiToConnect;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public isKnowWifi()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/ubtechinc/service/protocols/SetWifiToConnect;->knowWifi:Z

    return v0
.end method

.method public setCapabilities(Ljava/lang/String;)V
    .locals 0
    .param p1, "capabilities"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/SetWifiToConnect;->capabilities:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setKnowWifi(Z)V
    .locals 0
    .param p1, "knowWifi"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/ubtechinc/service/protocols/SetWifiToConnect;->knowWifi:Z

    .line 58
    return-void
.end method

.method public setPsw(Ljava/lang/String;)V
    .locals 0
    .param p1, "psw"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/SetWifiToConnect;->psw:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/SetWifiToConnect;->ssid:Ljava/lang/String;

    .line 42
    return-void
.end method
