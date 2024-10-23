.class public Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultTiming;
.super Ljava/lang/Object;
.source "ResultTiming.java"


# instance fields
.field private finalRespSentDelay:Ljava/lang/String;

.field private intermediateRespSentDelay:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFinalRespSentDelay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultTiming;->finalRespSentDelay:Ljava/lang/String;

    return-object v0
.end method

.method public getIntermediateRespSentDelay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultTiming;->intermediateRespSentDelay:Ljava/lang/String;

    return-object v0
.end method

.method public setFinalRespSentDelay(Ljava/lang/String;)V
    .locals 0
    .param p1, "finalRespSentDelay"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultTiming;->finalRespSentDelay:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setIntermediateRespSentDelay(Ljava/lang/String;)V
    .locals 0
    .param p1, "intermediateRespSentDelay"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultTiming;->intermediateRespSentDelay:Ljava/lang/String;

    .line 13
    return-void
.end method
