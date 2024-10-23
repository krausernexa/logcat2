.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;
.super Ljava/lang/Object;
.source "RegisterResultModel.java"


# instance fields
.field private activeDate:J

.field private appType:Ljava/lang/String;

.field private modifyDate:J

.field private serviceVersion:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private tokenExpires:Ljava/lang/String;

.field private type:I

.field private userEmail:Ljava/lang/String;

.field private userGender:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userImage:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private userOnlyId:Ljava/lang/String;

.field private userPassword:Ljava/lang/String;

.field private userPhone:Ljava/lang/String;

.field private userRoleType:Ljava/lang/String;

.field private userStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveDate()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->activeDate:J

    return-wide v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->appType:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyDate()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->modifyDate:J

    return-wide v0
.end method

.method public getServiceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->serviceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenExpires()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->tokenExpires:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->type:I

    return v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->userEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getUserGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->userGender:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->userImage:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserOnlyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->userOnlyId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->userPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->userPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getUserRoleType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->userRoleType:Ljava/lang/String;

    return-object v0
.end method

.method public getUserStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->userStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setActiveDate(J)V
    .locals 1
    .param p1, "activeDate"    # J

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->activeDate:J

    .line 117
    return-void
.end method

.method public setAppType(Ljava/lang/String;)V
    .locals 0
    .param p1, "appType"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->appType:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setModifyDate(J)V
    .locals 1
    .param p1, "modifyDate"    # J

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->modifyDate:J

    .line 123
    return-void
.end method

.method public setServiceVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceVersion"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->serviceVersion:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->token:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setTokenExpires(Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenExpires"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->tokenExpires:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->type:I

    .line 105
    return-void
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "userEmail"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->userEmail:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "userGender"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->userGender:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->userId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setUserImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "userImage"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->userImage:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->userName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setUserOnlyId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userOnlyId"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->userOnlyId:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setUserPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "userPassword"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->userPassword:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setUserPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "userPhone"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->userPhone:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setUserRoleType(Ljava/lang/String;)V
    .locals 0
    .param p1, "userRoleType"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->userRoleType:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setUserStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "userStatus"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->userStatus:Ljava/lang/String;

    .line 75
    return-void
.end method
