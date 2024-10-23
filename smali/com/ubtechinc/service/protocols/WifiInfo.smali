.class public Lcom/ubtechinc/service/protocols/WifiInfo;
.super Ljava/lang/Object;
.source "WifiInfo.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private capabilities:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field private isCurrentConnect:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field

.field private level:I
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
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCapabilities()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/WifiInfo;->capabilities:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/ubtechinc/service/protocols/WifiInfo;->level:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/WifiInfo;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public isCurrentConnect()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/ubtechinc/service/protocols/WifiInfo;->isCurrentConnect:Z

    return v0
.end method

.method public setCapabilities(Ljava/lang/String;)V
    .locals 0
    .param p1, "capabilities"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/WifiInfo;->capabilities:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setCurrentConnect(Z)V
    .locals 0
    .param p1, "isCurrentConnect"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/ubtechinc/service/protocols/WifiInfo;->isCurrentConnect:Z

    .line 68
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/ubtechinc/service/protocols/WifiInfo;->level:I

    .line 52
    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/WifiInfo;->ssid:Ljava/lang/String;

    .line 44
    return-void
.end method
