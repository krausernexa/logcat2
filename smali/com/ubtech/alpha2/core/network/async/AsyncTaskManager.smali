.class public Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;
.super Ljava/lang/Object;
.source "AsyncTaskManager.java"


# static fields
.field public static final HTTP_ERROR_CODE:I = -0xc8

.field public static final HTTP_NULL_CODE:I = -0x190

.field public static final REQUEST_ERROR_CODE:I = -0x3e7

.field public static final REQUEST_SUCCESS_CODE:I = 0xc8

.field private static instance:Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;

.field private static mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;",
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
    const-class v0, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;->tag:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;->mContext:Landroid/content/Context;

    .line 54
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 55
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;->requestMap:Ljava/util/Map;

    .line 56
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget-object v0, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;->instance:Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;

    if-nez v0, :cond_1

    .line 66
    const-class v1, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;

    monitor-enter v1

    .line 67
    :try_start_0
    sget-object v0, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;->instance:Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;

    invoke-direct {v0, p0}, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;->instance:Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;

    .line 70
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_1
    sget-object v0, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;->instance:Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;

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
    .line 156
    sget-object v3, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;->requestMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 157
    sget-object v3, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;->requestMap:Ljava/util/Map;

    .line 158
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 159
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;>;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 162
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 163
    .local v2, "requestCode":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;->cancelRequest(I)V

    goto :goto_0

    .line 165
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;>;>;"
    .end local v2    # "requestCode":Ljava/lang/Integer;
    :cond_0
    sget-object v3, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;->requestMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 167
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;>;>;>;"
    :cond_1
    return-void
.end method

.method public cancelRequest(I)V
    .locals 4
    .param p1, "requestCode"    # I

    .prologue
    .line 141
    sget-object v2, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;->requestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 142
    .local v1, "requestTask":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;>;"
    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;

    .line 144
    .local v0, "request":Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;
    if-eqz v0, :cond_0

    .line 145
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->cancel(Z)Z

    .line 149
    .end local v0    # "request":Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;
    :cond_0
    sget-object v2, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;->requestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
.end method

.method public download(ILjava/lang/String;Lcom/ubtech/alpha2/core/network/async/OnDataListener;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "downUrl"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/ubtech/alpha2/core/network/async/OnDataListener;

    .prologue
    .line 94
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;->request(IZLjava/lang/String;Lcom/ubtech/alpha2/core/network/async/OnDataListener;Z)V

    .line 95
    return-void
.end method

.method public download(Ljava/lang/String;Lcom/ubtech/alpha2/core/network/async/OnDataListener;)V
    .locals 6
    .param p1, "downUrl"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/ubtech/alpha2/core/network/async/OnDataListener;

    .prologue
    const/4 v1, 0x1

    .line 82
    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;->request(IZLjava/lang/String;Lcom/ubtech/alpha2/core/network/async/OnDataListener;Z)V

    .line 83
    return-void
.end method

.method public request(ILcom/ubtech/alpha2/core/network/async/OnDataListener;Z)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "listener"    # Lcom/ubtech/alpha2/core/network/async/OnDataListener;
    .param p3, "isLocalNetWork"    # Z

    .prologue
    .line 105
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;->request(IZLjava/lang/String;Lcom/ubtech/alpha2/core/network/async/OnDataListener;Z)V

    .line 106
    return-void
.end method

.method public request(IZLjava/lang/String;Lcom/ubtech/alpha2/core/network/async/OnDataListener;Z)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "downflag"    # Z
    .param p3, "downUrl"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/ubtech/alpha2/core/network/async/OnDataListener;
    .param p5, "isLocalNetWork"    # Z

    .prologue
    const/4 v5, 0x0

    .line 117
    new-instance v0, Lcom/ubtech/alpha2/core/network/async/DownLoad;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ubtech/alpha2/core/network/async/DownLoad;-><init>(IZLjava/lang/String;Lcom/ubtech/alpha2/core/network/async/OnDataListener;)V

    .line 118
    .local v0, "bean":Lcom/ubtech/alpha2/core/network/async/DownLoad;
    if-lez p1, :cond_1

    .line 119
    new-instance v1, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;

    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2, p5}, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;-><init>(Lcom/ubtech/alpha2/core/network/async/DownLoad;Landroid/content/Context;Z)V

    .line 123
    .local v1, "mAsynctask":Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 124
    sget-object v2, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 128
    :goto_0
    sget-object v2, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;->requestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .end local v1    # "mAsynctask":Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;
    :goto_1
    return-void

    .line 126
    .restart local v1    # "mAsynctask":Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;
    :cond_0
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 131
    .end local v1    # "mAsynctask":Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;
    :cond_1
    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;->tag:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "the error is requestCode < 0"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/ubtech/alpha2/core/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
