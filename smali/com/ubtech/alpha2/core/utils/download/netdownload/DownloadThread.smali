.class public Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;
.super Ljava/lang/Thread;
.source "DownloadThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadThread"


# instance fields
.field private block:I

.field private downLength:I

.field private downUrl:Ljava/net/URL;

.field private downloader:Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;

.field private finish:Z

.field private saveFile:Ljava/io/File;

.field private threadId:I


# direct methods
.method public constructor <init>(Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;Ljava/net/URL;Ljava/io/File;III)V
    .locals 1
    .param p1, "downloader"    # Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;
    .param p2, "downUrl"    # Ljava/net/URL;
    .param p3, "saveFile"    # Ljava/io/File;
    .param p4, "block"    # I
    .param p5, "downLength"    # I
    .param p6, "threadId"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->threadId:I

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->finish:Z

    .line 28
    iput-object p2, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->downUrl:Ljava/net/URL;

    .line 29
    iput-object p3, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->saveFile:Ljava/io/File;

    .line 30
    iput p4, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->block:I

    .line 31
    iput-object p1, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->downloader:Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;

    .line 32
    iput p6, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->threadId:I

    .line 33
    iput p5, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->downLength:I

    .line 34
    return-void
.end method

.method private static print(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v0, "DownloadThread"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method


# virtual methods
.method public getDownLength()J
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->downLength:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public isFinish()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->finish:Z

    return v0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    .line 38
    iget v8, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->downLength:I

    iget v9, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->block:I

    if-ge v8, v9, :cond_0

    .line 40
    :try_start_0
    iget-object v8, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->downUrl:Ljava/net/URL;

    .line 41
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 43
    .local v3, "http":Ljava/net/HttpURLConnection;
    const-string v8, "GET"

    invoke-virtual {v3, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 44
    const-string v8, "Accept"

    const-string v9, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    invoke-virtual {v3, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v8, "Accept-Language"

    const-string v9, "zh-CN"

    invoke-virtual {v3, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v8, "Referer"

    iget-object v9, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->downUrl:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v8, "Charset"

    const-string v9, "UTF-8"

    invoke-virtual {v3, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget v8, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->block:I

    iget v9, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->threadId:I

    add-int/lit8 v9, v9, -0x1

    mul-int/2addr v8, v9

    iget v9, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->downLength:I

    add-int v6, v8, v9

    .line 51
    .local v6, "startPos":I
    iget v8, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->block:I

    iget v9, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->threadId:I

    mul-int/2addr v8, v9

    add-int/lit8 v2, v8, -0x1

    .line 52
    .local v2, "endPos":I
    const-string v8, "Range"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bytes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v8, "User-Agent"

    const-string v9, "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)"

    invoke-virtual {v3, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v8, "Connection"

    const-string v9, "Keep-Alive"

    invoke-virtual {v3, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v8, "Accept-Encoding"

    const-string v9, "identity"

    invoke-virtual {v3, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 60
    .local v4, "inStream":Ljava/io/InputStream;
    const/16 v8, 0x2800

    new-array v0, v8, [B

    .line 61
    .local v0, "buffer":[B
    const/4 v5, 0x0

    .line 62
    .local v5, "offset":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Thread "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->threadId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " start download from position "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->print(Ljava/lang/String;)V

    .line 64
    new-instance v7, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->saveFile:Ljava/io/File;

    const-string v9, "rwd"

    invoke-direct {v7, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    .local v7, "threadfile":Ljava/io/RandomAccessFile;
    int-to-long v8, v6

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 67
    :goto_0
    iget-object v8, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->downloader:Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;

    invoke-virtual {v8}, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->getExit()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x0

    const/16 v9, 0x2800

    .line 68
    invoke-virtual {v4, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v5, v11, :cond_1

    .line 69
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 70
    iget v8, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->downLength:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->downLength:I

    .line 71
    iget-object v8, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->downloader:Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;

    iget v9, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->threadId:I

    iget v10, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->downLength:I

    invoke-virtual {v8, v9, v10}, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->update(II)V

    .line 72
    iget-object v8, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->downloader:Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;

    invoke-virtual {v8, v5}, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->append(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    .end local v0    # "buffer":[B
    .end local v2    # "endPos":I
    .end local v3    # "http":Ljava/net/HttpURLConnection;
    .end local v4    # "inStream":Ljava/io/InputStream;
    .end local v5    # "offset":I
    .end local v6    # "startPos":I
    .end local v7    # "threadfile":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    iput v11, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->downLength:I

    .line 81
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Thread "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->threadId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->print(Ljava/lang/String;)V

    .line 84
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 74
    .restart local v0    # "buffer":[B
    .restart local v2    # "endPos":I
    .restart local v3    # "http":Ljava/net/HttpURLConnection;
    .restart local v4    # "inStream":Ljava/io/InputStream;
    .restart local v5    # "offset":I
    .restart local v6    # "startPos":I
    .restart local v7    # "threadfile":Ljava/io/RandomAccessFile;
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 75
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 76
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Thread "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->threadId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " download finish"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->print(Ljava/lang/String;)V

    .line 77
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->finish:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
