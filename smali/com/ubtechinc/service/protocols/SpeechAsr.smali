.class public Lcom/ubtechinc/service/protocols/SpeechAsr;
.super Ljava/lang/Object;
.source "SpeechAsr.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field asrResult:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field type:I
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
.method public getAsrResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/SpeechAsr;->asrResult:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/ubtechinc/service/protocols/SpeechAsr;->type:I

    return v0
.end method

.method public setAsrResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "asrResult"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/SpeechAsr;->asrResult:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/ubtechinc/service/protocols/SpeechAsr;->type:I

    .line 33
    return-void
.end method
