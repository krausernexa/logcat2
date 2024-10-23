.class public Lcom/ubtechinc/service/protocols/SavaActionProfileXMLRespone;
.super Ljava/lang/Object;
.source "SavaActionProfileXMLRespone.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private result:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()S
    .locals 1

    .prologue
    .line 27
    iget-short v0, p0, Lcom/ubtechinc/service/protocols/SavaActionProfileXMLRespone;->result:S

    return v0
.end method

.method public setResult(S)V
    .locals 0
    .param p1, "result"    # S

    .prologue
    .line 31
    iput-short p1, p0, Lcom/ubtechinc/service/protocols/SavaActionProfileXMLRespone;->result:S

    .line 32
    return-void
.end method
