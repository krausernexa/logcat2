.class public Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultConcept;
.super Ljava/lang/Object;
.source "ResultConcept.java"


# instance fields
.field private CARLENDARX:[Lcom/ubtechinc/alphaenglishchat/resultEntity/ConceptContent;

.field private place:[Lcom/ubtechinc/alphaenglishchat/resultEntity/ConceptContent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCARLENDARX()[Lcom/ubtechinc/alphaenglishchat/resultEntity/ConceptContent;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultConcept;->CARLENDARX:[Lcom/ubtechinc/alphaenglishchat/resultEntity/ConceptContent;

    return-object v0
.end method

.method public getPlace()[Lcom/ubtechinc/alphaenglishchat/resultEntity/ConceptContent;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultConcept;->place:[Lcom/ubtechinc/alphaenglishchat/resultEntity/ConceptContent;

    return-object v0
.end method

.method public setCARLENDARX([Lcom/ubtechinc/alphaenglishchat/resultEntity/ConceptContent;)V
    .locals 0
    .param p1, "cARLENDARX"    # [Lcom/ubtechinc/alphaenglishchat/resultEntity/ConceptContent;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultConcept;->CARLENDARX:[Lcom/ubtechinc/alphaenglishchat/resultEntity/ConceptContent;

    .line 20
    return-void
.end method

.method public setPlace([Lcom/ubtechinc/alphaenglishchat/resultEntity/ConceptContent;)V
    .locals 0
    .param p1, "place"    # [Lcom/ubtechinc/alphaenglishchat/resultEntity/ConceptContent;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultConcept;->place:[Lcom/ubtechinc/alphaenglishchat/resultEntity/ConceptContent;

    .line 14
    return-void
.end method
