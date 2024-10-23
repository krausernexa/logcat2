.class public Lai/api/model/AIOutputContext;
.super Ljava/lang/Object;
.source "AIOutputContext.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private lifespan:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lifespan"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private parameters:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parameters"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLifespan()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lai/api/model/AIOutputContext;->lifespan:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lai/api/model/AIOutputContext;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lai/api/model/AIOutputContext;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public setLifespan(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "lifespan"    # Ljava/lang/Integer;

    .prologue
    .line 70
    iput-object p1, p0, Lai/api/model/AIOutputContext;->lifespan:Ljava/lang/Integer;

    .line 71
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lai/api/model/AIOutputContext;->name:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    iput-object p1, p0, Lai/api/model/AIOutputContext;->parameters:Ljava/util/Map;

    .line 55
    return-void
.end method
