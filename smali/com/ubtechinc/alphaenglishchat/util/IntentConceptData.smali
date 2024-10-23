.class public Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;
.super Ljava/lang/Object;
.source "IntentConceptData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private actionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private conceptList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private domain:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->actionList:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->conceptList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v3, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    invoke-direct {v3}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;-><init>()V

    .line 40
    .local v3, "intentConceptData":Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;
    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->domain:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->setDomain(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v3}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->getActionList()Ljava/util/ArrayList;

    move-result-object v0

    .line 42
    .local v0, "actList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 43
    .local v4, "item":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    .end local v4    # "item":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->getConceptList()Ljava/util/ArrayList;

    move-result-object v1

    .line 46
    .local v1, "conList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->conceptList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 47
    .local v2, "concept":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 49
    .end local v2    # "concept":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public getActionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->actionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getConceptList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->conceptList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public setActionList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->actionList:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method public setConceptList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .line 35
    .local p1, "conceptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->domain:Ljava/lang/String;

    .line 23
    return-void
.end method
