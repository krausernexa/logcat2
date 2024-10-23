.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/request/AuthenticationRequest;
.super Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;
.source "AuthenticationRequest.java"


# instance fields
.field private appKey:Ljava/lang/String;

.field private appPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/AuthenticationRequest;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/AuthenticationRequest;->appPackage:Ljava/lang/String;

    return-object v0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/AuthenticationRequest;->appKey:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setAppPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "appPackage"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/AuthenticationRequest;->appPackage:Ljava/lang/String;

    .line 12
    return-void
.end method
