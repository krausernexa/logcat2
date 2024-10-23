.class public abstract Lcom/ubtech/alpha2/core/base/BaseAction;
.super Ljava/lang/Object;
.source "BaseAction.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected pageSize:I

.field protected params:Lcom/ubtech/alpha2/core/network/http/RequestParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x14

    iput v0, p0, Lcom/ubtech/alpha2/core/base/BaseAction;->pageSize:I

    .line 31
    iput-object p1, p0, Lcom/ubtech/alpha2/core/base/BaseAction;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method protected getRequestParams()Lcom/ubtech/alpha2/core/network/http/RequestParams;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/ubtech/alpha2/core/network/http/RequestParams;

    invoke-direct {v0}, Lcom/ubtech/alpha2/core/network/http/RequestParams;-><init>()V

    iput-object v0, p0, Lcom/ubtech/alpha2/core/base/BaseAction;->params:Lcom/ubtech/alpha2/core/network/http/RequestParams;

    .line 60
    iget-object v0, p0, Lcom/ubtech/alpha2/core/base/BaseAction;->params:Lcom/ubtech/alpha2/core/network/http/RequestParams;

    return-object v0
.end method

.method protected getURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/ubtech/alpha2/core/base/BaseAction;->getURL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs getURL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://www.jingdl.com"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 42
    .local v1, "urlBilder":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1

    .line 43
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p2, v2

    .line 44
    .local v0, "param":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 45
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "param":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
