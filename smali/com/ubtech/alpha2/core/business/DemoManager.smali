.class public Lcom/ubtech/alpha2/core/business/DemoManager;
.super Lcom/ubtech/alpha2/core/base/BaseManager;
.source "DemoManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/ubtech/alpha2/core/base/BaseManager;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parseType"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/ubtech/alpha2/core/base/BaseManager;-><init>(Landroid/content/Context;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public checkMaxVersion(Ljava/lang/String;Lcom/ubtech/alpha2/core/network/http/RequestParams;)Lcom/ubtech/alpha2/core/model/response/ApkConfigResponse;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/ubtech/alpha2/core/network/http/RequestParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, "response":Lcom/ubtech/alpha2/core/model/response/ApkConfigResponse;
    iget-object v2, p0, Lcom/ubtech/alpha2/core/business/DemoManager;->httpManager:Lcom/ubtech/alpha2/core/network/http/HttpClientManager;

    invoke-virtual {v2, p1, p2}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->post(Ljava/lang/String;Lcom/ubtech/alpha2/core/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "json":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    const-class v2, Lcom/ubtech/alpha2/core/model/response/ApkConfigResponse;

    invoke-virtual {p0, v0, v2}, Lcom/ubtech/alpha2/core/business/DemoManager;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "response":Lcom/ubtech/alpha2/core/model/response/ApkConfigResponse;
    check-cast v1, Lcom/ubtech/alpha2/core/model/response/ApkConfigResponse;

    .line 73
    .restart local v1    # "response":Lcom/ubtech/alpha2/core/model/response/ApkConfigResponse;
    :cond_0
    return-object v1
.end method

.method public getOrderXmlDemo(Ljava/lang/String;)Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 46
    .local v1, "response":Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "key":Ljava/lang/String;
    const-wide/16 v4, 0x708

    invoke-static {v0, v4, v5}, Lcom/ubtech/alpha2/core/utils/CacheManager;->isInvalidObject(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    invoke-static {v0}, Lcom/ubtech/alpha2/core/utils/CacheManager;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "response":Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;
    check-cast v1, Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;

    .line 50
    .restart local v1    # "response":Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 63
    .end local v1    # "response":Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;
    .local v2, "response":Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;
    :goto_0
    return-object v2

    .line 55
    .end local v2    # "response":Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;
    .restart local v1    # "response":Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;
    :cond_0
    iget-object v4, p0, Lcom/ubtech/alpha2/core/business/DemoManager;->httpManager:Lcom/ubtech/alpha2/core/network/http/HttpClientManager;

    iget-object v5, p0, Lcom/ubtech/alpha2/core/business/DemoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, p1}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 57
    const-class v4, Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;

    invoke-virtual {p0, v3, v4}, Lcom/ubtech/alpha2/core/business/DemoManager;->xmlToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "response":Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;
    check-cast v1, Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;

    .line 58
    .restart local v1    # "response":Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;
    if-eqz v1, :cond_1

    .line 60
    invoke-static {v1, v0}, Lcom/ubtech/alpha2/core/utils/CacheManager;->writeObject(Ljava/lang/Object;Ljava/lang/String;)Z

    :cond_1
    move-object v2, v1

    .line 63
    .end local v1    # "response":Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;
    .restart local v2    # "response":Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;
    goto :goto_0
.end method
