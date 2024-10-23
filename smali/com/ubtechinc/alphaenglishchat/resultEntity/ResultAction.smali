.class public Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultAction;
.super Ljava/lang/Object;
.source "ResultAction.java"


# instance fields
.field private intent:Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultIntent;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultAction;->intent:Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultIntent;

    return-object v0
.end method

.method public setIntent(Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultIntent;)V
    .locals 0
    .param p1, "intent"    # Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultIntent;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultAction;->intent:Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultIntent;

    .line 14
    return-void
.end method
