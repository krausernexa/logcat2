.class public Lai/api/model/AIRequest;
.super Lai/api/model/QuestionMetadata;
.source "AIRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private confidence:[F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "confidence"
    .end annotation
.end field

.field private contexts:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contexts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lai/api/model/AIContext;",
            ">;"
        }
    .end annotation
.end field

.field private query:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "query"
    .end annotation
.end field

.field private resetContexts:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resetContexts"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lai/api/model/QuestionMetadata;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Lai/api/model/QuestionMetadata;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Lai/api/model/AIRequest;->setQuery(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public addContext(Lai/api/model/AIContext;)V
    .locals 2
    .param p1, "aiContext"    # Lai/api/model/AIContext;

    .prologue
    .line 101
    iget-object v0, p0, Lai/api/model/AIRequest;->contexts:Ljava/util/List;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lai/api/model/AIRequest;->contexts:Ljava/util/List;

    .line 105
    :cond_0
    iget-object v0, p0, Lai/api/model/AIRequest;->contexts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public getConfidence()[F
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lai/api/model/AIRequest;->confidence:[F

    return-object v0
.end method

.method public getResetContexts()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lai/api/model/AIRequest;->resetContexts:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setConfidence([F)V
    .locals 0
    .param p1, "confidence"    # [F

    .prologue
    .line 85
    iput-object p1, p0, Lai/api/model/AIRequest;->confidence:[F

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
    .line 97
    .local p1, "contexts":Ljava/util/List;, "Ljava/util/List<Lai/api/model/AIContext;>;"
    iput-object p1, p0, Lai/api/model/AIRequest;->contexts:Ljava/util/List;

    .line 98
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Query must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lai/api/model/AIRequest;->query:[Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lai/api/model/AIRequest;->confidence:[F

    .line 61
    return-void
.end method

.method public setQuery([Ljava/lang/String;[F)V
    .locals 2
    .param p1, "query"    # [Ljava/lang/String;
    .param p2, "confidence"    # [F

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Query array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    if-nez p2, :cond_1

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Then confidences array is null, query must be one or zero item length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    if-eqz p2, :cond_2

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_2

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Query and confidence arrays must be equals size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_2
    iput-object p1, p0, Lai/api/model/AIRequest;->query:[Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lai/api/model/AIRequest;->confidence:[F

    .line 78
    return-void
.end method

.method public setResetContexts(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "resetContexts"    # Ljava/lang/Boolean;

    .prologue
    .line 89
    iput-object p1, p0, Lai/api/model/AIRequest;->resetContexts:Ljava/lang/Boolean;

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    const-string v0, "AIRequest{query=%s, resetContexts=%s, language=\'%s\', timezone=\'%s\'}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lai/api/model/AIRequest;->query:[Ljava/lang/String;

    .line 111
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lai/api/model/AIRequest;->resetContexts:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 113
    invoke-virtual {p0}, Lai/api/model/AIRequest;->getLanguage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 114
    invoke-virtual {p0}, Lai/api/model/AIRequest;->getTimezone()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 110
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
