.class public Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultOnInterpretation;
.super Ljava/lang/Object;
.source "ResultOnInterpretation.java"


# instance fields
.field private diagnostic_info:Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;

.field private interpretations:[Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultInterpretation;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDiagnostic_info()Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultOnInterpretation;->diagnostic_info:Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;

    return-object v0
.end method

.method public getInterpretations()[Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultInterpretation;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultOnInterpretation;->interpretations:[Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultInterpretation;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultOnInterpretation;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setDiagnostic_info(Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;)V
    .locals 0
    .param p1, "diagnostic_info"    # Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultOnInterpretation;->diagnostic_info:Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;

    .line 27
    return-void
.end method

.method public setInterpretations([Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultInterpretation;)V
    .locals 0
    .param p1, "interpretations"    # [Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultInterpretation;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultOnInterpretation;->interpretations:[Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultInterpretation;

    .line 15
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultOnInterpretation;->type:Ljava/lang/String;

    .line 21
    return-void
.end method
