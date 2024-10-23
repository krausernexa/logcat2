.class public Lcom/ubtechinc/service/protocols/WifiList;
.super Ljava/lang/Object;
.source "WifiList.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private wifilist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/service/protocols/WifiInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/service/protocols/WifiList;->wifilist:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public addToWifiList(Lcom/ubtechinc/service/protocols/WifiInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/ubtechinc/service/protocols/WifiInfo;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/WifiList;->wifilist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/service/protocols/WifiInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/WifiList;->wifilist:Ljava/util/List;

    return-object v0
.end method

.method public setToList(Ljava/util/List;Lcom/ubtechinc/utils/WifiControl;)V
    .locals 7
    .param p2, "control"    # Lcom/ubtechinc/utils/WifiControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Lcom/ubtechinc/utils/WifiControl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez p1, :cond_1

    .line 62
    :cond_0
    return-void

    .line 49
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 50
    .local v3, "r":Landroid/net/wifi/ScanResult;
    new-instance v0, Lcom/ubtechinc/service/protocols/WifiInfo;

    invoke-direct {v0}, Lcom/ubtechinc/service/protocols/WifiInfo;-><init>()V

    .line 52
    .local v0, "info":Lcom/ubtechinc/service/protocols/WifiInfo;
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/ubtechinc/service/protocols/WifiInfo;->setSsid(Ljava/lang/String;)V

    .line 53
    iget v5, v3, Landroid/net/wifi/ScanResult;->level:I

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Lcom/ubtechinc/utils/WifiControl;->getWifiSignalLevel(II)I

    move-result v2

    .line 54
    .local v2, "nLevel":I
    invoke-virtual {v0, v2}, Lcom/ubtechinc/service/protocols/WifiInfo;->setLevel(I)V

    .line 55
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/ubtechinc/service/protocols/WifiInfo;->setCapabilities(Ljava/lang/String;)V

    .line 57
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p2, v5}, Lcom/ubtechinc/utils/WifiControl;->isCurrentConnectWifi(Ljava/lang/String;)Z

    move-result v1

    .line 58
    .local v1, "isCurrent":Z
    invoke-virtual {v0, v1}, Lcom/ubtechinc/service/protocols/WifiInfo;->setCurrentConnect(Z)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/ubtechinc/service/protocols/WifiList;->addToWifiList(Lcom/ubtechinc/service/protocols/WifiInfo;)V

    goto :goto_0
.end method
