.class public Lcom/ubtechinc/alphaenglishchat/resultEntity/ConceptContent;
.super Ljava/lang/Object;
.source "ConceptContent.java"


# instance fields
.field private literal:Ljava/lang/String;

.field private ranges:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLiteral()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ConceptContent;->literal:Ljava/lang/String;

    return-object v0
.end method

.method public getRanges()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ConceptContent;->ranges:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ConceptContent;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setLiteral(Ljava/lang/String;)V
    .locals 0
    .param p1, "literal"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ConceptContent;->literal:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setRanges(Ljava/lang/String;)V
    .locals 0
    .param p1, "ranges"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ConceptContent;->ranges:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ConceptContent;->value:Ljava/lang/String;

    .line 21
    return-void
.end method
