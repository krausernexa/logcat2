.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/request/ValidateFriendship;
.super Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;
.source "ValidateFriendship.java"


# instance fields
.field private equipmentId:Ljava/lang/String;

.field private relationStatus:I

.field private token:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getEquipmentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/ValidateFriendship;->equipmentId:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationStatus()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/ValidateFriendship;->relationStatus:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/ValidateFriendship;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/ValidateFriendship;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setEquipmentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "equipmentId"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/ValidateFriendship;->equipmentId:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setRelationStatus(I)V
    .locals 0
    .param p1, "relationStatus"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/ValidateFriendship;->relationStatus:I

    .line 36
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/ValidateFriendship;->token:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/ValidateFriendship;->userId:Ljava/lang/String;

    .line 24
    return-void
.end method
