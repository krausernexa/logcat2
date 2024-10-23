.class public Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;
.super Ljava/lang/Thread;
.source "DownloadThread2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2$CancelTask;
    }
.end annotation


# instance fields
.field private bean:Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;

.field private conn:Ljava/net/HttpURLConnection;

.field private is:Ljava/io/InputStream;

.field private isCancel:Z

.field private length:I

.field private mCancelTask:Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2$CancelTask;

.field private os:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;)V
    .locals 1
    .param p1, "bean"    # Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->bean:Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;

    .line 49
    iput-object p1, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->bean:Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;

    .line 50
    new-instance v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2$CancelTask;

    invoke-direct {v0, p0}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2$CancelTask;-><init>(Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;)V

    iput-object v0, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->mCancelTask:Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2$CancelTask;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p0, "x0"    # Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 0
    .param p0, "x0"    # Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;
    .param p1, "x1"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized isCancel()Z
    .locals 1

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->isCancel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 19

    .prologue
    .line 58
    :try_start_0
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->bean:Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;

    invoke-virtual {v15}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->getDownUrl()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 59
    .local v13, "imageUrl":Ljava/net/URL;
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v15, "yyyy-MM-dd  HH:mm:ss:SSS  "

    invoke-direct {v12, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 61
    .local v12, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v7, v0, v1}, Ljava/sql/Date;-><init>(J)V

    .line 62
    .local v7, "curDate":Ljava/sql/Date;
    invoke-virtual {v12, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "Time":Ljava/lang/String;
    const-string v15, "zdy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "begin = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->bean:Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->getFileSaveDir()Ljava/io/File;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->os:Ljava/io/FileOutputStream;

    .line 66
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    check-cast v15, Ljava/net/HttpURLConnection;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    .line 67
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    const/16 v16, 0x7530

    invoke-virtual/range {v15 .. v16}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 68
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    const/16 v16, 0x7530

    invoke-virtual/range {v15 .. v16}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 69
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 70
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    const-string v16, "Accept-Encoding"

    const-string v17, "identity"

    invoke-virtual/range {v15 .. v17}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    const-string v16, "GET"

    invoke-virtual/range {v15 .. v16}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->connect()V

    .line 73
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 74
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v11

    .line 75
    .local v11, "fileSize":I
    if-gtz v11, :cond_0

    .line 76
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->bean:Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;

    invoke-virtual {v15}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->getListener()Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->bean:Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->getRequestCode()I

    move-result v16

    const/16 v17, -0x4

    invoke-interface/range {v15 .. v17}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;->onDowanFailed(II)V

    .line 78
    const-string v15, "zdy"

    const-string v16, "--->\u6587\u4ef6\u5927\u5c0f\u9519\u8bef"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->is:Ljava/io/InputStream;

    .line 81
    const v4, 0x19000

    .line 84
    .local v4, "buffer_size":I
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->length:I

    .line 85
    const/4 v14, 0x0

    .line 86
    .local v14, "proress":I
    const v15, 0x19000

    new-array v5, v15, [B

    .line 87
    .local v5, "bytes":[B
    const/4 v6, 0x0

    .line 88
    .local v6, "count":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->isCancel()Z

    move-result v15

    if-nez v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->is:Ljava/io/InputStream;

    const/16 v16, 0x0

    const v17, 0x19000

    .line 89
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v5, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v15, -0x1

    if-eq v6, v15, :cond_4

    .line 90
    move-object/from16 v0, p0

    iget v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->length:I

    add-int/2addr v15, v6

    move-object/from16 v0, p0

    iput v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->length:I

    .line 91
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->os:Ljava/io/FileOutputStream;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 92
    move-object/from16 v0, p0

    iget v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->length:I

    int-to-float v15, v15

    int-to-float v0, v11

    move/from16 v16, v0

    div-float v15, v15, v16

    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v15, v15, v16

    float-to-int v14, v15

    .line 93
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->bean:Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;

    invoke-virtual {v15}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->getListener()Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->bean:Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->getRequestCode()I

    move-result v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;->onProgrerss(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    .line 110
    .end local v2    # "Time":Ljava/lang/String;
    .end local v4    # "buffer_size":I
    .end local v5    # "bytes":[B
    .end local v6    # "count":I
    .end local v7    # "curDate":Ljava/sql/Date;
    .end local v11    # "fileSize":I
    .end local v12    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v13    # "imageUrl":Ljava/net/URL;
    .end local v14    # "proress":I
    :catch_0
    move-exception v9

    .line 112
    .local v9, "e":Ljava/net/MalformedURLException;
    :try_start_1
    invoke-virtual {v9}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 113
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->bean:Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;

    invoke-virtual {v15}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->getListener()Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->bean:Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->getRequestCode()I

    move-result v16

    const/16 v17, -0x1

    invoke-interface/range {v15 .. v17}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;->onDowanFailed(II)V

    .line 115
    const-string v15, "zdy"

    const-string v16, "url \u683c\u5f0f\u9519\u8bef"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 129
    invoke-static {}, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->getInstance()Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->bean:Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;

    move-object/from16 v16, v0

    .line 130
    invoke-virtual/range {v16 .. v16}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->getRequestCode()I

    move-result v16

    .line 129
    invoke-virtual/range {v15 .. v16}, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->removeDownload(I)V

    .line 132
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->is:Ljava/io/InputStream;

    if-eqz v15, :cond_1

    .line 133
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->is:Ljava/io/InputStream;

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 134
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->is:Ljava/io/InputStream;

    .line 136
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->os:Ljava/io/FileOutputStream;

    if-eqz v15, :cond_2

    .line 137
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->os:Ljava/io/FileOutputStream;

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 138
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->os:Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 144
    .end local v9    # "e":Ljava/net/MalformedURLException;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    if-eqz v15, :cond_3

    .line 145
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->isCancel:Z

    if-nez v15, :cond_3

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 147
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 148
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    .line 149
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 152
    :cond_3
    const-string v15, "zdy"

    const-string v16, "finally conn.disconnect()"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_2
    return-void

    .line 96
    .restart local v2    # "Time":Ljava/lang/String;
    .restart local v4    # "buffer_size":I
    .restart local v5    # "bytes":[B
    .restart local v6    # "count":I
    .restart local v7    # "curDate":Ljava/sql/Date;
    .restart local v11    # "fileSize":I
    .restart local v12    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v13    # "imageUrl":Ljava/net/URL;
    .restart local v14    # "proress":I
    :cond_4
    const/4 v15, 0x1

    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->setRunning(Z)V

    .line 98
    new-instance v8, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v8, v0, v1}, Ljava/sql/Date;-><init>(J)V

    .line 99
    .local v8, "curDate2":Ljava/sql/Date;
    invoke-virtual {v12, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "Time2":Ljava/lang/String;
    const-string v15, "zdy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "end = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    move-object/from16 v0, p0

    iget v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->length:I

    if-ne v15, v11, :cond_5

    .line 103
    const-string v15, "zdy"

    const-string v16, "\u5b8c\u6210"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->bean:Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;

    invoke-virtual {v15}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->getListener()Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->bean:Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->getRequestCode()I

    move-result v16

    invoke-interface/range {v15 .. v16}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;->onDownloadOver(I)V

    .line 106
    :cond_5
    const-string v15, "zdy"

    const-string v16, "\u7ebf\u7a0b\u7ed3\u675f"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 129
    .end local v3    # "Time2":Ljava/lang/String;
    .end local v4    # "buffer_size":I
    .end local v5    # "bytes":[B
    .end local v6    # "count":I
    .end local v8    # "curDate2":Ljava/sql/Date;
    .end local v11    # "fileSize":I
    .end local v14    # "proress":I
    :cond_6
    invoke-static {}, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->getInstance()Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->bean:Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;

    move-object/from16 v16, v0

    .line 130
    invoke-virtual/range {v16 .. v16}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->getRequestCode()I

    move-result v16

    .line 129
    invoke-virtual/range {v15 .. v16}, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->removeDownload(I)V

    .line 132
    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->is:Ljava/io/InputStream;

    if-eqz v15, :cond_7

    .line 133
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->is:Ljava/io/InputStream;

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 134
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->is:Ljava/io/InputStream;

    .line 136
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->os:Ljava/io/FileOutputStream;

    if-eqz v15, :cond_8

    .line 137
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->os:Ljava/io/FileOutputStream;

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 138
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->os:Ljava/io/FileOutputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 144
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    if-eqz v15, :cond_9

    .line 145
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->isCancel:Z

    if-nez v15, :cond_9

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 147
    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 148
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    .line 149
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 152
    :cond_9
    const-string v15, "zdy"

    const-string v16, "finally conn.disconnect()"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 140
    :catch_1
    move-exception v9

    .line 142
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 149
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    :try_start_7
    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v15

    .line 140
    .end local v2    # "Time":Ljava/lang/String;
    .end local v7    # "curDate":Ljava/sql/Date;
    .end local v12    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v13    # "imageUrl":Ljava/net/URL;
    .local v9, "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v9

    .line 142
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 149
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v15

    :try_start_8
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v15

    .line 116
    :catch_3
    move-exception v10

    .line 117
    .local v10, "ex":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->isCancel:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 119
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->bean:Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;

    invoke-virtual {v15}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->getListener()Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->bean:Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->getRequestCode()I

    move-result v16

    const/16 v17, -0x3

    invoke-interface/range {v15 .. v17}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;->onDowanFailed(II)V

    .line 121
    const-string v15, "zdy"

    const-string v16, "\u65e0\u7f51\u7edc\u8fde\u63a5+\u624b\u52a8\u53d6\u6d88"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 129
    :goto_4
    invoke-static {}, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->getInstance()Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->bean:Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;

    move-object/from16 v16, v0

    .line 130
    invoke-virtual/range {v16 .. v16}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->getRequestCode()I

    move-result v16

    .line 129
    invoke-virtual/range {v15 .. v16}, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->removeDownload(I)V

    .line 132
    :try_start_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->is:Ljava/io/InputStream;

    if-eqz v15, :cond_a

    .line 133
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->is:Ljava/io/InputStream;

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 134
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->is:Ljava/io/InputStream;

    .line 136
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->os:Ljava/io/FileOutputStream;

    if-eqz v15, :cond_b

    .line 137
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->os:Ljava/io/FileOutputStream;

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 138
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->os:Ljava/io/FileOutputStream;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 144
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    if-eqz v15, :cond_c

    .line 145
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->isCancel:Z

    if-nez v15, :cond_c

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 147
    :try_start_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 148
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    .line 149
    monitor-exit v16
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 152
    :cond_c
    const-string v15, "zdy"

    const-string v16, "finally conn.disconnect()"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 123
    :cond_d
    :try_start_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->bean:Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;

    invoke-virtual {v15}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->getListener()Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->bean:Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->getRequestCode()I

    move-result v16

    const/16 v17, -0x2

    invoke-interface/range {v15 .. v17}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;->onDowanFailed(II)V

    .line 125
    const-string v15, "zdy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_4

    .line 129
    .end local v10    # "ex":Ljava/lang/Exception;
    :catchall_2
    move-exception v15

    invoke-static {}, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->getInstance()Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->bean:Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;

    move-object/from16 v17, v0

    .line 130
    invoke-virtual/range {v17 .. v17}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;->getRequestCode()I

    move-result v17

    .line 129
    invoke-virtual/range {v16 .. v17}, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->removeDownload(I)V

    .line 132
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->is:Ljava/io/InputStream;

    move-object/from16 v16, v0

    if-eqz v16, :cond_e

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->is:Ljava/io/InputStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 134
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->is:Ljava/io/InputStream;

    .line 136
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->os:Ljava/io/FileOutputStream;

    move-object/from16 v16, v0

    if-eqz v16, :cond_f

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->os:Ljava/io/FileOutputStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 138
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->os:Ljava/io/FileOutputStream;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 144
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v16, v0

    if-eqz v16, :cond_10

    .line 145
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->isCancel:Z

    move/from16 v16, v0

    if-nez v16, :cond_10

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 147
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 148
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->conn:Ljava/net/HttpURLConnection;

    .line 149
    monitor-exit v16
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 152
    :cond_10
    const-string v16, "zdy"

    const-string v17, "finally conn.disconnect()"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v15

    .line 140
    .restart local v10    # "ex":Ljava/lang/Exception;
    :catch_4
    move-exception v9

    .line 142
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 149
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v15

    :try_start_f
    monitor-exit v16
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v15

    .line 140
    .end local v10    # "ex":Ljava/lang/Exception;
    :catch_5
    move-exception v9

    .line 142
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 149
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v15

    :try_start_10
    monitor-exit v16
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v15
.end method

.method public declared-synchronized setCancel()V
    .locals 1

    .prologue
    .line 43
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->isCancel:Z

    .line 45
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->mCancelTask:Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2$CancelTask;

    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2$CancelTask;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRunning(Z)V
    .locals 1
    .param p1, "isCancel"    # Z

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->isCancel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
