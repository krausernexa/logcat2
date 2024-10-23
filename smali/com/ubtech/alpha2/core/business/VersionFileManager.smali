.class public Lcom/ubtech/alpha2/core/business/VersionFileManager;
.super Lcom/ubtech/alpha2/core/base/BaseManager;
.source "VersionFileManager.java"


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
.method public getVersionFileXML(Ljava/lang/String;)Lcom/ubtech/alpha2/core/model/response/VersionFileResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, "response":Lcom/ubtech/alpha2/core/model/response/VersionFileResponse;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "key":Ljava/lang/String;
    const-wide/16 v4, 0x708

    invoke-static {v0, v4, v5}, Lcom/ubtech/alpha2/core/utils/CacheManager;->isInvalidObject(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    invoke-static {v0}, Lcom/ubtech/alpha2/core/utils/CacheManager;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "response":Lcom/ubtech/alpha2/core/model/response/VersionFileResponse;
    check-cast v1, Lcom/ubtech/alpha2/core/model/response/VersionFileResponse;

    .line 41
    .restart local v1    # "response":Lcom/ubtech/alpha2/core/model/response/VersionFileResponse;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 56
    .end local v1    # "response":Lcom/ubtech/alpha2/core/model/response/VersionFileResponse;
    .local v2, "response":Lcom/ubtech/alpha2/core/model/response/VersionFileResponse;
    :goto_0
    return-object v2

    .line 45
    .end local v2    # "response":Lcom/ubtech/alpha2/core/model/response/VersionFileResponse;
    .restart local v1    # "response":Lcom/ubtech/alpha2/core/model/response/VersionFileResponse;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ubtech/alpha2/core/business/VersionFileManager;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 49
    const-class v4, Lcom/ubtech/alpha2/core/model/response/VersionFileResponse;

    invoke-virtual {p0, v3, v4}, Lcom/ubtech/alpha2/core/business/VersionFileManager;->xmlToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "response":Lcom/ubtech/alpha2/core/model/response/VersionFileResponse;
    check-cast v1, Lcom/ubtech/alpha2/core/model/response/VersionFileResponse;

    .line 50
    .restart local v1    # "response":Lcom/ubtech/alpha2/core/model/response/VersionFileResponse;
    if-eqz v1, :cond_1

    .line 52
    invoke-static {v1, v0}, Lcom/ubtech/alpha2/core/utils/CacheManager;->writeObject(Ljava/lang/Object;Ljava/lang/String;)Z

    :cond_1
    move-object v2, v1

    .line 56
    .end local v1    # "response":Lcom/ubtech/alpha2/core/model/response/VersionFileResponse;
    .restart local v2    # "response":Lcom/ubtech/alpha2/core/model/response/VersionFileResponse;
    goto :goto_0
.end method

.method public readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v2, 0x0

    .line 62
    .local v2, "xmlString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, "fin":Ljava/io/FileInputStream;
    iget-object v3, p0, Lcom/ubtech/alpha2/core/business/VersionFileManager;->httpManager:Lcom/ubtech/alpha2/core/network/http/HttpClientManager;

    invoke-static {v1}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->inputSteamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 68
    .end local v1    # "fin":Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 64
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
