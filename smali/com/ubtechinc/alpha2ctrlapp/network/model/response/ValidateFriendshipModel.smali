.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipModel;
.super Ljava/lang/Object;
.source "ValidateFriendshipModel.java"


# instance fields
.field private relationStatus:I

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRelationStatus()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipModel;->relationStatus:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipModel;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipModel;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setRelationStatus(I)V
    .locals 0
    .param p1, "relationStatus"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipModel;->relationStatus:I

    .line 29
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipModel;->userId:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipModel;->userName:Ljava/lang/String;

    .line 23
    return-void
.end method
