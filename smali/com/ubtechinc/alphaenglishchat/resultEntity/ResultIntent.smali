.class public Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultIntent;
.super Ljava/lang/Object;
.source "ResultIntent.java"


# instance fields
.field private confidence:F

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultIntent;->confidence:F

    return-void
.end method


# virtual methods
.method public getConfidence()F
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultIntent;->confidence:F

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultIntent;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setConfidence(F)V
    .locals 0
    .param p1, "confidence"    # F

    .prologue
    .line 12
    iput p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultIntent;->confidence:F

    .line 13
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultIntent;->value:Ljava/lang/String;

    .line 19
    return-void
.end method
