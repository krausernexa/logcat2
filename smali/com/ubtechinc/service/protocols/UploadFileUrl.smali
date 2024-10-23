.class public Lcom/ubtechinc/service/protocols/UploadFileUrl;
.super Ljava/lang/Object;
.source "UploadFileUrl.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private fileUrl:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/UploadFileUrl;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setFileUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileUrl"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/UploadFileUrl;->fileUrl:Ljava/lang/String;

    .line 26
    return-void
.end method
