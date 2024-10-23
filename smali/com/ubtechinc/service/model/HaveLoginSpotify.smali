.class public Lcom/ubtechinc/service/model/HaveLoginSpotify;
.super Ljava/lang/Object;
.source "HaveLoginSpotify.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private isLogin:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isLogin()Z
    .locals 1

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/ubtechinc/service/model/HaveLoginSpotify;->isLogin:Z

    return v0
.end method

.method public setLogin(Z)V
    .locals 0
    .param p1, "isLogin"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/ubtechinc/service/model/HaveLoginSpotify;->isLogin:Z

    .line 15
    return-void
.end method
