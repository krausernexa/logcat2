.class public Lcom/ubtechinc/service/protocols/FileUpLoadInfoRsp;
.super Ljava/lang/Object;
.source "FileUpLoadInfoRsp.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private fileLens:J
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field private fileName:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field private ipAddress:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field

.field private port:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field private status:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileLens()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/ubtechinc/service/protocols/FileUpLoadInfoRsp;->fileLens:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/FileUpLoadInfoRsp;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/FileUpLoadInfoRsp;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/ubtechinc/service/protocols/FileUpLoadInfoRsp;->port:I

    return v0
.end method

.method public isStatus()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/ubtechinc/service/protocols/FileUpLoadInfoRsp;->status:Z

    return v0
.end method

.method public setFileLens(J)V
    .locals 1
    .param p1, "fileLens"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/ubtechinc/service/protocols/FileUpLoadInfoRsp;->fileLens:J

    .line 49
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/FileUpLoadInfoRsp;->fileName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/FileUpLoadInfoRsp;->ipAddress:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/ubtechinc/service/protocols/FileUpLoadInfoRsp;->port:I

    .line 43
    return-void
.end method

.method public setStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/ubtechinc/service/protocols/FileUpLoadInfoRsp;->status:Z

    .line 67
    return-void
.end method
