.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;
.super Ljava/lang/Object;
.source "CommonRequest.java"


# instance fields
.field private appType:Ljava/lang/String;

.field private requestKey:Ljava/lang/String;

.field private requestTime:Ljava/lang/String;

.field private serviceVersion:Ljava/lang/String;

.field private systemLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "2"

    iput-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;->appType:Ljava/lang/String;

    .line 5
    const-string v0, "V1.0"

    iput-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;->serviceVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;->appType:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;->requestKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;->requestTime:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;->serviceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;->systemLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public setAppType(Ljava/lang/String;)V
    .locals 0
    .param p1, "appType"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;->appType:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setRequestKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestKey"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;->requestKey:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setRequestTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestTime"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;->requestTime:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setServiceVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceVersion"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;->serviceVersion:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setSystemLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemLanguage"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;->systemLanguage:Ljava/lang/String;

    .line 39
    return-void
.end method
