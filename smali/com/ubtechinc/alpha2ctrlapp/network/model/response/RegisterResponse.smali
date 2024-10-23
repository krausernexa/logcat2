.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/response/RegisterResponse;
.super Ljava/lang/Object;
.source "RegisterResponse.java"


# instance fields
.field private info:Ljava/lang/String;

.field private models:[Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;

.field private status:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/RegisterResponse;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getModels()[Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/RegisterResponse;->models:[Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;

    return-object v0
.end method

.method public isStatus()Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/RegisterResponse;->status:Z

    return v0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/RegisterResponse;->info:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setModels([Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;)V
    .locals 0
    .param p1, "models"    # [Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/RegisterResponse;->models:[Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;

    .line 27
    return-void
.end method

.method public setStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/RegisterResponse;->status:Z

    .line 15
    return-void
.end method
