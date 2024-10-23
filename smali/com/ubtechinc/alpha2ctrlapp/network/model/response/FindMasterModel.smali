.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;
.super Ljava/lang/Object;
.source "FindMasterModel.java"


# instance fields
.field private upUserId:I

.field private userEmail:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private userPhone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUpUserId()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;->upUserId:I

    return v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;->userEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;->userPhone:Ljava/lang/String;

    return-object v0
.end method

.method public setUpUserId(I)V
    .locals 0
    .param p1, "upUserId"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;->upUserId:I

    .line 62
    return-void
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "userEmail"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;->userEmail:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;->userName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setUserPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "userPhone"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;->userPhone:Ljava/lang/String;

    .line 56
    return-void
.end method
