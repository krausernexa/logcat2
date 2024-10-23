.class public Lcom/ubtechinc/service/protocols/ManagerTTS;
.super Ljava/lang/Object;
.source "ManagerTTS.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field lauguage:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field text:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field type:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field voiceName:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLauguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/ManagerTTS;->lauguage:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/ManagerTTS;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/ubtechinc/service/protocols/ManagerTTS;->type:I

    return v0
.end method

.method public getVoiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/ManagerTTS;->voiceName:Ljava/lang/String;

    return-object v0
.end method

.method public setLauguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "lauguage"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/ManagerTTS;->lauguage:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/ManagerTTS;->text:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/ubtechinc/service/protocols/ManagerTTS;->type:I

    .line 46
    return-void
.end method

.method public setVoiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "voiceName"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/ManagerTTS;->voiceName:Ljava/lang/String;

    .line 70
    return-void
.end method
