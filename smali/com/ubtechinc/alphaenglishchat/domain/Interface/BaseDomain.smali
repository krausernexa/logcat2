.class public abstract Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;
.super Ljava/lang/Object;
.source "BaseDomain.java"


# instance fields
.field private busy:Z

.field private context:Landroid/content/Context;

.field private ubtHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancelAction()V
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getUbtHandler()Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;->ubtHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    return-object v0
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;->busy:Z

    return v0
.end method

.method public abstract process(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V
.end method

.method public setBusy(Z)V
    .locals 0
    .param p1, "busy"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;->busy:Z

    .line 32
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;->context:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public setUbtHandler(Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)V
    .locals 0
    .param p1, "ubtHandler"    # Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;->ubtHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .line 20
    return-void
.end method
