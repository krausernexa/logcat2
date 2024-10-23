.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/AuthenticationModel;
.super Ljava/lang/Object;
.source "AuthenticationModel.java"


# instance fields
.field private appKey:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/AuthenticationModel;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/AuthenticationModel;->appVersion:Ljava/lang/String;

    .line 14
    return-void
.end method
