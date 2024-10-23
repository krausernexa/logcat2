.class public Lcom/ubtech/alpha2/core/action/DemoAction;
.super Lcom/ubtech/alpha2/core/base/BaseAction;
.source "DemoAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/ubtech/alpha2/core/base/BaseAction;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method


# virtual methods
.method public checkMaxVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/ubtech/alpha2/core/model/response/ApkConfigResponse;
    .locals 5
    .param p1, "apkCategoryId"    # Ljava/lang/String;
    .param p2, "apkTagId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/ubtech/alpha2/core/business/DemoManager;

    iget-object v2, p0, Lcom/ubtech/alpha2/core/action/DemoAction;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/ubtech/alpha2/core/business/DemoManager;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, "mgr":Lcom/ubtech/alpha2/core/business/DemoManager;
    const-string v1, "http://192.168.213.94:8080/ssh/apkConfigAction!checkMaxVersion.action"

    .line 49
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ubtech/alpha2/core/action/DemoAction;->getRequestParams()Lcom/ubtech/alpha2/core/network/http/RequestParams;

    move-result-object v2

    iput-object v2, p0, Lcom/ubtech/alpha2/core/action/DemoAction;->params:Lcom/ubtech/alpha2/core/network/http/RequestParams;

    .line 50
    iget-object v2, p0, Lcom/ubtech/alpha2/core/action/DemoAction;->params:Lcom/ubtech/alpha2/core/network/http/RequestParams;

    const-string v3, "apkCategoryId"

    invoke-virtual {v2, v3, p1}, Lcom/ubtech/alpha2/core/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/ubtech/alpha2/core/action/DemoAction;->params:Lcom/ubtech/alpha2/core/network/http/RequestParams;

    const-string v3, "apkTagId"

    invoke-virtual {v2, v3, p2}, Lcom/ubtech/alpha2/core/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v2, "zdy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ApkConfig URL-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?apkTagId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&apkTagId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v2, p0, Lcom/ubtech/alpha2/core/action/DemoAction;->params:Lcom/ubtech/alpha2/core/network/http/RequestParams;

    invoke-virtual {v0, v1, v2}, Lcom/ubtech/alpha2/core/business/DemoManager;->checkMaxVersion(Ljava/lang/String;Lcom/ubtech/alpha2/core/network/http/RequestParams;)Lcom/ubtech/alpha2/core/model/response/ApkConfigResponse;

    move-result-object v2

    return-object v2
.end method

.method public getOrderXmlDemo(Ljava/lang/String;)Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v1, Lcom/ubtech/alpha2/core/business/DemoManager;

    iget-object v2, p0, Lcom/ubtech/alpha2/core/action/DemoAction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/ubtech/alpha2/core/business/DemoManager;-><init>(Landroid/content/Context;)V

    .line 41
    .local v1, "mgr":Lcom/ubtech/alpha2/core/business/DemoManager;
    invoke-virtual {v1, p1}, Lcom/ubtech/alpha2/core/business/DemoManager;->getOrderXmlDemo(Ljava/lang/String;)Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;

    move-result-object v0

    .line 42
    .local v0, "bean":Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;
    return-object v0
.end method
