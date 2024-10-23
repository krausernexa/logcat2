.class public Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;
.super Ljava/lang/Object;
.source "ResultDiagnosticInfo.java"


# instance fields
.field private context_tag:Ljava/lang/String;

.field private nlu_language:Ljava/lang/String;

.field private nlu_version:Ljava/lang/String;

.field private nmaid:Ljava/lang/String;

.field private timing:Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultTiming;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext_tag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;->context_tag:Ljava/lang/String;

    return-object v0
.end method

.method public getNlu_language()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;->nlu_language:Ljava/lang/String;

    return-object v0
.end method

.method public getNlu_version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;->nlu_version:Ljava/lang/String;

    return-object v0
.end method

.method public getNmaid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;->nmaid:Ljava/lang/String;

    return-object v0
.end method

.method public getTiming()Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultTiming;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;->timing:Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultTiming;

    return-object v0
.end method

.method public setContext_tag(Ljava/lang/String;)V
    .locals 0
    .param p1, "context_tag"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;->context_tag:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setNlu_language(Ljava/lang/String;)V
    .locals 0
    .param p1, "nlu_language"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;->nlu_language:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setNlu_version(Ljava/lang/String;)V
    .locals 0
    .param p1, "nlu_version"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;->nlu_version:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setNmaid(Ljava/lang/String;)V
    .locals 0
    .param p1, "nmaid"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;->nmaid:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setTiming(Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultTiming;)V
    .locals 0
    .param p1, "timing"    # Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultTiming;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;->timing:Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultTiming;

    .line 30
    return-void
.end method
