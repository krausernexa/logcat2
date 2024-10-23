.class public Lcom/ubtechinc/service/protocols/TransferPhotoInfo;
.super Ljava/lang/Object;
.source "TransferPhotoInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private amount:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field private delPics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field

.field private path:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field private type:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/service/protocols/TransferPhotoInfo;->delPics:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/ubtechinc/service/protocols/TransferPhotoInfo;->amount:I

    return v0
.end method

.method public getDelPics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/TransferPhotoInfo;->delPics:Ljava/util/List;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/TransferPhotoInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/ubtechinc/service/protocols/TransferPhotoInfo;->type:I

    return v0
.end method

.method public setAmount(I)V
    .locals 0
    .param p1, "amount"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/ubtechinc/service/protocols/TransferPhotoInfo;->amount:I

    .line 64
    return-void
.end method

.method public setDelPics(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "delPics":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/TransferPhotoInfo;->delPics:Ljava/util/List;

    .line 73
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/TransferPhotoInfo;->path:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/ubtechinc/service/protocols/TransferPhotoInfo;->type:I

    .line 55
    return-void
.end method
