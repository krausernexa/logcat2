.class public Lcom/ubtechinc/service/protocols/LoginResponse;
.super Ljava/lang/Object;
.source "LoginResponse.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private result:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()S
    .locals 1

    .prologue
    .line 18
    iget-short v0, p0, Lcom/ubtechinc/service/protocols/LoginResponse;->result:S

    return v0
.end method

.method public setResult(S)V
    .locals 0
    .param p1, "result"    # S

    .prologue
    .line 22
    iput-short p1, p0, Lcom/ubtechinc/service/protocols/LoginResponse;->result:S

    .line 23
    return-void
.end method
