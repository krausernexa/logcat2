.class public Lcom/ubtechinc/service/protocols/Alpha2Version;
.super Ljava/lang/Object;
.source "Alpha2Version.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private state:B
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()B
    .locals 1

    .prologue
    .line 28
    iget-byte v0, p0, Lcom/ubtechinc/service/protocols/Alpha2Version;->state:B

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/Alpha2Version;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setState(B)V
    .locals 0
    .param p1, "state"    # B

    .prologue
    .line 32
    iput-byte p1, p0, Lcom/ubtechinc/service/protocols/Alpha2Version;->state:B

    .line 33
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/Alpha2Version;->version:Ljava/lang/String;

    .line 41
    return-void
.end method
