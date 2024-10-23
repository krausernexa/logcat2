.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipResponse;
.super Ljava/lang/Object;
.source "ValidateFriendshipResponse.java"


# instance fields
.field private info:Ljava/lang/String;

.field private models:[Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipModel;

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
    .line 19
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipResponse;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getModels()[Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipModel;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipResponse;->models:[Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipModel;

    return-object v0
.end method

.method public isStatus()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipResponse;->status:Z

    return v0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipResponse;->info:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setModels([Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipModel;)V
    .locals 0
    .param p1, "models"    # [Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipModel;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipResponse;->models:[Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipModel;

    .line 29
    return-void
.end method

.method public setStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipResponse;->status:Z

    .line 17
    return-void
.end method
