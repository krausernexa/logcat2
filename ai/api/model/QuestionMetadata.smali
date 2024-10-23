.class public Lai/api/model/QuestionMetadata;
.super Ljava/lang/Object;
.source "QuestionMetadata.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private entities:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "entities"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lai/api/model/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lang"
    .end annotation
.end field

.field private sessionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sessionId"
    .end annotation
.end field

.field private timezone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timezone"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addEntity(Lai/api/model/Entity;)V
    .locals 1
    .param p1, "entity"    # Lai/api/model/Entity;

    .prologue
    .line 83
    iget-object v0, p0, Lai/api/model/QuestionMetadata;->entities:Ljava/util/List;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lai/api/model/QuestionMetadata;->entities:Ljava/util/List;

    .line 86
    :cond_0
    iget-object v0, p0, Lai/api/model/QuestionMetadata;->entities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
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
    .line 75
    iget-object v0, p0, Lai/api/model/QuestionMetadata;->entities:Ljava/util/List;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lai/api/model/QuestionMetadata;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lai/api/model/QuestionMetadata;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lai/api/model/QuestionMetadata;->timezone:Ljava/lang/String;

    return-object v0
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
    .line 79
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<Lai/api/model/Entity;>;"
    iput-object p1, p0, Lai/api/model/QuestionMetadata;->entities:Ljava/util/List;

    .line 80
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "language must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iput-object p1, p0, Lai/api/model/QuestionMetadata;->language:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lai/api/model/QuestionMetadata;->sessionId:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lai/api/model/QuestionMetadata;->timezone:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 91
    const-string v0, "QuestionMetadata{language=\'%s\', timezone=\'%s\'}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lai/api/model/QuestionMetadata;->language:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lai/api/model/QuestionMetadata;->timezone:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
