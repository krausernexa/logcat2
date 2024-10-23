.class public Lcom/ubtechinc/service/protocols/SpeechAngel;
.super Ljava/lang/Object;
.source "SpeechAngel.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field angel:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAngel()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/ubtechinc/service/protocols/SpeechAngel;->angel:I

    return v0
.end method

.method public setAngel(I)V
    .locals 0
    .param p1, "angel"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/ubtechinc/service/protocols/SpeechAngel;->angel:I

    .line 24
    return-void
.end method
