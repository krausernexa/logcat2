.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/response/UploadControllerInfoResponse;
.super Ljava/lang/Object;
.source "UploadControllerInfoResponse.java"


# instance fields
.field private info:Ljava/lang/String;

.field private models:Ljava/lang/String;

.field private status:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/UploadControllerInfoResponse;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getModels()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/UploadControllerInfoResponse;->models:Ljava/lang/String;

    return-object v0
.end method

.method public isStatus()Z
    .locals 1

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/UploadControllerInfoResponse;->status:Z

    return v0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/UploadControllerInfoResponse;->info:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setModels(Ljava/lang/String;)V
    .locals 0
    .param p1, "models"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/UploadControllerInfoResponse;->models:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/UploadControllerInfoResponse;->status:Z

    .line 14
    return-void
.end method