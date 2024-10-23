.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/request/ChatLogRequest;
.super Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;
.source "ChatLogRequest.java"


# instance fields
.field private appVersion:Ljava/lang/String;

.field private languageVersion:Ljava/lang/String;

.field private robotSeq:Ljava/lang/String;

.field private uploadContext:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/ChatLogRequest;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/ChatLogRequest;->languageVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRobotSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/ChatLogRequest;->robotSeq:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/ChatLogRequest;->uploadContext:Ljava/lang/String;

    return-object v0
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/ChatLogRequest;->appVersion:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setLanguageVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "languageVersion"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/ChatLogRequest;->languageVersion:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setRobotSeq(Ljava/lang/String;)V
    .locals 0
    .param p1, "robotSeq"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/ChatLogRequest;->robotSeq:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setUploadContext(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadContext"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/ChatLogRequest;->uploadContext:Ljava/lang/String;

    .line 39
    return-void
.end method
