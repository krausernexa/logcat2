.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/request/RegistRequest;
.super Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;
.source "RegistRequest.java"


# instance fields
.field private type:I

.field private userEmail:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private userPassword:Ljava/lang/String;

.field private userPhone:Ljava/lang/String;

.field private userRoleType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/RegistRequest;->type:I

    return v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/RegistRequest;->userEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/RegistRequest;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/RegistRequest;->userPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/RegistRequest;->userPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getUserRoleType()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/RegistRequest;->userRoleType:I

    return v0
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/RegistRequest;->type:I

    .line 33
    return-void
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "userEmail"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/RegistRequest;->userEmail:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/RegistRequest;->userName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setUserPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "userPassword"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/RegistRequest;->userPassword:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setUserPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "userPhone"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/RegistRequest;->userPhone:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setUserRoleType(I)V
    .locals 0
    .param p1, "userRoleType"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/RegistRequest;->userRoleType:I

    .line 39
    return-void
.end method
