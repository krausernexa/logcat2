.class public Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;
.super Ljava/lang/Object;
.source "DownloadTaskManager2.java"


# static fields
.field public static instance:Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;

.field private static requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->context:Landroid/content/Context;

    .line 40
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->requestMap:Ljava/util/Map;

    .line 42
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;
    .locals 2

    .prologue
    .line 51
    const-class v0, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->instance:Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initInstance(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    sget-object v0, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->instance:Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;

    invoke-direct {v0, p0}, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->instance:Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;

    .line 48
    :cond_0
    return-void
.end method

.method private declared-synchronized startDownload(IZLjava/lang/String;Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;Ljava/io/File;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "downflag"    # Z
    .param p3, "downUrl"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;
    .param p5, "file"    # Ljava/io/File;

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;-><init>(IZLjava/lang/String;Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;Ljava/io/File;)V

    .line 121
    .local v0, "bean":Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;
    new-instance v6, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;

    invoke-direct {v6, v0}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;-><init>(Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;)V

    .line 122
    .local v6, "t":Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;
    invoke-virtual {v6}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->start()V

    .line 123
    sget-object v1, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->requestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 119
    .end local v0    # "bean":Lcom/ubtech/alpha2/core/utils/download2/netdownload/FileDownloader2;
    .end local v6    # "t":Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized cancelDownload(I)V
    .locals 4
    .param p1, "requestCode"    # I

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->requestMap:Ljava/util/Map;

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 136
    .local v1, "requestTask":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;>;"
    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;

    .line 138
    .local v0, "request":Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->setCancel()V

    .line 143
    .end local v0    # "request":Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;
    :cond_0
    sget-object v2, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->requestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 134
    .end local v1    # "requestTask":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized cancelRequest()V
    .locals 4

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->requestMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 152
    sget-object v3, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->requestMap:Ljava/util/Map;

    .line 153
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 154
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;>;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 157
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 158
    .local v2, "requestCode":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->cancelDownload(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 151
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;>;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;>;>;>;"
    .end local v2    # "requestCode":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 160
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;>;>;>;"
    :cond_0
    :try_start_1
    sget-object v3, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->requestMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;>;>;>;"
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public hasDownLoad(I)Z
    .locals 2
    .param p1, "requestCode"    # I

    .prologue
    .line 110
    sget-object v0, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->requestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized removeDownload(I)V
    .locals 3
    .param p1, "requestCode"    # I

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->requestMap:Ljava/util/Map;

    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 174
    .local v0, "requestTask":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;>;"
    sget-object v1, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->requestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 172
    .end local v0    # "requestTask":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startDownload(IZLjava/lang/String;Ljava/lang/String;Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;Ljava/lang/String;Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;)I
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "downflag"    # Z
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "type"    # Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;
    .param p6, "mac"    # Ljava/lang/String;
    .param p7, "listener"    # Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;

    .prologue
    const/4 v7, 0x1

    .line 73
    invoke-virtual {p0, p1}, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->hasDownLoad(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    if-eqz p2, :cond_1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubtech/alpha2/core/utils/CommonUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v7, :cond_2

    .line 85
    const/16 v0, -0xc8

    invoke-interface {p7, p1, v0}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;->onDowanFailed(II)V

    .line 87
    const/4 v0, -0x1

    .line 106
    :goto_0
    return v0

    .line 80
    :cond_1
    const-string v0, "zdy"

    const-string v1, "\u5df2\u7ecf\u5728\u4e0b\u8f7d\u3002\u3002\u3002\u3002\u3002\u76f4\u63a5\u8fd4\u56de"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x2

    goto :goto_0

    .line 89
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 91
    const-string v0, ""

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 92
    const-string v0, ":"

    invoke-virtual {p6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    const-string v0, ":"

    const-string v1, "_"

    invoke-virtual {p6, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 95
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    .line 97
    :cond_4
    new-instance v6, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5}, Lcom/ubtech/alpha2/core/utils/WebServerConstants;->getSavePath(Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v6, "saveDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 99
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 101
    :cond_5
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v5, "filePath":Ljava/io/File;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p7

    .line 102
    invoke-direct/range {v0 .. v5}, Lcom/ubtech/alpha2/core/utils/download2/manager/DownloadTaskManager2;->startDownload(IZLjava/lang/String;Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownLoadlistener2;Ljava/io/File;)V

    .end local v5    # "filePath":Ljava/io/File;
    .end local v6    # "saveDir":Ljava/io/File;
    :goto_1
    move v0, v7

    .line 106
    goto :goto_0

    .line 104
    :cond_6
    const-string v0, "zdy"

    const-string v1, "SDCard \u4e0d\u5b58\u5728"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
