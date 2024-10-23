.class public Lcom/ubtechinc/service/protocols/FindMobilePhoneData;
.super Ljava/lang/Object;
.source "FindMobilePhoneData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private isSendByClient:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSendByClient()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/ubtechinc/service/protocols/FindMobilePhoneData;->isSendByClient:Z

    return v0
.end method

.method public setSendByClient(Z)V
    .locals 0
    .param p1, "isSendByClient"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/ubtechinc/service/protocols/FindMobilePhoneData;->isSendByClient:Z

    .line 26
    return-void
.end method
