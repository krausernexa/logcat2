.class public Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultInterpretation;
.super Ljava/lang/Object;
.source "ResultInterpretation.java"


# instance fields
.field private action:Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultAction;

.field private concepts:Ljava/lang/String;

.field private literal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultAction;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultInterpretation;->action:Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultAction;

    return-object v0
.end method

.method public getConcepts()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultInterpretation;->concepts:Ljava/lang/String;

    return-object v0
.end method

.method public getLiteral()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultInterpretation;->literal:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultAction;)V
    .locals 0
    .param p1, "action"    # Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultAction;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultInterpretation;->action:Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultAction;

    .line 15
    return-void
.end method

.method public setConcepts(Ljava/lang/String;)V
    .locals 0
    .param p1, "concepts"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultInterpretation;->concepts:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setLiteral(Ljava/lang/String;)V
    .locals 0
    .param p1, "literal"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultInterpretation;->literal:Ljava/lang/String;

    .line 27
    return-void
.end method
