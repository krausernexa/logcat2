.class public Lai/api/model/Entity;
.super Ljava/lang/Object;
.source "Entity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private entries:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "entries"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lai/api/model/EntityEntry;",
            ">;"
        }
    .end annotation
.end field

.field private extend:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extend"
    .end annotation
.end field

.field private isEnum:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnum"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lai/api/model/Entity;->name:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public addEntry(Lai/api/model/EntityEntry;)V
    .locals 1
    .param p1, "entry"    # Lai/api/model/EntityEntry;

    .prologue
    .line 72
    iget-object v0, p0, Lai/api/model/Entity;->entries:Ljava/util/List;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lai/api/model/Entity;->entries:Ljava/util/List;

    .line 75
    :cond_0
    iget-object v0, p0, Lai/api/model/Entity;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lai/api/model/EntityEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lai/api/model/Entity;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getExtend()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lai/api/model/Entity;->extend:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lai/api/model/Entity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isEnum()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lai/api/model/Entity;->isEnum:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lai/api/model/EntityEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lai/api/model/EntityEntry;>;"
    iput-object p1, p0, Lai/api/model/Entity;->entries:Ljava/util/List;

    .line 69
    return-void
.end method

.method public setExtend(Z)V
    .locals 1
    .param p1, "extend"    # Z

    .prologue
    .line 83
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lai/api/model/Entity;->extend:Ljava/lang/Boolean;

    .line 84
    return-void
.end method

.method public setIsEnum(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isEnum"    # Ljava/lang/Boolean;

    .prologue
    .line 91
    iput-object p1, p0, Lai/api/model/Entity;->isEnum:Ljava/lang/Boolean;

    .line 92
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lai/api/model/Entity;->name:Ljava/lang/String;

    .line 61
    return-void
.end method
