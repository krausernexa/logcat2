.class public Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileDownloader"


# instance fields
.field private block:I

.field private context:Landroid/content/Context;

.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private downloadSize:I

.field private downloadUrl:Ljava/lang/String;

.field private exit:Z

.field private fileService:Lcom/ubtech/alpha2/core/utils/download/service/FileService;

.field private fileSize:I

.field private saveFile:Ljava/io/File;

.field private threads:[Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ILjava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downloadUrl"    # Ljava/lang/String;
    .param p3, "fileSaveDir"    # Ljava/io/File;
    .param p4, "threadNum"    # I
    .param p5, "savaFileName"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v7, 0x0

    iput v7, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->downloadSize:I

    .line 37
    const/4 v7, 0x0

    iput v7, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->fileSize:I

    .line 43
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v7, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->data:Ljava/util/Map;

    .line 111
    :try_start_0
    iput-object p1, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->context:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->downloadUrl:Ljava/lang/String;

    .line 113
    new-instance v7, Lcom/ubtech/alpha2/core/utils/download/service/FileService;

    iget-object v8, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/ubtech/alpha2/core/utils/download/service/FileService;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->fileService:Lcom/ubtech/alpha2/core/utils/download/service/FileService;

    .line 114
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->downloadUrl:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 115
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 116
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 117
    :cond_0
    new-array v7, p4, [Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;

    iput-object v7, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->threads:[Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;

    .line 118
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 120
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const-string v7, "GET"

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 121
    const-string v7, "Accept"

    const-string v8, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v7, "Accept-Language"

    const-string v8, "zh-CN"

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v7, "Referer"

    invoke-virtual {v0, v7, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v7, "Charset"

    const-string v8, "UTF-8"

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v7, "User-Agent"

    const-string v8, "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)"

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v7, "Connection"

    const-string v8, "Keep-Alive"

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v7, "Accept-Encoding"

    const-string v8, "identity"

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 133
    invoke-static {v0}, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->printResponseHeader(Ljava/net/HttpURLConnection;)V

    .line 134
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_7

    .line 135
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    iput v7, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->fileSize:I

    .line 136
    iget v7, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->fileSize:I

    if-gtz v7, :cond_1

    .line 137
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Unkown file size "

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->print(Ljava/lang/String;)V

    .line 165
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "don\'t connection this url"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 139
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v6    # "url":Ljava/net/URL;
    :cond_1
    move-object/from16 v3, p5

    .line 140
    .local v3, "filename":Ljava/lang/String;
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p3, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->saveFile:Ljava/io/File;

    .line 141
    iget-object v7, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->saveFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 142
    iget-object v7, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->saveFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 144
    :cond_2
    iget-object v7, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->fileService:Lcom/ubtech/alpha2/core/utils/download/service/FileService;

    .line 145
    invoke-virtual {v7, p2}, Lcom/ubtech/alpha2/core/utils/download/service/FileService;->getData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 146
    .local v5, "logdata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 147
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 148
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->data:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 150
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_3
    iget-object v7, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->data:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    iget-object v8, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->threads:[Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;

    array-length v8, v8

    if-ne v7, v8, :cond_5

    .line 151
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v7, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->threads:[Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;

    array-length v7, v7

    if-ge v4, v7, :cond_4

    .line 152
    iget v8, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->downloadSize:I

    iget-object v7, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->data:Ljava/util/Map;

    add-int/lit8 v9, v4, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v8

    iput v7, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->downloadSize:I

    .line 151
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 154
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5df2\u7ecf\u4e0b\u8f7d\u7684\u957f\u5ea6"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->downloadSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->print(Ljava/lang/String;)V

    .line 157
    .end local v4    # "i":I
    :cond_5
    iget v7, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->fileSize:I

    iget-object v8, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->threads:[Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;

    array-length v8, v8

    rem-int/2addr v7, v8

    if-nez v7, :cond_6

    iget v7, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->fileSize:I

    iget-object v8, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->threads:[Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;

    array-length v8, v8

    div-int/2addr v7, v8

    :goto_2
    iput v7, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->block:I

    .line 167
    return-void

    .line 157
    :cond_6
    iget v7, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->fileSize:I

    iget-object v8, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->threads:[Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;

    array-length v8, v8

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 161
    .end local v3    # "filename":Ljava/lang/String;
    .end local v5    # "logdata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_7
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "server no response "

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private getFileName(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 7
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 173
    iget-object v4, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->downloadUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->downloadUrl:Ljava/lang/String;

    const/16 v6, 0x2f

    .line 174
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 173
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "filename":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    :cond_0
    const/4 v1, 0x0

    .line 177
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "mine":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v1    # "i":I
    .end local v3    # "mine":Ljava/lang/String;
    :cond_1
    move-object v4, v0

    .line 190
    :goto_1
    return-object v4

    .line 180
    .restart local v1    # "i":I
    .restart local v3    # "mine":Ljava/lang/String;
    :cond_2
    const-string v4, "content-disposition"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 182
    const-string v4, ".*filename=(.*)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 183
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 182
    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 184
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 185
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 176
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getHttpResponseHeader(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 4
    .param p0, "http"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 271
    .local v0, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 272
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "mine":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 277
    return-object v0

    .line 275
    :cond_0
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static print(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 294
    const-string v0, "FileDownloader"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method public static printResponseHeader(Ljava/net/HttpURLConnection;)V
    .locals 6
    .param p0, "http"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 286
    invoke-static {p0}, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->getHttpResponseHeader(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v1

    .line 287
    .local v1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 288
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "key":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    const-string v2, ""

    goto :goto_1

    .line 291
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method protected declared-synchronized append(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->downloadSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->downloadSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public download(Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadProgressListener;)I
    .locals 14
    .param p1, "listener"    # Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    .line 203
    :try_start_0
    new-instance v11, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->saveFile:Ljava/io/File;

    const-string v1, "rw"

    invoke-direct {v11, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    .local v11, "randOut":Ljava/io/RandomAccessFile;
    iget v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->fileSize:I

    if-lez v0, :cond_0

    .line 205
    iget v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->fileSize:I

    int-to-long v0, v0

    invoke-virtual {v11, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 206
    :cond_0
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 207
    new-instance v2, Ljava/net/URL;

    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->downloadUrl:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 208
    .local v2, "url":Ljava/net/URL;
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->threads:[Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;

    array-length v1, v1

    if-eq v0, v1, :cond_2

    .line 209
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 210
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->threads:[Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;

    array-length v0, v0

    if-ge v9, v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->data:Ljava/util/Map;

    add-int/lit8 v1, v9, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 213
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->downloadSize:I

    .line 215
    .end local v9    # "i":I
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_1
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->threads:[Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;

    array-length v0, v0

    if-ge v9, v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->data:Ljava/util/Map;

    add-int/lit8 v1, v9, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 217
    .local v7, "downLength":I
    iget v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->block:I

    if-ge v7, v0, :cond_3

    iget v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->downloadSize:I

    iget v1, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->fileSize:I

    if-ge v0, v1, :cond_3

    .line 219
    iget-object v13, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->threads:[Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;

    new-instance v0, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;

    iget-object v3, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->saveFile:Ljava/io/File;

    iget v4, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->block:I

    iget-object v1, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->data:Ljava/util/Map;

    add-int/lit8 v5, v9, 0x1

    .line 220
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v9, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;-><init>(Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;Ljava/net/URL;Ljava/io/File;III)V

    aput-object v0, v13, v9

    .line 222
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->threads:[Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;

    aget-object v0, v0, v9

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->setPriority(I)V

    .line 223
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->threads:[Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->start()V

    .line 215
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->threads:[Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;

    const/4 v1, 0x0

    aput-object v1, v0, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 255
    .end local v2    # "url":Ljava/net/URL;
    .end local v7    # "downLength":I
    .end local v9    # "i":I
    .end local v11    # "randOut":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v8

    .line 256
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->print(Ljava/lang/String;)V

    .line 257
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "file download error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v9    # "i":I
    .restart local v11    # "randOut":Ljava/io/RandomAccessFile;
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->fileService:Lcom/ubtech/alpha2/core/utils/download/service/FileService;

    iget-object v1, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ubtech/alpha2/core/utils/download/service/FileService;->delete(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->fileService:Lcom/ubtech/alpha2/core/utils/download/service/FileService;

    iget-object v1, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->downloadUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->data:Ljava/util/Map;

    invoke-virtual {v0, v1, v3}, Lcom/ubtech/alpha2/core/utils/download/service/FileService;->save(Ljava/lang/String;Ljava/util/Map;)V

    .line 230
    const/4 v10, 0x1

    .line 231
    .local v10, "notFinish":Z
    :cond_5
    :goto_3
    if-eqz v10, :cond_8

    .line 232
    const-wide/16 v0, 0x384

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 233
    const/4 v10, 0x0

    .line 234
    const/4 v9, 0x0

    :goto_4
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->threads:[Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;

    array-length v0, v0

    if-ge v9, v0, :cond_7

    .line 235
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->threads:[Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;

    aget-object v0, v0, v9

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->threads:[Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->isFinish()Z

    move-result v0

    if-nez v0, :cond_6

    .line 236
    const/4 v10, 0x1

    .line 237
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->threads:[Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;->getDownLength()J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    .line 243
    const/4 v10, 0x0

    .line 244
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadProgressListener;->onDownloadSize(I)V

    move v0, v12

    .line 259
    :goto_5
    return v0

    .line 234
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 249
    :cond_7
    if-eqz p1, :cond_5

    .line 250
    iget v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->downloadSize:I

    invoke-interface {p1, v0}, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadProgressListener;->onDownloadSize(I)V

    goto :goto_3

    .line 253
    :cond_8
    iget v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->downloadSize:I

    iget v1, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->fileSize:I

    if-ne v0, v1, :cond_9

    .line 254
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->fileService:Lcom/ubtech/alpha2/core/utils/download/service/FileService;

    iget-object v1, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ubtech/alpha2/core/utils/download/service/FileService;->delete(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 259
    :cond_9
    iget v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->downloadSize:I

    goto :goto_5
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->exit:Z

    .line 61
    return-void
.end method

.method public getExit()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->exit:Z

    return v0
.end method

.method public getFileSize()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->fileSize:I

    return v0
.end method

.method public getThreadSize()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->threads:[Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadThread;

    array-length v0, v0

    return v0
.end method

.method protected declared-synchronized update(II)V
    .locals 3
    .param p1, "threadId"    # I
    .param p2, "pos"    # I

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->data:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->fileService:Lcom/ubtech/alpha2/core/utils/download/service/FileService;

    iget-object v1, p0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ubtech/alpha2/core/utils/download/service/FileService;->update(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
