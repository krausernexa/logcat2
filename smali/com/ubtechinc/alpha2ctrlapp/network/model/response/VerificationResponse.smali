.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/response/VerificationResponse;
.super Ljava/lang/Object;
.source "VerificationResponse.java"


# instance fields
.field private info:Ljava/lang/String;

.field private models:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/VerificationResponse;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getModels()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/VerificationResponse;->models:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/VerificationResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/VerificationResponse;->info:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setModels(Ljava/lang/String;)V
    .locals 0
    .param p1, "models"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/VerificationResponse;->models:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/VerificationResponse;->status:Ljava/lang/String;

    .line 13
    return-void
.end method
