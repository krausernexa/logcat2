.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ActionNameResponse;
.super Ljava/lang/Object;
.source "ActionNameResponse.java"


# instance fields
.field private info:Ljava/lang/String;

.field private models:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ActionNameModel;",
            ">;"
        }
    .end annotation
.end field

.field private status:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ActionNameResponse;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ActionNameModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ActionNameResponse;->models:Ljava/util/List;

    return-object v0
.end method

.method public isStatus()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ActionNameResponse;->status:Z

    return v0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ActionNameResponse;->info:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setModels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ActionNameModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "models":Ljava/util/List;, "Ljava/util/List<Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ActionNameModel;>;"
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ActionNameResponse;->models:Ljava/util/List;

    .line 21
    return-void
.end method

.method public setStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ActionNameResponse;->status:Z

    .line 29
    return-void
.end method
