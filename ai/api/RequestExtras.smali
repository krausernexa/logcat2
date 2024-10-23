.class public Lai/api/RequestExtras;
.super Ljava/lang/Object;
.source "RequestExtras.java"


# instance fields
.field private additionalHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lai/api/model/AIContext;",
            ">;"
        }
    .end annotation
.end field

.field private entities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lai/api/model/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private resetContexts:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lai/api/RequestExtras;->contexts:Ljava/util/List;

    .line 44
    iput-object v0, p0, Lai/api/RequestExtras;->entities:Ljava/util/List;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lai/api/model/AIContext;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lai/api/model/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "contexts":Ljava/util/List;, "Ljava/util/List<Lai/api/model/AIContext;>;"
    .local p2, "entities":Ljava/util/List;, "Ljava/util/List<Lai/api/model/Entity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lai/api/RequestExtras;->contexts:Ljava/util/List;

    .line 49
    iput-object p2, p0, Lai/api/RequestExtras;->entities:Ljava/util/List;

    .line 50
    return-void
.end method


# virtual methods
.method public copyTo(Lai/api/model/AIRequest;)V
    .locals 1
    .param p1, "request"    # Lai/api/model/AIRequest;

    .prologue
    .line 110
    invoke-virtual {p0}, Lai/api/RequestExtras;->hasContexts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lai/api/RequestExtras;->getContexts()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lai/api/model/AIRequest;->setContexts(Ljava/util/List;)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lai/api/RequestExtras;->hasEntities()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lai/api/RequestExtras;->getEntities()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lai/api/model/AIRequest;->setEntities(Ljava/util/List;)V

    .line 118
    :cond_1
    invoke-virtual {p0}, Lai/api/RequestExtras;->getResetContexts()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {p0}, Lai/api/RequestExtras;->getResetContexts()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lai/api/model/AIRequest;->setResetContexts(Ljava/lang/Boolean;)V

    .line 122
    :cond_2
    return-void
.end method

.method public getAdditionalHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lai/api/RequestExtras;->additionalHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getContexts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lai/api/model/AIContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lai/api/RequestExtras;->contexts:Ljava/util/List;

    return-object v0
.end method

.method public getEntities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lai/api/model/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lai/api/RequestExtras;->entities:Ljava/util/List;

    return-object v0
.end method

.method public getResetContexts()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lai/api/RequestExtras;->resetContexts:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hasAdditionalHeaders()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lai/api/RequestExtras;->additionalHeaders:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lai/api/RequestExtras;->additionalHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContexts()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lai/api/RequestExtras;->contexts:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lai/api/RequestExtras;->contexts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEntities()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lai/api/RequestExtras;->entities:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lai/api/RequestExtras;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdditionalHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lai/api/RequestExtras;->additionalHeaders:Ljava/util/Map;

    .line 86
    return-void
.end method

.method public setContexts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lai/api/model/AIContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "contexts":Ljava/util/List;, "Ljava/util/List<Lai/api/model/AIContext;>;"
    iput-object p1, p0, Lai/api/RequestExtras;->contexts:Ljava/util/List;

    .line 58
    return-void
.end method

.method public setEntities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lai/api/model/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<Lai/api/model/Entity;>;"
    iput-object p1, p0, Lai/api/RequestExtras;->entities:Ljava/util/List;

    .line 66
    return-void
.end method

.method public setResetContexts(Z)V
    .locals 1
    .param p1, "resetContexts"    # Z

    .prologue
    .line 73
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lai/api/RequestExtras;->resetContexts:Ljava/lang/Boolean;

    .line 74
    return-void
.end method
