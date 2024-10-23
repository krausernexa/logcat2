.class public Lcom/ubtechinc/service/protocols/DeleteActionFileRsp;
.super Ljava/lang/Object;
.source "DeleteActionFileRsp.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private filename:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field private result:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/DeleteActionFileRsp;->filename:Ljava/lang/String;

    .line 44
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/ubtechinc/service/protocols/DeleteActionFileRsp;->deleteFile(Ljava/io/File;)V

    .line 47
    const/16 v3, 0x5c

    const/16 v4, 0x2f

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "filePath":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    .line 49
    .local v2, "nIndex":I
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "FolderName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/ubtechinc/service/protocols/DeleteActionFileRsp;->deleteFile(Ljava/io/File;)V

    .line 52
    iput v5, p0, Lcom/ubtechinc/service/protocols/DeleteActionFileRsp;->result:I

    .line 53
    return-void
.end method


# virtual methods
.method public deleteFile(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 27
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 36
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 40
    :cond_1
    return-void

    .line 30
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 32
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 33
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/ubtechinc/service/protocols/DeleteActionFileRsp;->deleteFile(Ljava/io/File;)V

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/DeleteActionFileRsp;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/ubtechinc/service/protocols/DeleteActionFileRsp;->result:I

    return v0
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/DeleteActionFileRsp;->filename:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/ubtechinc/service/protocols/DeleteActionFileRsp;->result:I

    .line 75
    return-void
.end method
