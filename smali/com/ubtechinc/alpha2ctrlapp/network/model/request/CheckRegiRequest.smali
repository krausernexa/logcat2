.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CheckRegiRequest;
.super Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;
.source "CheckRegiRequest.java"


# instance fields
.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CheckRegiRequest;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CheckRegiRequest;->userName:Ljava/lang/String;

    .line 12
    return-void
.end method
