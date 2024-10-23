.class public Lcom/ubtech/alpha2/core/business/BinVersionManager;
.super Lcom/ubtech/alpha2/core/base/BaseManager;
.source "BinVersionManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/ubtech/alpha2/core/base/BaseManager;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parseType"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/ubtech/alpha2/core/base/BaseManager;-><init>(Landroid/content/Context;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public getBinVersionXML(Ljava/lang/String;)Lcom/ubtech/alpha2/core/model/response/BinVersionResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 36
    .local v1, "response":Lcom/ubtech/alpha2/core/model/response/BinVersionResponse;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "key":Ljava/lang/String;
    const-wide/16 v4, 0x708

    invoke-static {v0, v4, v5}, Lcom/ubtech/alpha2/core/utils/CacheManager;->isInvalidObject(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    invoke-static {v0}, Lcom/ubtech/alpha2/core/utils/CacheManager;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "response":Lcom/ubtech/alpha2/core/model/response/BinVersionResponse;
    check-cast v1, Lcom/ubtech/alpha2/core/model/response/BinVersionResponse;

    .line 40
    .restart local v1    # "response":Lcom/ubtech/alpha2/core/model/response/BinVersionResponse;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 55
    .end local v1    # "response":Lcom/ubtech/alpha2/core/model/response/BinVersionResponse;
    .local v2, "response":Lcom/ubtech/alpha2/core/model/response/BinVersionResponse;
    :goto_0
    return-object v2

    .line 44
    .end local v2    # "response":Lcom/ubtech/alpha2/core/model/response/BinVersionResponse;
    .restart local v1    # "response":Lcom/ubtech/alpha2/core/model/response/BinVersionResponse;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ubtech/alpha2/core/business/BinVersionManager;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 48
    const-class v4, Lcom/ubtech/alpha2/core/model/response/BinVersionResponse;

    invoke-virtual {p0, v3, v4}, Lcom/ubtech/alpha2/core/business/BinVersionManager;->xmlToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "response":Lcom/ubtech/alpha2/core/model/response/BinVersionResponse;
    check-cast v1, Lcom/ubtech/alpha2/core/model/response/BinVersionResponse;

    .line 49
    .restart local v1    # "response":Lcom/ubtech/alpha2/core/model/response/BinVersionResponse;
    if-eqz v1, :cond_1

    .line 51
    invoke-static {v1, v0}, Lcom/ubtech/alpha2/core/utils/CacheManager;->writeObject(Ljava/lang/Object;Ljava/lang/String;)Z

    :cond_1
    move-object v2, v1

    .line 55
    .end local v1    # "response":Lcom/ubtech/alpha2/core/model/response/BinVersionResponse;
    .restart local v2    # "response":Lcom/ubtech/alpha2/core/model/response/BinVersionResponse;
    goto :goto_0
.end method

.method public readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v2, 0x0

    .line 61
    .local v2, "xmlString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "fin":Ljava/io/FileInputStream;
    iget-object v3, p0, Lcom/ubtech/alpha2/core/business/BinVersionManager;->httpManager:Lcom/ubtech/alpha2/core/network/http/HttpClientManager;

    invoke-static {v1}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->inputSteamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 67
    .end local v1    # "fin":Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 63
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
