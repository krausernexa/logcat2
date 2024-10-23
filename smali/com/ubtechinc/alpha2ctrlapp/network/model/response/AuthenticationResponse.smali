.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/response/AuthenticationResponse;
.super Ljava/lang/Object;
.source "AuthenticationResponse.java"


# instance fields
.field private info:Ljava/lang/String;

.field private models:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/alpha2ctrlapp/network/model/AuthenticationModel;",
            ">;"
        }
    .end annotation
.end field

.field private status:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/AuthenticationResponse;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/alpha2ctrlapp/network/model/AuthenticationModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/AuthenticationResponse;->models:Ljava/util/List;

    return-object v0
.end method

.method public isStatus()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/AuthenticationResponse;->status:Z

    return v0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/AuthenticationResponse;->info:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setModels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/alpha2ctrlapp/network/model/AuthenticationModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "models":Ljava/util/List;, "Ljava/util/List<Lcom/ubtechinc/alpha2ctrlapp/network/model/AuthenticationModel;>;"
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/AuthenticationResponse;->models:Ljava/util/List;

    .line 28
    return-void
.end method

.method public setStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/AuthenticationResponse;->status:Z

    .line 16
    return-void
.end method
