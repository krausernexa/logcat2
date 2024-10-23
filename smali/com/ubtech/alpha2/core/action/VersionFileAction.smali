.class public Lcom/ubtech/alpha2/core/action/VersionFileAction;
.super Lcom/ubtech/alpha2/core/base/BaseAction;
.source "VersionFileAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/ubtech/alpha2/core/base/BaseAction;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getVersionFileXml(Ljava/lang/String;)Lcom/ubtech/alpha2/core/model/response/VersionFileResponse;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 19
    new-instance v1, Lcom/ubtech/alpha2/core/business/VersionFileManager;

    iget-object v2, p0, Lcom/ubtech/alpha2/core/action/VersionFileAction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/ubtech/alpha2/core/business/VersionFileManager;-><init>(Landroid/content/Context;)V

    .line 20
    .local v1, "mgr":Lcom/ubtech/alpha2/core/business/VersionFileManager;
    invoke-virtual {v1, p1}, Lcom/ubtech/alpha2/core/business/VersionFileManager;->getVersionFileXML(Ljava/lang/String;)Lcom/ubtech/alpha2/core/model/response/VersionFileResponse;

    move-result-object v0

    .line 21
    .local v0, "bean":Lcom/ubtech/alpha2/core/model/response/VersionFileResponse;
    return-object v0
.end method
