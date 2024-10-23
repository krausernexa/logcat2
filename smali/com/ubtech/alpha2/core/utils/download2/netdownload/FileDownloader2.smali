.class public Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;
.super Ljava/lang/Object;
.source "FileDownloader2.java"


# static fields
.field public static final CANCEL_CODE:I = -0x3

.field public static final CONNECT_ERROR_CODE:I = -0x5

.field public static final HTTP_ERROR_CODE:I = -0x2

.field public static final SIZE_ERROR_CODE:I = -0x4

.field public static final URL_ERROR_CODE:I = -0x1


# instance fields
.field private downUrl:Ljava/lang/String;

.field private downflag:Z

.field private fileSaveDir:Ljava/io/File;

.field private isRefresh:Z

.field private listener:Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;

.field private requestCode:I

.field private result:Ljava/lang/Object;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;Ljava/io/File;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "downflag"    # Z
    .param p3, "downUrl"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;
    .param p5, "file"    # Ljava/io/File;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->requestCode:I

    .line 68
    iput-boolean p2, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->downflag:Z

    .line 69
    iput-object p3, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->downUrl:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->listener:Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;

    .line 71
    iput-object p5, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->fileSaveDir:Ljava/io/File;

    .line 72
    return-void
.end method


# virtual methods
.method public getDownUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->downUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSaveDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->fileSaveDir:Ljava/io/File;

    return-object v0
.end method

.method public getListener()Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->listener:Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->requestCode:I

    return v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->state:I

    return v0
.end method

.method public isDownflag()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->downflag:Z

    return v0
.end method

.method public isRefresh()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->isRefresh:Z

    return v0
.end method

.method public setDownUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downUrl"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->downUrl:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setDownflag(Z)V
    .locals 0
    .param p1, "downflag"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->downflag:Z

    .line 96
    return-void
.end method

.method public setFileSaveDir(Ljava/io/File;)V
    .locals 0
    .param p1, "fileSaveDir"    # Ljava/io/File;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->fileSaveDir:Ljava/io/File;

    .line 28
    return-void
.end method

.method public setListener(Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;)V
    .locals 0
    .param p1, "listener"    # Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->listener:Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;

    .line 128
    return-void
.end method

.method public setRefresh(Z)V
    .locals 0
    .param p1, "isRefresh"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->isRefresh:Z

    .line 88
    return-void
.end method

.method public setRequestCode(I)V
    .locals 0
    .param p1, "requestCode"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->requestCode:I

    .line 80
    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->result:Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->state:I

    .line 112
    return-void
.end method
