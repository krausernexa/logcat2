.class public Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;
.super Ljava/lang/Object;
.source "ParseResult.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private action:Ljava/lang/String;

.field private conceptValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private confidence:F

.field private domain:Ljava/lang/String;

.field private finalRespSentDelay:Ljava/lang/String;

.field private intermediateRespSentDelay:Ljava/lang/String;

.field private sentence:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->confidence:F

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->conceptValue:Ljava/util/HashMap;

    .line 19
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 60
    new-instance v2, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-direct {v2}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;-><init>()V

    .line 61
    .local v2, "parseResult":Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setDomain(Ljava/lang/String;)V

    .line 62
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setAction(Ljava/lang/String;)V

    .line 63
    iget v3, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->confidence:F

    invoke-virtual {v2, v3}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setConfidence(F)V

    .line 64
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->intermediateRespSentDelay:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setIntermediateRespSentDelay(Ljava/lang/String;)V

    .line 65
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->finalRespSentDelay:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setFinalRespSentDelay(Ljava/lang/String;)V

    .line 66
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->conceptValue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 67
    .local v1, "keyIt":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->conceptValue:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 71
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getConceptValue()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->conceptValue:Ljava/util/HashMap;

    return-object v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->confidence:F

    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getFinalRespSentDelay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->finalRespSentDelay:Ljava/lang/String;

    return-object v0
.end method

.method public getIntermediateRespSentDelay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->intermediateRespSentDelay:Ljava/lang/String;

    return-object v0
.end method

.method public getSentence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->sentence:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->action:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setConceptValue(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "conceptValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->conceptValue:Ljava/util/HashMap;

    .line 38
    return-void
.end method

.method public setConfidence(F)V
    .locals 0
    .param p1, "confidence"    # F

    .prologue
    .line 55
    iput p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->confidence:F

    .line 56
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->domain:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setFinalRespSentDelay(Ljava/lang/String;)V
    .locals 0
    .param p1, "finalRespSentDelay"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->finalRespSentDelay:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setIntermediateRespSentDelay(Ljava/lang/String;)V
    .locals 0
    .param p1, "intermediateRespSentDelay"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->intermediateRespSentDelay:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setSentence(Ljava/lang/String;)V
    .locals 0
    .param p1, "sentence"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->sentence:Ljava/lang/String;

    .line 80
    return-void
.end method
