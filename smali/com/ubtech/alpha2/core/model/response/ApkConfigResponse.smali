.class public Lcom/ubtech/alpha2/core/model/response/ApkConfigResponse;
.super Ljava/lang/Object;
.source "ApkConfigResponse.java"


# instance fields
.field private apkVersion:Ljava/lang/String;

.field private uploadFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ubtech/alpha2/core/model/response/ApkConfigResponse;->apkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ubtech/alpha2/core/model/response/ApkConfigResponse;->uploadFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public setApkVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "apkVersion"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ubtech/alpha2/core/model/response/ApkConfigResponse;->apkVersion:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setUploadFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadFilePath"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ubtech/alpha2/core/model/response/ApkConfigResponse;->uploadFilePath:Ljava/lang/String;

    .line 28
    return-void
.end method
