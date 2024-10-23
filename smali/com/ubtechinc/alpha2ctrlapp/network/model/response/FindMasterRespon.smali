.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterRespon;
.super Ljava/lang/Object;
.source "FindMasterRespon.java"


# instance fields
.field private info:Ljava/lang/String;

.field private models:[Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;

.field private status:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterRespon;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getModels()[Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterRespon;->models:[Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;

    return-object v0
.end method

.method public isStatus()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterRespon;->status:Z

    return v0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterRespon;->info:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setModels([Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;)V
    .locals 0
    .param p1, "models"    # [Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterRespon;->models:[Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;

    .line 30
    return-void
.end method

.method public setStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterRespon;->status:Z

    .line 18
    return-void
.end method
