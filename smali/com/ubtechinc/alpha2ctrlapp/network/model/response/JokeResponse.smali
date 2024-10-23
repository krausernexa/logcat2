.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/response/JokeResponse;
.super Ljava/lang/Object;
.source "JokeResponse.java"


# instance fields
.field private info:Ljava/lang/String;

.field private models:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/alpha2ctrlapp/network/model/JokeModel;",
            ">;"
        }
    .end annotation
.end field

.field private status:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/JokeResponse;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/alpha2ctrlapp/network/model/JokeModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/JokeResponse;->models:Ljava/util/List;

    return-object v0
.end method

.method public isStatus()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/JokeResponse;->status:Z

    return v0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/JokeResponse;->info:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setModels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/alpha2ctrlapp/network/model/JokeModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "models":Ljava/util/List;, "Ljava/util/List<Lcom/ubtechinc/alpha2ctrlapp/network/model/JokeModel;>;"
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/JokeResponse;->models:Ljava/util/List;

    .line 35
    return-void
.end method

.method public setStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/JokeResponse;->status:Z

    .line 19
    return-void
.end method
