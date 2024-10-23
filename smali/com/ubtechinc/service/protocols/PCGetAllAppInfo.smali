.class public Lcom/ubtechinc/service/protocols/PCGetAllAppInfo;
.super Ljava/lang/Object;
.source "PCGetAllAppInfo.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private isPCRequest:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isPCRequest()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/ubtechinc/service/protocols/PCGetAllAppInfo;->isPCRequest:Z

    return v0
.end method

.method public setPCRequest(Z)V
    .locals 0
    .param p1, "isPCRequest"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/ubtechinc/service/protocols/PCGetAllAppInfo;->isPCRequest:Z

    .line 23
    return-void
.end method
