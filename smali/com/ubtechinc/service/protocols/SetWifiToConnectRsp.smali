.class public Lcom/ubtechinc/service/protocols/SetWifiToConnectRsp;
.super Ljava/lang/Object;
.source "SetWifiToConnectRsp.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/ubtechinc/service/protocols/SetWifiToConnectRsp;->result:I

    return v0
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/ubtechinc/service/protocols/SetWifiToConnectRsp;->result:I

    .line 23
    return-void
.end method
