.class public Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;
.super Ljava/lang/Object;
.source "AsyncDownloadTaskManager.java"


# static fields
.field public static final HTTP_ERROR_CODE:I = -0xc8

.field public static final HTTP_NULL_CODE:I = -0x190

.field public static final REQUEST_ERROR_CODE:I = -0x3e7

.field public static final REQUEST_SUCCESS_CODE:I = 0xc8

.field private static instance:Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;

.field private static mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private final tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-class v0, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->tag:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->mContext:Landroid/content/Context;

    .line 54
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 55
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->requestMap:Ljava/util/Map;

    .line 56
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget-object v0, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->instance:Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;

    if-nez v0, :cond_1

    .line 66
    const-class v1, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;

    monitor-enter v1

    .line 67
    :try_start_0
    sget-object v0, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->instance:Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;

    invoke-direct {v0, p0}, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->instance:Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;

    .line 70
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_1
    sget-object v0, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->instance:Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelRequest()V
    .locals 4

    .prologue
    .line 169
    sget-object v3, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->requestMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 170
    sget-object v3, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->requestMap:Ljava/util/Map;

    .line 171
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 172
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;>;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 175
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 176
    .local v2, "requestCode":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->cancelRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;>;>;"
    .end local v2    # "requestCode":Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->requestMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 180
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;>;>;>;"
    :cond_1
    return-void
.end method

.method public declared-synchronized cancelRequest(Ljava/lang/String;)V
    .locals 3
    .param p1, "requestCode"    # Ljava/lang/String;

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->requestMap:Ljava/util/Map;

    .line 137
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 138
    .local v1, "requestTask":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;>;"
    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;

    .line 140
    .local v0, "request":Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;
    if-eqz v0, :cond_0

    .line 141
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->cancel(Z)Z

    .line 145
    .end local v0    # "request":Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;
    :cond_0
    sget-object v2, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->requestMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 136
    .end local v1    # "requestTask":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public download(Ljava/lang/String;Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "downUrl"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;
    .param p3, "appPath"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->downloadRequest(Ljava/lang/String;ZLjava/lang/String;Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;ZLjava/lang/String;)V

    .line 83
    return-void
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "requestCode"    # Ljava/lang/String;
    .param p2, "downUrl"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;
    .param p4, "appPath"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->downloadRequest(Ljava/lang/String;ZLjava/lang/String;Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;ZLjava/lang/String;)V

    .line 95
    return-void
.end method

.method public declared-synchronized downloadRequest(Ljava/lang/String;ZLjava/lang/String;Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;ZLjava/lang/String;)V
    .locals 7
    .param p1, "requestCode"    # Ljava/lang/String;
    .param p2, "downflag"    # Z
    .param p3, "downUrl"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;
    .param p5, "isLocalNetWork"    # Z
    .param p6, "appPath"    # Ljava/lang/String;

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->isExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->tag:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "the url is exist"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/ubtech/alpha2/core/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :goto_0
    monitor-exit p0

    return-void

    .line 111
    :cond_0
    :try_start_1
    new-instance v0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;Ljava/lang/String;)V

    .line 113
    .local v0, "bean":Lcom/ubtech/alpha2/core/network/async/DownLoadBen;
    if-eqz p1, :cond_2

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 114
    new-instance v6, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;

    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0, v1, p5}, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;-><init>(Lcom/ubtech/alpha2/core/network/async/DownLoadBen;Landroid/content/Context;Z)V

    .line 118
    .local v6, "mAsynctask":Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 119
    sget-object v1, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v2}, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 123
    :goto_1
    sget-object v1, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->requestMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    .end local v0    # "bean":Lcom/ubtech/alpha2/core/network/async/DownLoadBen;
    .end local v6    # "mAsynctask":Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 121
    .restart local v0    # "bean":Lcom/ubtech/alpha2/core/network/async/DownLoadBen;
    .restart local v6    # "mAsynctask":Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v6, v1}, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 126
    .end local v6    # "mAsynctask":Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;
    :cond_2
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->tag:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "the error is requestCode < 0"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/ubtech/alpha2/core/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public isExist(Ljava/lang/String;)Z
    .locals 5
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, "isExist":Z
    sget-object v4, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->requestMap:Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 151
    sget-object v4, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->requestMap:Ljava/util/Map;

    .line 152
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 153
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 155
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 156
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 157
    .local v3, "requestCode":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    const/4 v1, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;>;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;>;>;>;"
    .end local v3    # "requestCode":Ljava/lang/String;
    :cond_1
    return v1
.end method
