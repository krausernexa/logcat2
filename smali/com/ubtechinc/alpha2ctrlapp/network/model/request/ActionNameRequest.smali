.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/request/ActionNameRequest;
.super Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;
.source "ActionNameRequest.java"


# instance fields
.field private actionOriginalIds:Ljava/lang/String;

.field private systemLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionOriginalIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/ActionNameRequest;->actionOriginalIds:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/ActionNameRequest;->systemLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public setActionOriginalIds(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionOriginalIds"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/ActionNameRequest;->actionOriginalIds:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setSystemLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemLanguage"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/ActionNameRequest;->systemLanguage:Ljava/lang/String;

    .line 16
    return-void
.end method
