.class public abstract Lcom/ubtechinc/alphaenglishchat/domain/DomainAbstract;
.super Ljava/lang/Object;
.source "DomainAbstract.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancelAction()V
.end method

.method public abstract isBusy()Z
.end method

.method public abstract process(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V
.end method
