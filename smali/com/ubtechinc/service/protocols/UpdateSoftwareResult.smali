.class public Lcom/ubtechinc/service/protocols/UpdateSoftwareResult;
.super Ljava/lang/Object;
.source "UpdateSoftwareResult.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private result:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/ubtechinc/service/protocols/UpdateSoftwareResult;->result:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/ubtechinc/service/protocols/UpdateSoftwareResult;->type:I

    return v0
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/ubtechinc/service/protocols/UpdateSoftwareResult;->result:I

    .line 23
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/ubtechinc/service/protocols/UpdateSoftwareResult;->type:I

    .line 31
    return-void
.end method
